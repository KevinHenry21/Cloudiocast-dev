#include "pch-c.h"
#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif


#include "codegen/il2cpp-codegen-metadata.h"





#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodExecutionContextInfo g_methodExecutionContextInfos[4] = 
{
	{ 24574, 0,  0 } /*tableIndex: 0 */,
	{ 24573, 0,  1 } /*tableIndex: 1 */,
	{ 24574, 0,  2 } /*tableIndex: 2 */,
	{ 24573, 0,  3 } /*tableIndex: 3 */,
};
#else
static const Il2CppMethodExecutionContextInfo g_methodExecutionContextInfos[1] = { { 0, 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const char* g_methodExecutionContextInfoStrings[1] = 
{
	"callback",
};
#else
static const char* g_methodExecutionContextInfoStrings[1] = { NULL };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodExecutionContextInfoIndex g_methodExecutionContextInfoIndexes[41] = 
{
	{ 0, 0 } /* 0x06000001 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::add_onScriptEvent(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate) */,
	{ 0, 0 } /* 0x06000002 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::remove_onScriptEvent(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate) */,
	{ 0, 0 } /* 0x06000003 UnityEngine.XR.OpenXR.Features.Mock.MockRuntime UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::get_Instance() */,
	{ 0, 0 } /* 0x06000004 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ReceiveScriptEvent(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEvent,System.UInt64) */,
	{ 0, 1 } /* 0x06000005 UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::BeforeFunctionCallback(System.String) */,
	{ 1, 1 } /* 0x06000006 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::AfterFunctionCallback(System.String,UnityEngine.XR.OpenXR.NativeTypes.XrResult) */,
	{ 0, 0 } /* 0x06000007 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetFunctionCallback(System.String,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate) */,
	{ 0, 0 } /* 0x06000008 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetFunctionCallback(System.String,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate) */,
	{ 0, 0 } /* 0x06000009 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetFunctionCallback(System.String,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate) */,
	{ 2, 1 } /* 0x0600000A UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::GetBeforeFunctionCallback(System.String) */,
	{ 3, 1 } /* 0x0600000B UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::GetAfterFunctionCallback(System.String) */,
	{ 0, 0 } /* 0x0600000C System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ClearFunctionCallbacks() */,
	{ 0, 0 } /* 0x0600000D System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ResetDefaults() */,
	{ 0, 0 } /* 0x0600000E System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::OnInstanceDestroy(System.UInt64) */,
	{ 0, 0 } /* 0x0600000F System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetViewPose(UnityEngine.XR.OpenXR.NativeTypes.XrViewConfigurationType,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector4) */,
	{ 0, 0 } /* 0x06000010 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetViewState(UnityEngine.XR.OpenXR.NativeTypes.XrViewConfigurationType,UnityEngine.XR.OpenXR.NativeTypes.XrViewStateFlags) */,
	{ 0, 0 } /* 0x06000011 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetSpace(UnityEngine.XR.OpenXR.NativeTypes.XrReferenceSpaceType,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.XR.OpenXR.NativeTypes.XrSpaceLocationFlags) */,
	{ 0, 0 } /* 0x06000012 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetSpace(System.UInt64,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.XR.OpenXR.NativeTypes.XrSpaceLocationFlags) */,
	{ 0, 0 } /* 0x06000013 UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::Internal_RegisterScriptEventCallback(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate) */,
	{ 0, 0 } /* 0x06000014 System.Boolean UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::Internal_TransitionToState(UnityEngine.XR.OpenXR.NativeTypes.XrSessionState,System.Boolean) */,
	{ 0, 0 } /* 0x06000015 UnityEngine.XR.OpenXR.NativeTypes.XrSessionState UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::Internal_GetSessionState() */,
	{ 0, 0 } /* 0x06000016 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::RequestExitSession() */,
	{ 0, 0 } /* 0x06000017 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::CauseInstanceLoss() */,
	{ 0, 0 } /* 0x06000018 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetEnvironmentBlendMode(UnityEngine.XR.OpenXR.NativeTypes.XrEnvironmentBlendMode) */,
	{ 0, 0 } /* 0x06000019 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetReferenceSpaceBounds(UnityEngine.XR.OpenXR.NativeTypes.XrReferenceSpaceType,UnityEngine.Vector2) */,
	{ 0, 0 } /* 0x0600001A System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::GetEndFrameStats(System.Int32&,System.Int32&) */,
	{ 0, 0 } /* 0x0600001B System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ActivateSecondaryView(UnityEngine.XR.OpenXR.NativeTypes.XrViewConfigurationType,System.Boolean) */,
	{ 0, 0 } /* 0x0600001C System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::MockRuntime_RegisterFunctionCallbacks(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate) */,
	{ 0, 0 } /* 0x0600001D System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::.ctor() */,
	{ 0, 0 } /* 0x0600001E System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::.ctor(System.Object,System.IntPtr) */,
	{ 0, 0 } /* 0x0600001F System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::Invoke(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEvent,System.UInt64) */,
	{ 0, 0 } /* 0x06000020 System.IAsyncResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::BeginInvoke(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEvent,System.UInt64,System.AsyncCallback,System.Object) */,
	{ 0, 0 } /* 0x06000021 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::EndInvoke(System.IAsyncResult) */,
	{ 0, 0 } /* 0x06000022 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::.ctor(System.Object,System.IntPtr) */,
	{ 0, 0 } /* 0x06000023 UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::Invoke(System.String) */,
	{ 0, 0 } /* 0x06000024 System.IAsyncResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::BeginInvoke(System.String,System.AsyncCallback,System.Object) */,
	{ 0, 0 } /* 0x06000025 UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::EndInvoke(System.IAsyncResult) */,
	{ 0, 0 } /* 0x06000026 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::.ctor(System.Object,System.IntPtr) */,
	{ 0, 0 } /* 0x06000027 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::Invoke(System.String,UnityEngine.XR.OpenXR.NativeTypes.XrResult) */,
	{ 0, 0 } /* 0x06000028 System.IAsyncResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::BeginInvoke(System.String,UnityEngine.XR.OpenXR.NativeTypes.XrResult,System.AsyncCallback,System.Object) */,
	{ 0, 0 } /* 0x06000029 System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::EndInvoke(System.IAsyncResult) */,
};
#else
static const Il2CppMethodExecutionContextInfoIndex g_methodExecutionContextInfoIndexes[1] = { { 0, 0} };
#endif
#if IL2CPP_MONO_DEBUGGER
IL2CPP_EXTERN_C Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_MockRuntime[];
Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_MockRuntime[103] = 
{
	{ 70378, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 0 } /* seqPointIndex: 0 */,
	{ 70378, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 1 } /* seqPointIndex: 1 */,
	{ 70378, 1, 59, 59, 47, 96, 0, kSequencePointKind_Normal, 0, 2 } /* seqPointIndex: 2 */,
	{ 70378, 1, 59, 59, 47, 96, 0, kSequencePointKind_StepOut, 0, 3 } /* seqPointIndex: 3 */,
	{ 70378, 1, 59, 59, 47, 96, 5, kSequencePointKind_StepOut, 0, 4 } /* seqPointIndex: 4 */,
	{ 70379, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 5 } /* seqPointIndex: 5 */,
	{ 70379, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 6 } /* seqPointIndex: 6 */,
	{ 70379, 1, 62, 62, 81, 114, 0, kSequencePointKind_Normal, 0, 7 } /* seqPointIndex: 7 */,
	{ 70379, 1, 62, 62, 81, 114, 12, kSequencePointKind_StepOut, 0, 8 } /* seqPointIndex: 8 */,
	{ 70380, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 9 } /* seqPointIndex: 9 */,
	{ 70380, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 10 } /* seqPointIndex: 10 */,
	{ 70380, 1, 67, 67, 13, 64, 0, kSequencePointKind_Normal, 0, 11 } /* seqPointIndex: 11 */,
	{ 70380, 1, 67, 67, 13, 64, 1, kSequencePointKind_StepOut, 0, 12 } /* seqPointIndex: 12 */,
	{ 70380, 1, 68, 68, 13, 33, 7, kSequencePointKind_Normal, 0, 13 } /* seqPointIndex: 13 */,
	{ 70380, 1, 69, 69, 17, 41, 10, kSequencePointKind_Normal, 0, 14 } /* seqPointIndex: 14 */,
	{ 70380, 1, 71, 71, 13, 39, 12, kSequencePointKind_Normal, 0, 15 } /* seqPointIndex: 15 */,
	{ 70380, 1, 71, 71, 13, 39, 14, kSequencePointKind_StepOut, 0, 16 } /* seqPointIndex: 16 */,
	{ 70381, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 17 } /* seqPointIndex: 17 */,
	{ 70381, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 18 } /* seqPointIndex: 18 */,
	{ 70381, 1, 77, 77, 13, 63, 0, kSequencePointKind_Normal, 0, 19 } /* seqPointIndex: 19 */,
	{ 70381, 1, 77, 77, 13, 63, 1, kSequencePointKind_StepOut, 0, 20 } /* seqPointIndex: 20 */,
	{ 70381, 1, 78, 78, 13, 34, 7, kSequencePointKind_Normal, 0, 21 } /* seqPointIndex: 21 */,
	{ 70381, 1, 79, 79, 17, 24, 10, kSequencePointKind_Normal, 0, 22 } /* seqPointIndex: 22 */,
	{ 70381, 1, 81, 81, 13, 40, 11, kSequencePointKind_Normal, 0, 23 } /* seqPointIndex: 23 */,
	{ 70381, 1, 81, 81, 13, 40, 14, kSequencePointKind_StepOut, 0, 24 } /* seqPointIndex: 24 */,
	{ 70381, 1, 82, 82, 9, 10, 19, kSequencePointKind_Normal, 0, 25 } /* seqPointIndex: 25 */,
	{ 70382, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 26 } /* seqPointIndex: 26 */,
	{ 70382, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 27 } /* seqPointIndex: 27 */,
	{ 70382, 1, 98, 98, 13, 40, 0, kSequencePointKind_Normal, 0, 28 } /* seqPointIndex: 28 */,
	{ 70382, 1, 100, 100, 17, 55, 3, kSequencePointKind_Normal, 0, 29 } /* seqPointIndex: 29 */,
	{ 70382, 1, 101, 101, 21, 98, 10, kSequencePointKind_Normal, 0, 30 } /* seqPointIndex: 30 */,
	{ 70382, 1, 101, 101, 21, 98, 10, kSequencePointKind_StepOut, 0, 31 } /* seqPointIndex: 31 */,
	{ 70382, 1, 103, 103, 17, 70, 20, kSequencePointKind_Normal, 0, 32 } /* seqPointIndex: 32 */,
	{ 70382, 1, 103, 103, 17, 70, 27, kSequencePointKind_StepOut, 0, 33 } /* seqPointIndex: 33 */,
	{ 70382, 1, 103, 103, 0, 0, 32, kSequencePointKind_Normal, 0, 34 } /* seqPointIndex: 34 */,
	{ 70382, 1, 105, 105, 18, 56, 34, kSequencePointKind_Normal, 0, 35 } /* seqPointIndex: 35 */,
	{ 70382, 1, 107, 107, 17, 60, 41, kSequencePointKind_Normal, 0, 36 } /* seqPointIndex: 36 */,
	{ 70382, 1, 107, 107, 17, 60, 47, kSequencePointKind_StepOut, 0, 37 } /* seqPointIndex: 37 */,
	{ 70382, 1, 108, 108, 17, 58, 53, kSequencePointKind_Normal, 0, 38 } /* seqPointIndex: 38 */,
	{ 70382, 1, 108, 108, 17, 58, 58, kSequencePointKind_StepOut, 0, 39 } /* seqPointIndex: 39 */,
	{ 70382, 1, 109, 109, 21, 54, 65, kSequencePointKind_Normal, 0, 40 } /* seqPointIndex: 40 */,
	{ 70382, 1, 112, 112, 13, 39, 71, kSequencePointKind_Normal, 0, 41 } /* seqPointIndex: 41 */,
	{ 70382, 1, 114, 114, 17, 54, 74, kSequencePointKind_Normal, 0, 42 } /* seqPointIndex: 42 */,
	{ 70382, 1, 115, 115, 21, 96, 81, kSequencePointKind_Normal, 0, 43 } /* seqPointIndex: 43 */,
	{ 70382, 1, 115, 115, 21, 96, 81, kSequencePointKind_StepOut, 0, 44 } /* seqPointIndex: 44 */,
	{ 70382, 1, 117, 117, 17, 68, 91, kSequencePointKind_Normal, 0, 45 } /* seqPointIndex: 45 */,
	{ 70382, 1, 117, 117, 17, 68, 98, kSequencePointKind_StepOut, 0, 46 } /* seqPointIndex: 46 */,
	{ 70382, 1, 117, 117, 0, 0, 103, kSequencePointKind_Normal, 0, 47 } /* seqPointIndex: 47 */,
	{ 70382, 1, 119, 119, 18, 55, 105, kSequencePointKind_Normal, 0, 48 } /* seqPointIndex: 48 */,
	{ 70382, 1, 121, 121, 17, 59, 112, kSequencePointKind_Normal, 0, 49 } /* seqPointIndex: 49 */,
	{ 70382, 1, 121, 121, 17, 59, 118, kSequencePointKind_StepOut, 0, 50 } /* seqPointIndex: 50 */,
	{ 70382, 1, 122, 122, 17, 57, 124, kSequencePointKind_Normal, 0, 51 } /* seqPointIndex: 51 */,
	{ 70382, 1, 122, 122, 17, 57, 129, kSequencePointKind_StepOut, 0, 52 } /* seqPointIndex: 52 */,
	{ 70382, 1, 123, 123, 21, 53, 136, kSequencePointKind_Normal, 0, 53 } /* seqPointIndex: 53 */,
	{ 70382, 1, 126, 128, 13, 105, 142, kSequencePointKind_Normal, 0, 54 } /* seqPointIndex: 54 */,
	{ 70382, 1, 126, 128, 13, 105, 159, kSequencePointKind_StepOut, 0, 55 } /* seqPointIndex: 55 */,
	{ 70382, 1, 126, 128, 13, 105, 181, kSequencePointKind_StepOut, 0, 56 } /* seqPointIndex: 56 */,
	{ 70382, 1, 126, 128, 13, 105, 186, kSequencePointKind_StepOut, 0, 57 } /* seqPointIndex: 57 */,
	{ 70382, 1, 129, 129, 9, 10, 191, kSequencePointKind_Normal, 0, 58 } /* seqPointIndex: 58 */,
	{ 70383, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 59 } /* seqPointIndex: 59 */,
	{ 70383, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 60 } /* seqPointIndex: 60 */,
	{ 70383, 1, 143, 143, 13, 94, 0, kSequencePointKind_Normal, 0, 61 } /* seqPointIndex: 61 */,
	{ 70383, 1, 143, 143, 13, 94, 3, kSequencePointKind_StepOut, 0, 62 } /* seqPointIndex: 62 */,
	{ 70383, 1, 143, 143, 13, 94, 8, kSequencePointKind_StepOut, 0, 63 } /* seqPointIndex: 63 */,
	{ 70384, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 64 } /* seqPointIndex: 64 */,
	{ 70384, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 65 } /* seqPointIndex: 65 */,
	{ 70384, 1, 151, 151, 13, 94, 0, kSequencePointKind_Normal, 0, 66 } /* seqPointIndex: 66 */,
	{ 70384, 1, 151, 151, 13, 94, 2, kSequencePointKind_StepOut, 0, 67 } /* seqPointIndex: 67 */,
	{ 70384, 1, 151, 151, 13, 94, 8, kSequencePointKind_StepOut, 0, 68 } /* seqPointIndex: 68 */,
	{ 70385, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 69 } /* seqPointIndex: 69 */,
	{ 70385, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 70 } /* seqPointIndex: 70 */,
	{ 70385, 1, 160, 160, 13, 51, 0, kSequencePointKind_Normal, 0, 71 } /* seqPointIndex: 71 */,
	{ 70385, 1, 161, 161, 17, 29, 7, kSequencePointKind_Normal, 0, 72 } /* seqPointIndex: 72 */,
	{ 70385, 1, 163, 163, 13, 84, 9, kSequencePointKind_Normal, 0, 73 } /* seqPointIndex: 73 */,
	{ 70385, 1, 163, 163, 13, 84, 17, kSequencePointKind_StepOut, 0, 74 } /* seqPointIndex: 74 */,
	{ 70385, 1, 164, 164, 17, 29, 24, kSequencePointKind_Normal, 0, 75 } /* seqPointIndex: 75 */,
	{ 70385, 1, 166, 166, 13, 29, 26, kSequencePointKind_Normal, 0, 76 } /* seqPointIndex: 76 */,
	{ 70386, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 77 } /* seqPointIndex: 77 */,
	{ 70386, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 78 } /* seqPointIndex: 78 */,
	{ 70386, 1, 176, 176, 13, 50, 0, kSequencePointKind_Normal, 0, 79 } /* seqPointIndex: 79 */,
	{ 70386, 1, 177, 177, 17, 29, 7, kSequencePointKind_Normal, 0, 80 } /* seqPointIndex: 80 */,
	{ 70386, 1, 179, 179, 13, 83, 9, kSequencePointKind_Normal, 0, 81 } /* seqPointIndex: 81 */,
	{ 70386, 1, 179, 179, 13, 83, 17, kSequencePointKind_StepOut, 0, 82 } /* seqPointIndex: 82 */,
	{ 70386, 1, 180, 180, 17, 29, 24, kSequencePointKind_Normal, 0, 83 } /* seqPointIndex: 83 */,
	{ 70386, 1, 182, 182, 13, 29, 26, kSequencePointKind_Normal, 0, 84 } /* seqPointIndex: 84 */,
	{ 70387, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 85 } /* seqPointIndex: 85 */,
	{ 70387, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 86 } /* seqPointIndex: 86 */,
	{ 70387, 1, 190, 190, 13, 46, 0, kSequencePointKind_Normal, 0, 87 } /* seqPointIndex: 87 */,
	{ 70387, 1, 191, 191, 13, 45, 6, kSequencePointKind_Normal, 0, 88 } /* seqPointIndex: 88 */,
	{ 70387, 1, 192, 192, 13, 63, 12, kSequencePointKind_Normal, 0, 89 } /* seqPointIndex: 89 */,
	{ 70387, 1, 192, 192, 13, 63, 14, kSequencePointKind_StepOut, 0, 90 } /* seqPointIndex: 90 */,
	{ 70387, 1, 193, 193, 9, 10, 19, kSequencePointKind_Normal, 0, 91 } /* seqPointIndex: 91 */,
	{ 70388, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 92 } /* seqPointIndex: 92 */,
	{ 70388, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 93 } /* seqPointIndex: 93 */,
	{ 70388, 1, 205, 205, 13, 34, 0, kSequencePointKind_Normal, 0, 94 } /* seqPointIndex: 94 */,
	{ 70388, 1, 207, 207, 13, 38, 6, kSequencePointKind_Normal, 0, 95 } /* seqPointIndex: 95 */,
	{ 70388, 1, 207, 207, 13, 38, 6, kSequencePointKind_StepOut, 0, 96 } /* seqPointIndex: 96 */,
	{ 70388, 1, 208, 208, 9, 10, 11, kSequencePointKind_Normal, 0, 97 } /* seqPointIndex: 97 */,
	{ 70389, 0, 0, 0, 0, 0, -1, kSequencePointKind_Normal, 0, 98 } /* seqPointIndex: 98 */,
	{ 70389, 0, 0, 0, 0, 0, 16777215, kSequencePointKind_Normal, 0, 99 } /* seqPointIndex: 99 */,
	{ 70389, 1, 219, 219, 13, 38, 0, kSequencePointKind_Normal, 0, 100 } /* seqPointIndex: 100 */,
	{ 70389, 1, 219, 219, 13, 38, 0, kSequencePointKind_StepOut, 0, 101 } /* seqPointIndex: 101 */,
	{ 70389, 1, 220, 220, 9, 10, 5, kSequencePointKind_Normal, 0, 102 } /* seqPointIndex: 102 */,
};
#else
extern Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_MockRuntime[];
Il2CppSequencePoint g_sequencePointsUnity_XR_OpenXR_Features_MockRuntime[1] = { { 0, 0, 0, 0, 0, 0, 0, kSequencePointKind_Normal, 0, 0, } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppCatchPoint g_catchPoints[1] = { { 0, 0, 0, 0, } };
#else
static const Il2CppCatchPoint g_catchPoints[1] = { { 0, 0, 0, 0, } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppSequencePointSourceFile g_sequencePointSourceFiles[] = {
{ "", { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} }, //0 
{ "C:\\Users\\kevin\\Desktop\\Cloudiocast\\unity\\Cloudiocast\\Library\\PackageCache\\com.unity.xr.openxr@1.4.2\\MockRuntime\\MockRuntime.cs", { 144, 254, 28, 32, 236, 248, 193, 32, 222, 229, 135, 231, 14, 71, 22, 40} }, //1 
};
#else
static const Il2CppSequencePointSourceFile g_sequencePointSourceFiles[1] = { NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppTypeSourceFilePair g_typeSourceFiles[1] = 
{
	{ 9514, 1 },
};
#else
static const Il2CppTypeSourceFilePair g_typeSourceFiles[1] = { { 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodScope g_methodScopes[4] = 
{
	{ 0, 20 },
	{ 0, 20 },
	{ 0, 28 },
	{ 0, 28 },
};
#else
static const Il2CppMethodScope g_methodScopes[1] = { { 0, 0 } };
#endif
#if IL2CPP_MONO_DEBUGGER
static const Il2CppMethodHeaderInfo g_methodHeaderInfos[41] = 
{
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::add_onScriptEvent(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::remove_onScriptEvent(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate) */,
	{ 0, 0, 0 } /* UnityEngine.XR.OpenXR.Features.Mock.MockRuntime UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::get_Instance() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ReceiveScriptEvent(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEvent,System.UInt64) */,
	{ 20, 0, 1 } /* UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::BeforeFunctionCallback(System.String) */,
	{ 20, 1, 1 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::AfterFunctionCallback(System.String,UnityEngine.XR.OpenXR.NativeTypes.XrResult) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetFunctionCallback(System.String,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetFunctionCallback(System.String,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetFunctionCallback(System.String,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate) */,
	{ 28, 2, 1 } /* UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::GetBeforeFunctionCallback(System.String) */,
	{ 28, 3, 1 } /* UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::GetAfterFunctionCallback(System.String) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ClearFunctionCallbacks() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ResetDefaults() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::OnInstanceDestroy(System.UInt64) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetViewPose(UnityEngine.XR.OpenXR.NativeTypes.XrViewConfigurationType,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector4) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetViewState(UnityEngine.XR.OpenXR.NativeTypes.XrViewConfigurationType,UnityEngine.XR.OpenXR.NativeTypes.XrViewStateFlags) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetSpace(UnityEngine.XR.OpenXR.NativeTypes.XrReferenceSpaceType,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.XR.OpenXR.NativeTypes.XrSpaceLocationFlags) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetSpace(System.UInt64,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.XR.OpenXR.NativeTypes.XrSpaceLocationFlags) */,
	{ 0, 0, 0 } /* UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::Internal_RegisterScriptEventCallback(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate) */,
	{ 0, 0, 0 } /* System.Boolean UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::Internal_TransitionToState(UnityEngine.XR.OpenXR.NativeTypes.XrSessionState,System.Boolean) */,
	{ 0, 0, 0 } /* UnityEngine.XR.OpenXR.NativeTypes.XrSessionState UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::Internal_GetSessionState() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::RequestExitSession() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::CauseInstanceLoss() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetEnvironmentBlendMode(UnityEngine.XR.OpenXR.NativeTypes.XrEnvironmentBlendMode) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::SetReferenceSpaceBounds(UnityEngine.XR.OpenXR.NativeTypes.XrReferenceSpaceType,UnityEngine.Vector2) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::GetEndFrameStats(System.Int32&,System.Int32&) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::ActivateSecondaryView(UnityEngine.XR.OpenXR.NativeTypes.XrViewConfigurationType,System.Boolean) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::MockRuntime_RegisterFunctionCallbacks(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate,UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime::.ctor() */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::.ctor(System.Object,System.IntPtr) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::Invoke(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEvent,System.UInt64) */,
	{ 0, 0, 0 } /* System.IAsyncResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::BeginInvoke(UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEvent,System.UInt64,System.AsyncCallback,System.Object) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/ScriptEventDelegate::EndInvoke(System.IAsyncResult) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::.ctor(System.Object,System.IntPtr) */,
	{ 0, 0, 0 } /* UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::Invoke(System.String) */,
	{ 0, 0, 0 } /* System.IAsyncResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::BeginInvoke(System.String,System.AsyncCallback,System.Object) */,
	{ 0, 0, 0 } /* UnityEngine.XR.OpenXR.NativeTypes.XrResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/BeforeFunctionDelegate::EndInvoke(System.IAsyncResult) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::.ctor(System.Object,System.IntPtr) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::Invoke(System.String,UnityEngine.XR.OpenXR.NativeTypes.XrResult) */,
	{ 0, 0, 0 } /* System.IAsyncResult UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::BeginInvoke(System.String,UnityEngine.XR.OpenXR.NativeTypes.XrResult,System.AsyncCallback,System.Object) */,
	{ 0, 0, 0 } /* System.Void UnityEngine.XR.OpenXR.Features.Mock.MockRuntime/AfterFunctionDelegate::EndInvoke(System.IAsyncResult) */,
};
#else
static const Il2CppMethodHeaderInfo g_methodHeaderInfos[1] = { { 0, 0, 0 } };
#endif
IL2CPP_EXTERN_C const Il2CppDebuggerMetadataRegistration g_DebuggerMetadataRegistrationUnity_XR_OpenXR_Features_MockRuntime;
const Il2CppDebuggerMetadataRegistration g_DebuggerMetadataRegistrationUnity_XR_OpenXR_Features_MockRuntime = 
{
	(Il2CppMethodExecutionContextInfo*)g_methodExecutionContextInfos,
	(Il2CppMethodExecutionContextInfoIndex*)g_methodExecutionContextInfoIndexes,
	(Il2CppMethodScope*)g_methodScopes,
	(Il2CppMethodHeaderInfo*)g_methodHeaderInfos,
	(Il2CppSequencePointSourceFile*)g_sequencePointSourceFiles,
	103,
	(Il2CppSequencePoint*)g_sequencePointsUnity_XR_OpenXR_Features_MockRuntime,
	0,
	(Il2CppCatchPoint*)g_catchPoints,
	1,
	(Il2CppTypeSourceFilePair*)g_typeSourceFiles,
	(const char**)g_methodExecutionContextInfoStrings,
};
