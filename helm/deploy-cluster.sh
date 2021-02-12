#!/bin/bash

# Set Env Variables
export RG=EphHPCCSample
export LOC=eastus
export CLUSTER_NAME=hpccsample

# Create the RG
az group create -n $RG -l $LOC

# Create the Cluster
az aks create -g $RG -n $CLUSTER_NAME --network-plugin azure 

# Add Thor Nodepool
az aks nodepool add -g $RG --cluster-name $CLUSTER_NAME --name thorpool --node-count 2 --node-vm-size Standard_L8s_v2 --mode User --node-taints=nvme=true:NoSchedule

# Get Cluster Creds
az aks get-credentials -g $RG -n $CLUSTER_NAME

# Deploy the NVME drive mount daemonset
kubectl apply -f aks-nvme-ssd-provisioner.yaml

# Once the pod is created you can validate the NVME mounted witht he following
# Note the /dev/nvme0n1 on /pv-disk-nvme

#kubectl exec -it <PodName> -n kube-system -- df -h
#Filesystem      Size  Used Avail Use% Mounted on
#overlay         124G   22G  103G  18% /
#tmpfs            64M     0   64M   0% /dev
#tmpfs            32G     0   32G   0% /sys/fs/cgroup
#/dev/sda1       124G   22G  103G  18% /pv-disks
#/dev/nvme0n1    1.8T   77M  1.8T   1% /pv-disks/nvme
#shm              64M     0   64M   0% /dev/shm

# Deploy the hpcc cluster
helm install mycluster ./hpcc --set global.image.version=latest 

# Wait for everything to be running
kubectl get svc,pods

# When ready, get the svc external IP for eclwatch
kubectl get svc eclwatch

echo http://$(kubectl get svc eclwatch -o jsonpath='{.status.loadBalancer.ingress[0].ip}'):8010

# Open the link, click on the gear icon at the top and then click on 'Playground'
# Paste in the terrasort-prep.ecl job from the eclscripts folder
# Choose 'thor' in the drop down at the bottom of the page and 'Submit'

# Watch the jobs execute
watch kubectl get jobs,pods

# The two main files where you want to make tweaks are in the values.json and thor.yaml
# In values you can adjust the worker CPU and Memory limits as well as the 
# Azure Files sku
# 
# In thor.yaml you can modify the configmap that has the thor worker job spec
# to make changes to the volume and volume mounts


