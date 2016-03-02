/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */
#ifndef HQLATOM_INCL
#define HQLATOM_INCL

#include "jhash.hpp"        // strangely also includes hqlatom.ipp

extern HQL_API IIdAtom * atId;
extern HQL_API IIdAtom * bindBooleanParamId;
extern HQL_API IIdAtom * bindDataParamId;
extern HQL_API IIdAtom * bindDatasetParamId;
extern HQL_API IIdAtom * bindFloatParamId;
extern HQL_API IIdAtom * bindRealParamId;
extern HQL_API IIdAtom * bindRowParamId;
extern HQL_API IIdAtom * bindSetParamId;
extern HQL_API IIdAtom * bindSignedParamId;
extern HQL_API IIdAtom * bindSignedSizeParamId;
extern HQL_API IIdAtom * bindStringParamId;
extern HQL_API IIdAtom * bindVStringParamId;
extern HQL_API IIdAtom * bindUnicodeParamId;
extern HQL_API IIdAtom * bindUnsignedParamId;
extern HQL_API IIdAtom * bindUnsignedSizeParamId;
extern HQL_API IIdAtom * bindUtf8ParamId;
extern HQL_API IIdAtom * compileEmbeddedScriptId;
extern HQL_API IIdAtom * defaultFieldNameId;
extern HQL_API IIdAtom * failId;
extern HQL_API IIdAtom * getEmbedContextId;
extern HQL_API IIdAtom * getBooleanResultId;
extern HQL_API IIdAtom * getDataResultId;
extern HQL_API IIdAtom * getDatasetResultId;
extern HQL_API IIdAtom * getRealResultId;
extern HQL_API IIdAtom * getRowResultId;
extern HQL_API IIdAtom * getSetResultId;
extern HQL_API IIdAtom * getSignedResultId;
extern HQL_API IIdAtom * getStringResultId;
extern HQL_API IIdAtom * getTransformResultId;
extern HQL_API IIdAtom * getUnicodeResultId;
extern HQL_API IIdAtom * getUnsignedResultId;
extern HQL_API IIdAtom * getUTF8ResultId;
extern HQL_API IIdAtom * importId;
extern HQL_API IIdAtom * lineId;
extern HQL_API IIdAtom * loadId;
extern HQL_API IIdAtom * macroId;
extern HQL_API IIdAtom * maxLengthId;
extern HQL_API IIdAtom * maxSizeId;
extern HQL_API IIdAtom * outputId;
extern HQL_API IIdAtom * physicalLengthId;
extern HQL_API IIdAtom * selfId;
extern HQL_API IIdAtom * sharedId;
extern HQL_API IIdAtom * storeId;
extern HQL_API IIdAtom * supportsImportId;
extern HQL_API IIdAtom * supportsScriptId;
extern HQL_API IIdAtom * syntaxCheckId;
extern HQL_API IIdAtom * unknownId;
extern HQL_API IIdAtom * unnamedId;
extern HQL_API IIdAtom * valueId;

