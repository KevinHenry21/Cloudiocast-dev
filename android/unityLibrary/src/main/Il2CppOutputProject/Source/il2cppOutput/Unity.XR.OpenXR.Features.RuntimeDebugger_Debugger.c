﻿#include "pch-c.h"
#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif


#include "codegen/il2cpp-codegen-metadata.h"





#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodExecutionContextInfo g_methodExecutionContextInfos[5] = 
{
	{ 16283, 0,  0 } /*tableIndex: 0 */,
	{ 20580, 1,  0 } /*tableIndex: 1 */,
	{ 16283, 2,  0 } /*tableIndex: 2 */,
	{ 20580, 3,  0 } /*tableIndex: 3 */,
	{ 10390, 4,  0 } /*tableIndex: 4 */,
};
#else
static const Il2CppMethodExecutionContextInfo g_methodExecutionContextInfos[1] = { { 0, 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const char* g_methodExecutionContextInfoStrings[5] = 
{
	"ptr1",
	"size1",
	"ptr2",
	"size2",
	"data",
};
#else
static const char* g_methodExecutionContextInfoStrings[1] = { NULL };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodExecutionContextInfoIndex g_methodExecutionContextInfoIndexes[8] = 
{
	{ 0, 0 } /* 0x06000001 System.IntPtr UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::HookGetInstanceProcAddr(System.IntPtr) */,
	{ 0, 5 } /* 0x06000002 System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::RecvMsg(UnityEngine.Networking.PlayerConnection.MessageEventArgs) */,
	{ 0, 0 } /* 0x06000003 System.IntPtr UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_HookGetInstanceProcAddr(System.IntPtr,System.UInt32,System.UInt32) */,
	{ 0, 0 } /* 0x06000004 System.Boolean UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_GetDataForRead(System.IntPtr&,System.UInt32&) */,
	{ 0, 0 } /* 0x06000005 System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_StartDataAccess() */,
	{ 0, 0 } /* 0x06000006 System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_EndDataAccess() */,
	{ 0, 0 } /* 0x06000007 System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::.ctor() */,
	{ 0, 0 } /* 0x06000008 System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::.cctor() */,
};
#else
static const Il2CppMethodExecutionContextInfoIndex g_methodExecutionContextInfoIndexes[1] = { { 0, 0} };
#endif
#if IL2CPP_MONO_DEBUGGER
IL2CPP_EXTERN_C Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_RuntimeDebugger[];
Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_RuntimeDebugger[43] = 
{
	{ 70459, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 0 } /* seqPointIndex: 0 */,
	{ 70459, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 1 } /* seqPointIndex: 1 */,
	{ 70459, 1, 45, 45, 13, 95, 0, kSequencePointKind_Normal, 0, 2 } /* seqPointIndex: 2 */,
	{ 70459, 1, 45, 45, 13, 95, 0, kSequencePointKind_StepOut, 0, 3 } /* seqPointIndex: 3 */,
	{ 70459, 1, 45, 45, 13, 95, 17, kSequencePointKind_StepOut, 0, 4 } /* seqPointIndex: 4 */,
	{ 70459, 1, 45, 45, 13, 95, 22, kSequencePointKind_StepOut, 0, 5 } /* seqPointIndex: 5 */,
	{ 70459, 1, 49, 49, 13, 38, 27, kSequencePointKind_Normal, 0, 6 } /* seqPointIndex: 6 */,
	{ 70459, 1, 49, 49, 13, 38, 27, kSequencePointKind_StepOut, 0, 7 } /* seqPointIndex: 7 */,
	{ 70459, 1, 50, 50, 13, 36, 32, kSequencePointKind_Normal, 0, 8 } /* seqPointIndex: 8 */,
	{ 70459, 1, 50, 50, 13, 36, 32, kSequencePointKind_StepOut, 0, 9 } /* seqPointIndex: 9 */,
	{ 70459, 1, 52, 52, 13, 88, 37, kSequencePointKind_Normal, 0, 10 } /* seqPointIndex: 10 */,
	{ 70459, 1, 52, 52, 13, 88, 50, kSequencePointKind_StepOut, 0, 11 } /* seqPointIndex: 11 */,
	{ 70460, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 12 } /* seqPointIndex: 12 */,
	{ 70460, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 13 } /* seqPointIndex: 13 */,
	{ 70460, 1, 57, 57, 13, 38, 0, kSequencePointKind_Normal, 0, 14 } /* seqPointIndex: 14 */,
	{ 70460, 1, 57, 57, 13, 38, 0, kSequencePointKind_StepOut, 0, 15 } /* seqPointIndex: 15 */,
	{ 70460, 1, 60, 60, 13, 64, 5, kSequencePointKind_Normal, 0, 16 } /* seqPointIndex: 16 */,
	{ 70460, 1, 60, 60, 13, 64, 9, kSequencePointKind_StepOut, 0, 17 } /* seqPointIndex: 17 */,
	{ 70460, 1, 61, 61, 13, 64, 15, kSequencePointKind_Normal, 0, 18 } /* seqPointIndex: 18 */,
	{ 70460, 1, 61, 61, 13, 64, 19, kSequencePointKind_StepOut, 0, 19 } /* seqPointIndex: 19 */,
	{ 70460, 1, 63, 63, 13, 51, 25, kSequencePointKind_Normal, 0, 20 } /* seqPointIndex: 20 */,
	{ 70460, 1, 64, 64, 13, 53, 35, kSequencePointKind_Normal, 0, 21 } /* seqPointIndex: 21 */,
	{ 70460, 1, 64, 64, 13, 53, 40, kSequencePointKind_StepOut, 0, 22 } /* seqPointIndex: 22 */,
	{ 70460, 1, 65, 65, 13, 27, 45, kSequencePointKind_Normal, 0, 23 } /* seqPointIndex: 23 */,
	{ 70460, 1, 66, 66, 17, 66, 49, kSequencePointKind_Normal, 0, 24 } /* seqPointIndex: 24 */,
	{ 70460, 1, 66, 66, 17, 66, 54, kSequencePointKind_StepOut, 0, 25 } /* seqPointIndex: 25 */,
	{ 70460, 1, 68, 68, 13, 36, 59, kSequencePointKind_Normal, 0, 26 } /* seqPointIndex: 26 */,
	{ 70460, 1, 68, 68, 13, 36, 59, kSequencePointKind_StepOut, 0, 27 } /* seqPointIndex: 27 */,
	{ 70460, 1, 71, 71, 13, 85, 64, kSequencePointKind_Normal, 0, 28 } /* seqPointIndex: 28 */,
	{ 70460, 1, 71, 71, 13, 85, 64, kSequencePointKind_StepOut, 0, 29 } /* seqPointIndex: 29 */,
	{ 70460, 1, 71, 71, 13, 85, 76, kSequencePointKind_StepOut, 0, 30 } /* seqPointIndex: 30 */,
	{ 70460, 1, 75, 75, 9, 10, 81, kSequencePointKind_Normal, 0, 31 } /* seqPointIndex: 31 */,
	{ 70465, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 32 } /* seqPointIndex: 32 */,
	{ 70465, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 33 } /* seqPointIndex: 33 */,
	{ 70465, 1, 34, 34, 9, 43, 0, kSequencePointKind_Normal, 0, 34 } /* seqPointIndex: 34 */,
	{ 70465, 1, 39, 39, 9, 50, 11, kSequencePointKind_Normal, 0, 35 } /* seqPointIndex: 35 */,
	{ 70465, 1, 39, 39, 9, 50, 23, kSequencePointKind_StepOut, 0, 36 } /* seqPointIndex: 36 */,
	{ 70466, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 37 } /* seqPointIndex: 37 */,
	{ 70466, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 38 } /* seqPointIndex: 38 */,
	{ 70466, 1, 28, 28, 9, 127, 0, kSequencePointKind_Normal, 0, 39 } /* seqPointIndex: 39 */,
	{ 70466, 1, 28, 28, 9, 127, 5, kSequencePointKind_StepOut, 0, 40 } /* seqPointIndex: 40 */,
	{ 70466, 1, 29, 29, 9, 124, 15, kSequencePointKind_Normal, 0, 41 } /* seqPointIndex: 41 */,
	{ 70466, 1, 29, 29, 9, 124, 20, kSequencePointKind_StepOut, 0, 42 } /* seqPointIndex: 42 */,
};
#else
extern Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_RuntimeDebugger[];
Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_RuntimeDebugger[1] = { { 0, 0, 0, 0, 0, 0, 0, kSequencePointKind_Normal, 0, 0, } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppCatchPoint g_catchPoints[1] = { { 0, 0, 0, 0, } };
#else
static const Il2CppCatchPoint g_catchPoints[1] = { { 0, 0, 0, 0, } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppSequencePointSourceFile g_sequencePointSourceFiles[] = {
{ "", { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} }, //0 
{ "C:\\Users\\kevin\\Desktop\\Cloudiocast\\unity\\Cloudiocast\\Library\\PackageCache\\com.unity.xr.openxr@1.4.2\\RuntimeDebugger\\RuntimeDebuggerOpenXRFeature.cs", { 16, 201, 59, 117, 187, 47, 105, 101, 65, 121, 37, 70, 211, 204, 37, 168} }, //1 
};
#else
static const Il2CppSequencePointSourceFile g_sequencePointSourceFiles[1] = { NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppTypeSourceFilePair g_typeSourceFiles[1] = 
{
	{ 9533, 1 },
};
#else
static const Il2CppTypeSourceFilePair g_typeSourceFiles[1] = { { 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodScope g_methodScopes[1] = 
{
	{ 0, 82 },
};
#else
static const Il2CppMethodScope g_methodScopes[1] = { { 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodHeaderInfo g_methodHeaderInfos[8] = 
{
	{ 0, 0, 0 } /* System.IntPtr UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::HookGetInstanceProcAddr(System.IntPtr) */,
	{ 82, 0, 1 } /* System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::RecvMsg(UnityEngine.Networking.PlayerConnection.MessageEventArgs) */,
	{ 0, 0, 0 } /* System.IntPtr UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_HookGetInstanceProcAddr(System.IntPtr,System.UInt32,System.UInt32) */,
	{ 0, 0, 0 } /* System.Boolean UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_GetDataForRead(System.IntPtr&,System.UInt32&) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_StartDataAccess() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::Native_EndDataAccess() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::.ctor() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.RuntimeDebugger.RuntimeDebuggerOpenXRFeature::.cctor() */,
};
#else
static const Il2CppMethodHeaderInfo g_methodHeaderInfos[1] = { { 0, 0, 0 } };
#endif
IL2CPP_EXTERN_C const Il2CppDebuggerMetadataRegistration g_DebuggerMetadataRegistrationUnity_XR_OpenXR_Features_RuntimeDebugger;
const Il2CppDebuggerMetadataRegistration g_DebuggerMetadataRegistrationUnity_XR_OpenXR_Features_RuntimeDebugger = 
{
	(Il2CppMethodExecutionContextInfo*)g_methodExecutionContextInfos,
	(Il2CppMethodExecutionContextInfoIndex*)g_methodExecutionContextInfoIndexes,
	(Il2CppMethodScope*)g_methodScopes,
	(Il2CppMethodHeaderInfo*)g_methodHeaderInfos,
	(Il2CppSequencePointSourceFile*)g_sequencePointSourceFiles,
	43,
	(Il2CppSequencePoint*)g_sequencePointsUnity_XR_OpenXR_Features_RuntimeDebugger,
	0,
	(Il2CppCatchPoint*)g_catchPoints,
	1,
	(Il2CppTypeSourceFilePair*)g_typeSourceFiles,
	(const char**)g_methodExecutionContextInfoStrings,
};
