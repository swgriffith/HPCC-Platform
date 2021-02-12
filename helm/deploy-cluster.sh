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

helm install mycluster ./hpcc --set global.image.version=latest 