//Any atom that is surrounded by underscores e.g., _aliased_Atom is an internal attribute.  They are used by the
//code generator to annotate the graph (and are not included in regenerated ECL)
extern HQL_API IAtom * abstractAtom;
extern HQL_API IAtom * accessAtom;
extern HQL_API IAtom * actionAtom;
extern HQL_API IAtom * activeAtom;
extern HQL_API IAtom * activeFailureAtom;
extern HQL_API IAtom * activeNlpAtom;
extern HQL_API IAtom * afterAtom;
extern HQL_API IAtom * algorithmAtom;
extern HQL_API IAtom * _aliased_Atom;
extern HQL_API IAtom * allAtom;
extern HQL_API IAtom * allocatorAtom;
extern HQL_API IAtom * _alreadyAssignedNestedTag_Atom;
extern HQL_API IAtom * alreadyVisitedAtom;
extern HQL_API IAtom * _alreadyVisitedMarker_Atom;
extern HQL_API IAtom * alwaysAtom;
extern HQL_API IAtom * _array_Atom;
extern HQL_API IAtom * asciiAtom;
extern HQL_API IAtom * assertAtom;
extern HQL_API IAtom * assertConstAtom;
extern HQL_API IAtom * atmostAtom;
extern HQL_API IAtom * aveAtom;
extern HQL_API IAtom * backupAtom;
extern HQL_API IAtom * balancedAtom;
extern HQL_API IAtom * bcdAtom;
extern HQL_API IAtom * beforeAtom;
extern HQL_API IAtom * bestAtom;
extern HQL_API IAtom * bitmapAtom;
extern HQL_API IAtom * blobAtom;
extern HQL_API IAtom * cAtom;
extern HQL_API IAtom * caseAtom;
extern HQL_API IAtom * cardinalityAtom;
extern HQL_API IAtom * checkinAtom;
extern HQL_API IAtom * checkoutAtom;
extern HQL_API IAtom * _childAttr_Atom;
extern HQL_API IAtom * choosenAtom;
extern HQL_API IAtom * clusterAtom;
extern HQL_API IAtom * _codehash_Atom;
extern HQL_API IAtom * _colocal_Atom;
extern HQL_API IAtom * commonAtom;
extern HQL_API IAtom * _complexKeyed_Atom;
extern HQL_API IAtom * compressedAtom;
extern HQL_API IAtom * __compressed__Atom;
extern HQL_API IAtom * _conditionFolded_Atom;
extern HQL_API IAtom * constAtom;
extern HQL_API IAtom * _container_Atom;
extern HQL_API IAtom * contextAtom;
extern HQL_API IAtom * contextSensitiveAtom;
extern HQL_API IAtom * costAtom;
extern HQL_API IAtom * countAtom;
extern HQL_API IAtom * counterAtom;
extern HQL_API IAtom * _countProject_Atom;
extern HQL_API IAtom * cppAtom;
extern HQL_API IAtom * _cppBody_Atom;
extern HQL_API IAtom * csvAtom;
extern HQL_API IAtom * ctxmethodAtom;
extern HQL_API IAtom * dataAtom;
extern HQL_API IAtom * _dataset_Atom;
extern HQL_API IAtom * debugAtom;
extern HQL_API IAtom * dedupAtom;
extern HQL_API IAtom * defaultAtom;
extern HQL_API IAtom * _default_Atom;
extern HQL_API IAtom * defineAtom;
extern HQL_API IAtom * definitionAtom;
extern HQL_API IAtom * deprecatedAtom;
extern HQL_API IAtom * descAtom;
extern HQL_API IAtom * diskAtom;
extern HQL_API IAtom * _disallowed_Atom;
extern HQL_API IAtom * distributedAtom;
extern HQL_API IAtom * _distributed_Atom;
extern HQL_API IAtom * _dot_Atom;
extern HQL_API IAtom * dynamicAtom;
extern HQL_API IAtom * ebcdicAtom;
extern HQL_API IAtom * eclrtlAtom;
extern HQL_API IAtom * embeddedAtom;
extern HQL_API IAtom * _empty_str_Atom;
extern HQL_API IAtom * encodingAtom;
extern HQL_API IAtom * encryptAtom;
extern HQL_API IAtom * ensureAtom;
extern HQL_API IAtom * enthAtom;
extern HQL_API IAtom * entrypointAtom;
extern HQL_API IAtom * errorAtom;
extern HQL_API IAtom * eventExtraAtom;
extern HQL_API IAtom * eventNameAtom;
extern HQL_API IAtom * exceptAtom;
extern HQL_API IAtom * exclusiveAtom;
extern HQL_API IAtom * expireAtom;
extern HQL_API IAtom * exportAtom;
extern HQL_API IAtom * extendAtom;
extern HQL_API IAtom * externalAtom;
extern HQL_API IAtom * failAtom;
extern HQL_API IAtom * failCodeAtom;
extern HQL_API IAtom * failMessageAtom;
extern HQL_API IAtom * failureAtom;
extern HQL_API IAtom * falseAtom;
extern HQL_API IAtom * fastAtom;
extern HQL_API IAtom * fewAtom;
extern HQL_API IAtom * fieldAtom;
extern HQL_API IAtom * fieldsAtom;
extern HQL_API IAtom * filenameAtom;
extern HQL_API IAtom * __fileposAtom;
extern HQL_API IAtom * filepositionAtom;
extern HQL_API IAtom * _files_Atom;
extern HQL_API IAtom * filterAtom;
extern HQL_API IAtom * filteredAtom;
extern HQL_API IAtom * _filtered_Atom;
extern HQL_API IAtom * firstAtom;
extern HQL_API IAtom * firstLeftAtom;
extern HQL_API IAtom * firstRightAtom;
extern HQL_API IAtom * fixedAtom;
extern HQL_API IAtom * flagAtom;
extern HQL_API IAtom * flagsAtom;
extern HQL_API IAtom * flatAtom;
extern HQL_API IAtom * foldAtom;
extern HQL_API IAtom * formatAtom;
extern HQL_API IAtom * forwardAtom;
extern HQL_API IAtom * fullonlyAtom;
extern HQL_API IAtom * fullouterAtom;
extern HQL_API IAtom * _function_Atom;
extern HQL_API IAtom * gctxmethodAtom;
extern HQL_API IAtom * getAtom;
extern HQL_API IAtom * globalAtom;
extern HQL_API IAtom * globalContextAtom;
extern HQL_API IAtom * graphAtom;
extern HQL_API IAtom * _graphLocal_Atom;
extern HQL_API IAtom * groupAtom;
extern HQL_API IAtom * groupedAtom;
extern HQL_API IAtom * hashAtom;
extern HQL_API IAtom * headingAtom;
extern HQL_API IAtom * _hidden_Atom;
extern HQL_API IAtom * hintAtom;
extern HQL_API IAtom * holeAtom;
extern HQL_API IAtom * holeposAtom;
extern HQL_API IAtom * __ifblockAtom;
extern HQL_API IAtom * ignoreAtom;
extern HQL_API IAtom * ignoreBaseAtom;
extern HQL_API IAtom * implementsAtom;
extern HQL_API IAtom * _implicitFpos_Atom;
extern HQL_API IAtom * _implicitSorted_Atom;
extern HQL_API IAtom * importAtom;
extern HQL_API IAtom * includeAtom;
extern HQL_API IAtom * indeterminateAtom;
extern HQL_API IAtom * indexAtom;
extern HQL_API IAtom * initfunctionAtom;
extern HQL_API IAtom * inlineAtom;
extern HQL_API IAtom * innerAtom;
extern HQL_API IAtom * interfaceAtom;
extern HQL_API IAtom * internalAtom;
extern HQL_API IAtom * _internal_Atom;
extern HQL_API IAtom * internalFlagsAtom;
extern HQL_API IAtom * _isBlobInIndex_Atom;
extern HQL_API IAtom * _isFunctional_Atom;
extern HQL_API IAtom * isNullAtom;
extern HQL_API IAtom * isValidAtom;
extern HQL_API IAtom * jobAtom;
extern HQL_API IAtom * jobTempAtom;
extern HQL_API IAtom * jsonAtom;
extern HQL_API IAtom * keepAtom;
extern HQL_API IAtom * keyedAtom;
extern HQL_API IAtom * labeledAtom;
extern HQL_API IAtom * languageAtom;
extern HQL_API IAtom * lastAtom;
extern HQL_API IAtom * _lazy_Atom;
extern HQL_API IAtom * leftAtom;
extern HQL_API IAtom * leftonlyAtom;
extern HQL_API IAtom * leftouterAtom;
extern HQL_API IAtom * libraryAtom;
extern HQL_API IAtom * lightweightAtom;
extern HQL_API IAtom * _lightweight_Atom;
extern HQL_API IAtom * limitAtom;
extern HQL_API IAtom * linkAtom;
extern HQL_API IAtom * _linkCounted_Atom;
extern HQL_API IAtom * literalAtom;
extern HQL_API IAtom * localAtom;
extern HQL_API IAtom * localUploadAtom;
extern HQL_API IAtom * localeAtom;
extern HQL_API IAtom * localFilePositionAtom;
extern HQL_API IAtom * _location_Atom;
extern HQL_API IAtom * logAtom;
extern HQL_API IAtom * logicalFilenameAtom;
extern HQL_API IAtom * lookupAtom;
extern HQL_API IAtom * lzwAtom;
extern HQL_API IAtom * macroAtom;
extern HQL_API IAtom * manyAtom;
extern HQL_API IAtom * markerAtom;
extern HQL_API IAtom * matchedAtom;
extern HQL_API IAtom * matchLengthAtom;
extern HQL_API IAtom * matchPositionAtom;
extern HQL_API IAtom * matchTextAtom;
extern HQL_API IAtom * matchUnicodeAtom;
extern HQL_API IAtom * matchUtf8Atom;
extern HQL_API IAtom * maxAtom;
extern HQL_API IAtom * maxCountAtom;
extern HQL_API IAtom * maxLengthAtom;
extern HQL_API IAtom * maxSizeAtom;
extern HQL_API IAtom * memoryAtom;
extern HQL_API IAtom * mergeAtom;
extern HQL_API IAtom * mergeTransformAtom;
extern HQL_API IAtom * _metadata_Atom;
extern HQL_API IAtom * methodAtom;
extern HQL_API IAtom * minAtom;
extern HQL_API IAtom * minimalAtom;
extern HQL_API IAtom * moduleAtom;
extern HQL_API IAtom * mofnAtom;
extern HQL_API IAtom * multipleAtom;
extern HQL_API IAtom * nameAtom;
extern HQL_API IAtom * namedAtom;
extern HQL_API IAtom * namespaceAtom;
extern HQL_API IAtom * newAtom;
extern HQL_API IAtom * newSetAtom;
extern HQL_API IAtom * _nlpParse_Atom;
extern HQL_API IAtom * noBoundCheckAtom;
extern HQL_API IAtom * noCaseAtom;
extern HQL_API IAtom * nofoldAtom;
extern HQL_API IAtom * _noHoist_Atom;
extern HQL_API IAtom * noLocalAtom;
extern HQL_API IAtom * _nonEmpty_Atom;
extern HQL_API IAtom * noOverwriteAtom;
extern HQL_API IAtom * _normalized_Atom;
extern HQL_API IAtom * noRootAtom;
extern HQL_API IAtom * noScanAtom;
extern HQL_API IAtom * noSortAtom;
extern HQL_API IAtom * notAtom;
extern HQL_API IAtom * notMatchedAtom;
extern HQL_API IAtom * notMatchedOnlyAtom;
extern HQL_API IAtom * _noStreaming_Atom;
extern HQL_API IAtom * noTrimAtom;
extern HQL_API IAtom * noTypeAtom;
extern HQL_API IAtom * noXpathAtom;
extern HQL_API IAtom * oldSetFormatAtom;
extern HQL_API IAtom * omethodAtom;
extern HQL_API IAtom * _omitted_Atom;
extern HQL_API IAtom * onceAtom;
extern HQL_API IAtom * onFailAtom;
extern HQL_API IAtom * onWarningAtom;
extern HQL_API IAtom * optAtom;
extern HQL_API IAtom * orderedAtom;
extern HQL_API IAtom * _ordered_Atom;
extern HQL_API IAtom * _origin_Atom;
extern HQL_API IAtom * _original_Atom;
extern HQL_API IAtom * outAtom;
extern HQL_API IAtom * outoflineAtom;
extern HQL_API IAtom * outputAtom;
extern HQL_API IAtom * overwriteAtom;
extern HQL_API IAtom * ownedAtom;
extern HQL_API IAtom * packedAtom;
extern HQL_API IAtom * parallelAtom;
extern HQL_API IAtom * parameterAtom;
extern HQL_API IAtom * partitionAtom;
extern HQL_API IAtom * partitionLeftAtom;
extern HQL_API IAtom * partitionRightAtom;
extern HQL_API IAtom * passParameterMetaAtom;
extern HQL_API IAtom * payloadAtom;
extern HQL_API IAtom * _payload_Atom;
extern HQL_API IAtom * persistAtom;
extern HQL_API IAtom * physicalFilenameAtom;
extern HQL_API IAtom * pluginAtom;
extern HQL_API IAtom * prefetchAtom;
extern HQL_API IAtom * preloadAtom;
extern HQL_API IAtom * priorityAtom;
extern HQL_API IAtom * privateAtom;
extern HQL_API IAtom * _propAligned_Atom;
extern HQL_API IAtom * _propRecordCount_Atom;
extern HQL_API IAtom * _propSize_Atom;
extern HQL_API IAtom * _propUnadorned_Atom;
extern HQL_API IAtom * pseudoentrypointAtom;
extern HQL_API IAtom * pullAtom;
extern HQL_API IAtom * pulledAtom;
extern HQL_API IAtom * pureAtom;
extern HQL_API IAtom * quoteAtom;
extern HQL_API IAtom * randomAtom;
extern HQL_API IAtom * rangeAtom;
extern HQL_API IAtom * rawAtom;
extern HQL_API IAtom * recordAtom;
extern HQL_API IAtom * recursiveAtom;
extern HQL_API IAtom * referenceAtom;
extern HQL_API IAtom * refreshAtom;
extern HQL_API IAtom * _remote_Atom;
extern HQL_API IAtom * renameAtom;
extern HQL_API IAtom * repeatAtom;
extern HQL_API IAtom * _resourced_Atom;
extern HQL_API IAtom * responseAtom;
extern HQL_API IAtom * restartAtom;
extern HQL_API IAtom * resultAtom;
extern HQL_API IAtom * _results_Atom;
extern HQL_API IAtom * retryAtom;
extern HQL_API IAtom * rightAtom;
extern HQL_API IAtom * rightonlyAtom;
extern HQL_API IAtom * rightouterAtom;
extern HQL_API IAtom * rollbackAtom;
extern HQL_API IAtom * _root_Atom;
extern HQL_API IAtom * rowAtom;
extern HQL_API IAtom * _rowsid_Atom;
extern HQL_API IAtom * rowLimitAtom;
extern HQL_API IAtom * ruleAtom;
extern HQL_API IAtom * saveAtom;
extern HQL_API IAtom * scanAtom;
extern HQL_API IAtom * scanAllAtom;
extern HQL_API IAtom * scopeAtom;
extern HQL_API IAtom * scopeCheckingAtom;
extern HQL_API IAtom * scoreAtom;
extern HQL_API IAtom * sectionAtom;
extern HQL_API IAtom * _selectorSequence_Atom;
extern HQL_API IAtom * selfAtom;
extern HQL_API IAtom * _selectors_Atom;
extern HQL_API IAtom * separatorAtom;
extern HQL_API IAtom * sequenceAtom;
extern HQL_API IAtom * _sequence_Atom;
extern HQL_API IAtom * sequentialAtom;
extern HQL_API IAtom * serializationAtom;
extern HQL_API IAtom * setAtom;
extern HQL_API IAtom * sharedAtom;
extern HQL_API IAtom * shutdownAtom;
extern HQL_API IAtom * _sideEffect_Atom;
extern HQL_API IAtom * singleAtom;
extern HQL_API IAtom * sizeAtom;
extern HQL_API IAtom * sizeofAtom;
extern HQL_API IAtom * skewAtom;
extern HQL_API IAtom * skipAtom;
extern HQL_API IAtom * smartAtom;
extern HQL_API IAtom * snapshotAtom;
extern HQL_API IAtom * soapActionAtom;
extern HQL_API IAtom * httpHeaderAtom;
extern HQL_API IAtom * prototypeAtom;
extern HQL_API IAtom * proxyAddressAtom;
extern HQL_API IAtom * sampleAtom;
extern HQL_API IAtom * sort_AllAtom;
extern HQL_API IAtom * sort_KeyedAtom;
extern HQL_API IAtom * sortedAtom;
extern HQL_API IAtom * sourceAtom;
extern HQL_API IAtom * spillAtom;
extern HQL_API IAtom * stableAtom;
extern HQL_API IAtom * _state_Atom;
extern HQL_API IAtom * steppedAtom;
extern HQL_API IAtom * storedAtom;
extern HQL_API IAtom * storedFieldFormatAtom;
extern HQL_API IAtom * streamedAtom;
extern HQL_API IAtom * _streaming_Atom;
extern HQL_API IAtom * successAtom;
extern HQL_API IAtom * sysAtom;
extern HQL_API IAtom * tempAtom;
extern HQL_API IAtom * templateAtom;
extern HQL_API IAtom * terminateAtom;
extern HQL_API IAtom * terminatorAtom;
extern HQL_API IAtom * escapeAtom;
extern HQL_API IAtom * thorAtom;
extern HQL_API IAtom * thresholdAtom;
extern HQL_API IAtom * timeoutAtom;
extern HQL_API IAtom * timeLimitAtom;
extern HQL_API IAtom * timestampAtom;
extern HQL_API IAtom * tinyAtom;
extern HQL_API IAtom * tomitaAtom;
extern HQL_API IAtom * topAtom;
extern HQL_API IAtom * traceAtom;
extern HQL_API IAtom * trimAtom;
extern HQL_API IAtom * trueAtom;
extern HQL_API IAtom * typeAtom;
extern HQL_API IAtom * _uid_Atom;
extern HQL_API IAtom * unknownAtom;
extern HQL_API IAtom * unknownSizeFieldAtom;
extern HQL_API IAtom * unicodeAtom;
extern HQL_API IAtom * unsortedAtom;
extern HQL_API IAtom * unstableAtom;
extern HQL_API IAtom * updateAtom;
extern HQL_API IAtom * userMatchFunctionAtom;
extern HQL_API IAtom * versionAtom;
extern HQL_API IAtom * virtualAtom;
extern HQL_API IAtom * _virtualSeq_Atom;
extern HQL_API IAtom * volatileAtom;
extern HQL_API IAtom * warningAtom;
extern HQL_API IAtom * webserviceAtom;
extern HQL_API IAtom * wholeAtom;
extern HQL_API IAtom * widthAtom;
extern HQL_API IAtom * wipeAtom;
extern HQL_API IAtom * _workflow_Atom;
extern HQL_API IAtom * _workflowPersist_Atom;
extern HQL_API IAtom * workunitAtom;
extern HQL_API IAtom * wuidAtom;
extern HQL_API IAtom * xmlAtom;
extern HQL_API IAtom * xmlDefaultAtom;
extern HQL_API IAtom * xmlnsAtom;
extern HQL_API IAtom * _xmlParse_Atom;
extern HQL_API IAtom * xpathAtom;

inline bool isInternalAttributeName(IAtom * name) { return (name->queryStr()[0] == '$'); }

/*
 * This is part of an experiment to make identifiers in the language case sensitive - at least optionally, possibly only for syntax checking.
 * It would require
 * a) Case sensitive hash table.
 * b) All attributes to be created with a consistent case.  A couple of issues may occur with attributes on services and others.
 * c) All identifier atoms need to be created through the functions below (to allow optional sensitivity)
 */

inline bool identifiersAreCaseSensitive() { return false; }

#endif

