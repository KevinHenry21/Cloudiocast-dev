﻿#include "pch-c.h"
#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif


#include "codegen/il2cpp-codegen-metadata.h"





#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodExecutionContextInfo g_methodExecutionContextInfos[1] = { { 0, 0, 0 } };
#else
static const Il2CppMethodExecutionContextInfo g_methodExecutionContextInfos[1] = { { 0, 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const char* g_methodExecutionContextInfoStrings[1] = { NULL };
#else
static const char* g_methodExecutionContextInfoStrings[1] = { NULL };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodExecutionContextInfoIndex g_methodExecutionContextInfoIndexes[11] = 
{
	{ 0, 0 } /* 0x06000001 UnityEngine.Networking.UnityWebRequest UnityEngine.Networking.UnityWebRequestTexture::GetTexture(System.String) */,
	{ 0, 0 } /* 0x06000002 UnityEngine.Networking.UnityWebRequest UnityEngine.Networking.UnityWebRequestTexture::GetTexture(System.String,System.Boolean) */,
	{ 0, 0 } /* 0x06000003 System.IntPtr UnityEngine.Networking.DownloadHandlerTexture::Create(UnityEngine.Networking.DownloadHandlerTexture,System.Boolean) */,
	{ 0, 0 } /* 0x06000004 System.Void UnityEngine.Networking.DownloadHandlerTexture::InternalCreateTexture(System.Boolean) */,
	{ 0, 0 } /* 0x06000005 System.Void UnityEngine.Networking.DownloadHandlerTexture::.ctor(System.Boolean) */,
	{ 0, 0 } /* 0x06000006 Unity.Collections.NativeArray`1<System.Byte> UnityEngine.Networking.DownloadHandlerTexture::GetNativeData() */,
	{ 0, 0 } /* 0x06000007 System.Void UnityEngine.Networking.DownloadHandlerTexture::Dispose() */,
	{ 0, 0 } /* 0x06000008 UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::get_texture() */,
	{ 0, 0 } /* 0x06000009 UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::InternalGetTexture() */,
	{ 0, 0 } /* 0x0600000A UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::InternalGetTextureNative() */,
	{ 0, 0 } /* 0x0600000B UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::GetContent(UnityEngine.Networking.UnityWebRequest) */,
};
#else
static const Il2CppMethodExecutionContextInfoIndex g_methodExecutionContextInfoIndexes[1] = { { 0, 0} };
#endif
#if IL2CPP_MONO_DEBUGGER
IL2CPP_EXTERN_C Il2CppSequencePoint g_sequencePointsUnityEngine_UnityWebRequestTextureModule[];
Il2CppSequencePoint g_sequencePointsUnityEngine_UnityWebRequestTextureModule[83] = 
{
	{ 70001, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 0 } /* seqPointIndex: 0 */,
	{ 70001, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 1 } /* seqPointIndex: 1 */,
	{ 70001, 1, 9, 9, 9, 10, 0, kSequencePointKind_Normal, 0, 2 } /* seqPointIndex: 2 */,
	{ 70001, 1, 10, 10, 13, 66, 1, kSequencePointKind_Normal, 0, 3 } /* seqPointIndex: 3 */,
	{ 70001, 1, 10, 10, 13, 66, 3, kSequencePointKind_StepOut, 0, 4 } /* seqPointIndex: 4 */,
	{ 70001, 1, 11, 11, 9, 10, 11, kSequencePointKind_Normal, 0, 5 } /* seqPointIndex: 5 */,
	{ 70002, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 6 } /* seqPointIndex: 6 */,
	{ 70002, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 7 } /* seqPointIndex: 7 */,
	{ 70002, 1, 19, 19, 9, 10, 0, kSequencePointKind_Normal, 0, 8 } /* seqPointIndex: 8 */,
	{ 70002, 1, 20, 20, 13, 123, 1, kSequencePointKind_Normal, 0, 9 } /* seqPointIndex: 9 */,
	{ 70002, 1, 20, 20, 13, 123, 11, kSequencePointKind_StepOut, 0, 10 } /* seqPointIndex: 10 */,
	{ 70002, 1, 20, 20, 13, 123, 17, kSequencePointKind_StepOut, 0, 11 } /* seqPointIndex: 11 */,
	{ 70002, 1, 21, 21, 9, 10, 25, kSequencePointKind_Normal, 0, 12 } /* seqPointIndex: 12 */,
	{ 70004, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 13 } /* seqPointIndex: 13 */,
	{ 70004, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 14 } /* seqPointIndex: 14 */,
	{ 70004, 2, 22, 22, 9, 10, 0, kSequencePointKind_Normal, 0, 15 } /* seqPointIndex: 15 */,
	{ 70004, 2, 23, 23, 13, 44, 1, kSequencePointKind_Normal, 0, 16 } /* seqPointIndex: 16 */,
	{ 70004, 2, 23, 23, 13, 44, 4, kSequencePointKind_StepOut, 0, 17 } /* seqPointIndex: 17 */,
	{ 70004, 2, 24, 24, 9, 10, 14, kSequencePointKind_Normal, 0, 18 } /* seqPointIndex: 18 */,
	{ 70005, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 19 } /* seqPointIndex: 19 */,
	{ 70005, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 20 } /* seqPointIndex: 20 */,
	{ 70005, 2, 31, 31, 9, 53, 0, kSequencePointKind_Normal, 0, 21 } /* seqPointIndex: 21 */,
	{ 70005, 2, 31, 31, 9, 53, 1, kSequencePointKind_StepOut, 0, 22 } /* seqPointIndex: 22 */,
	{ 70005, 2, 32, 32, 9, 10, 7, kSequencePointKind_Normal, 0, 23 } /* seqPointIndex: 23 */,
	{ 70005, 2, 33, 33, 13, 45, 8, kSequencePointKind_Normal, 0, 24 } /* seqPointIndex: 24 */,
	{ 70005, 2, 33, 33, 13, 45, 10, kSequencePointKind_StepOut, 0, 25 } /* seqPointIndex: 25 */,
	{ 70005, 2, 34, 34, 13, 38, 16, kSequencePointKind_Normal, 0, 26 } /* seqPointIndex: 26 */,
	{ 70005, 2, 35, 35, 9, 10, 26, kSequencePointKind_Normal, 0, 27 } /* seqPointIndex: 27 */,
	{ 70006, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 28 } /* seqPointIndex: 28 */,
	{ 70006, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 29 } /* seqPointIndex: 29 */,
	{ 70006, 2, 38, 38, 9, 10, 0, kSequencePointKind_Normal, 0, 30 } /* seqPointIndex: 30 */,
	{ 70006, 2, 39, 39, 13, 67, 1, kSequencePointKind_Normal, 0, 31 } /* seqPointIndex: 31 */,
	{ 70006, 2, 39, 39, 13, 67, 8, kSequencePointKind_StepOut, 0, 32 } /* seqPointIndex: 32 */,
	{ 70006, 2, 40, 40, 9, 10, 16, kSequencePointKind_Normal, 0, 33 } /* seqPointIndex: 33 */,
	{ 70007, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 34 } /* seqPointIndex: 34 */,
	{ 70007, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 35 } /* seqPointIndex: 35 */,
	{ 70007, 2, 43, 43, 9, 10, 0, kSequencePointKind_Normal, 0, 36 } /* seqPointIndex: 36 */,
	{ 70007, 2, 44, 44, 13, 50, 1, kSequencePointKind_Normal, 0, 37 } /* seqPointIndex: 37 */,
	{ 70007, 2, 44, 44, 13, 50, 7, kSequencePointKind_StepOut, 0, 38 } /* seqPointIndex: 38 */,
	{ 70007, 2, 45, 45, 13, 28, 13, kSequencePointKind_Normal, 0, 39 } /* seqPointIndex: 39 */,
	{ 70007, 2, 45, 45, 13, 28, 14, kSequencePointKind_StepOut, 0, 40 } /* seqPointIndex: 40 */,
	{ 70007, 2, 46, 46, 9, 10, 20, kSequencePointKind_Normal, 0, 41 } /* seqPointIndex: 41 */,
	{ 70008, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 42 } /* seqPointIndex: 42 */,
	{ 70008, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 43 } /* seqPointIndex: 43 */,
	{ 70008, 2, 50, 50, 17, 18, 0, kSequencePointKind_Normal, 0, 44 } /* seqPointIndex: 44 */,
	{ 70008, 2, 50, 50, 19, 47, 1, kSequencePointKind_Normal, 0, 45 } /* seqPointIndex: 45 */,
	{ 70008, 2, 50, 50, 19, 47, 2, kSequencePointKind_StepOut, 0, 46 } /* seqPointIndex: 46 */,
	{ 70008, 2, 50, 50, 48, 49, 10, kSequencePointKind_Normal, 0, 47 } /* seqPointIndex: 47 */,
	{ 70009, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 48 } /* seqPointIndex: 48 */,
	{ 70009, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 49 } /* seqPointIndex: 49 */,
	{ 70009, 2, 54, 54, 9, 10, 0, kSequencePointKind_Normal, 0, 50 } /* seqPointIndex: 50 */,
	{ 70009, 2, 55, 55, 13, 29, 1, kSequencePointKind_Normal, 0, 51 } /* seqPointIndex: 51 */,
	{ 70009, 2, 55, 55, 0, 0, 8, kSequencePointKind_Normal, 0, 52 } /* seqPointIndex: 52 */,
	{ 70009, 2, 56, 56, 13, 14, 11, kSequencePointKind_Normal, 0, 53 } /* seqPointIndex: 53 */,
	{ 70009, 2, 57, 57, 17, 38, 12, kSequencePointKind_Normal, 0, 54 } /* seqPointIndex: 54 */,
	{ 70009, 2, 57, 57, 17, 38, 19, kSequencePointKind_StepOut, 0, 55 } /* seqPointIndex: 55 */,
	{ 70009, 2, 57, 57, 0, 0, 25, kSequencePointKind_Normal, 0, 56 } /* seqPointIndex: 56 */,
	{ 70009, 2, 58, 58, 17, 18, 28, kSequencePointKind_Normal, 0, 57 } /* seqPointIndex: 57 */,
	{ 70009, 2, 60, 60, 21, 52, 29, kSequencePointKind_Normal, 0, 58 } /* seqPointIndex: 58 */,
	{ 70009, 2, 60, 60, 21, 52, 32, kSequencePointKind_StepOut, 0, 59 } /* seqPointIndex: 59 */,
	{ 70009, 2, 61, 61, 21, 65, 42, kSequencePointKind_Normal, 0, 60 } /* seqPointIndex: 60 */,
	{ 70009, 2, 61, 61, 21, 65, 49, kSequencePointKind_StepOut, 0, 61 } /* seqPointIndex: 61 */,
	{ 70009, 2, 61, 61, 21, 65, 60, kSequencePointKind_StepOut, 0, 62 } /* seqPointIndex: 62 */,
	{ 70009, 2, 62, 62, 17, 18, 66, kSequencePointKind_Normal, 0, 63 } /* seqPointIndex: 63 */,
	{ 70009, 2, 63, 63, 13, 14, 67, kSequencePointKind_Normal, 0, 64 } /* seqPointIndex: 64 */,
	{ 70009, 2, 63, 63, 0, 0, 68, kSequencePointKind_Normal, 0, 65 } /* seqPointIndex: 65 */,
	{ 70009, 2, 64, 64, 18, 39, 70, kSequencePointKind_Normal, 0, 66 } /* seqPointIndex: 66 */,
	{ 70009, 2, 64, 64, 18, 39, 77, kSequencePointKind_StepOut, 0, 67 } /* seqPointIndex: 67 */,
	{ 70009, 2, 64, 64, 0, 0, 83, kSequencePointKind_Normal, 0, 68 } /* seqPointIndex: 68 */,
	{ 70009, 2, 65, 65, 13, 14, 86, kSequencePointKind_Normal, 0, 69 } /* seqPointIndex: 69 */,
	{ 70009, 2, 66, 66, 17, 55, 87, kSequencePointKind_Normal, 0, 70 } /* seqPointIndex: 70 */,
	{ 70009, 2, 66, 66, 17, 55, 89, kSequencePointKind_StepOut, 0, 71 } /* seqPointIndex: 71 */,
	{ 70009, 2, 67, 67, 17, 36, 99, kSequencePointKind_Normal, 0, 72 } /* seqPointIndex: 72 */,
	{ 70009, 2, 68, 68, 13, 14, 106, kSequencePointKind_Normal, 0, 73 } /* seqPointIndex: 73 */,
	{ 70009, 2, 70, 70, 13, 29, 107, kSequencePointKind_Normal, 0, 74 } /* seqPointIndex: 74 */,
	{ 70009, 2, 71, 71, 9, 10, 116, kSequencePointKind_Normal, 0, 75 } /* seqPointIndex: 75 */,
	{ 70011, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 76 } /* seqPointIndex: 76 */,
	{ 70011, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 77 } /* seqPointIndex: 77 */,
	{ 70011, 2, 77, 77, 9, 10, 0, kSequencePointKind_Normal, 0, 78 } /* seqPointIndex: 78 */,
	{ 70011, 2, 78, 78, 13, 78, 1, kSequencePointKind_Normal, 0, 79 } /* seqPointIndex: 79 */,
	{ 70011, 2, 78, 78, 13, 78, 2, kSequencePointKind_StepOut, 0, 80 } /* seqPointIndex: 80 */,
	{ 70011, 2, 78, 78, 13, 78, 7, kSequencePointKind_StepOut, 0, 81 } /* seqPointIndex: 81 */,
	{ 70011, 2, 79, 79, 9, 10, 15, kSequencePointKind_Normal, 0, 82 } /* seqPointIndex: 82 */,
};
#else
extern Il2CppSequencePoint g_sequencePointsUnityEngine_UnityWebRequestTextureModule[];
Il2CppSequencePoint g_sequencePointsUnityEngine_UnityWebRequestTextureModule[1] = { { 0, 0, 0, 0, 0, 0, 0, kSequencePointKind_Normal, 0, 0, } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppCatchPoint g_catchPoints[1] = { { 0, 0, 0, 0, } };
#else
static const Il2CppCatchPoint g_catchPoints[1] = { { 0, 0, 0, 0, } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppSequencePointSourceFile g_sequencePointSourceFiles[] = {
{ "", { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} }, //0 
{ "\\home\\bokken\\buildslave\\unity\\build\\Modules\\UnityWebRequestTexture\\UnityWebRequestTexture.cs", { 225, 163, 238, 69, 102, 237, 22, 230, 49, 123, 40, 148, 160, 16, 132, 233} }, //1 
{ "\\home\\bokken\\buildslave\\unity\\build\\Modules\\UnityWebRequestTexture\\Public\\DownloadHandlerTexture.bindings.cs", { 28, 200, 46, 171, 72, 136, 1, 20, 210, 8, 61, 182, 118, 90, 90, 168} }, //2 
};
#else
static const Il2CppSequencePointSourceFile g_sequencePointSourceFiles[1] = { NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppTypeSourceFilePair g_typeSourceFiles[2] = 
{
	{ 9661, 1 },
	{ 9662, 2 },
};
#else
static const Il2CppTypeSourceFilePair g_typeSourceFiles[1] = { { 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodScope g_methodScopes[6] = 
{
	{ 0, 13 },
	{ 0, 27 },
	{ 0, 18 },
	{ 0, 12 },
	{ 0, 118 },
	{ 0, 17 },
};
#else
static const Il2CppMethodScope g_methodScopes[1] = { { 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodHeaderInfo g_methodHeaderInfos[11] = 
{
	{ 13, 0, 1 } /* UnityEngine.Networking.UnityWebRequest UnityEngine.Networking.UnityWebRequestTexture::GetTexture(System.String) */,
	{ 27, 1, 1 } /* UnityEngine.Networking.UnityWebRequest UnityEngine.Networking.UnityWebRequestTexture::GetTexture(System.String,System.Boolean) */,
	{ 0, 0, 0 } /* System.IntPtr UnityEngine.Networking.DownloadHandlerTexture::Create(UnityEngine.Networking.DownloadHandlerTexture,System.Boolean) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.Networking.DownloadHandlerTexture::InternalCreateTexture(System.Boolean) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.Networking.DownloadHandlerTexture::.ctor(System.Boolean) */,
	{ 18, 2, 1 } /* Unity.Collections.NativeArray`1<System.Byte> UnityEngine.Networking.DownloadHandlerTexture::GetNativeData() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.Networking.DownloadHandlerTexture::Dispose() */,
	{ 12, 3, 1 } /* UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::get_texture() */,
	{ 118, 4, 1 } /* UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::InternalGetTexture() */,
	{ 0, 0, 0 } /* UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::InternalGetTextureNative() */,
	{ 17, 5, 1 } /* UnityEngine.Texture2D UnityEngine.Networking.DownloadHandlerTexture::GetContent(UnityEngine.Networking.UnityWebRequest) */,
};
#else
static const Il2CppMethodHeaderInfo g_methodHeaderInfos[1] = { { 0, 0, 0 } };
#endif
IL2CPP_EXTERN_C const Il2CppDebuggerMetadataRegistration g_DebuggerMetadataRegistrationUnityEngine_UnityWebRequestTextureModule;
const Il2CppDebuggerMetadataRegistration g_DebuggerMetadataRegistrationUnityEngine_UnityWebRequestTextureModule = 
{
	(Il2CppMethodExecutionContextInfo*)g_methodExecutionContextInfos,
	(Il2CppMethodExecutionContextInfoIndex*)g_methodExecutionContextInfoIndexes,
	(Il2CppMethodScope*)g_methodScopes,
	(Il2CppMethodHeaderInfo*)g_methodHeaderInfos,
	(Il2CppSequencePointSourceFile*)g_sequencePointSourceFiles,
	83,
	(Il2CppSequencePoint*)g_sequencePointsUnityEngine_UnityWebRequestTextureModule,
	0,
	(Il2CppCatchPoint*)g_catchPoints,
	2,
	(Il2CppTypeSourceFilePair*)g_typeSourceFiles,
	(const char**)g_methodExecutionContextInfoStrings,
};