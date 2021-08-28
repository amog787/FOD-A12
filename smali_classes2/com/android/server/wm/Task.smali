.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$Builder;,
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;,
        Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/Task$ActivityTaskHandler;,
        Lcom/android/server/wm/Task$ActivityState;,
        Lcom/android/server/wm/Task$TaskVisibility;,
        Lcom/android/server/wm/Task$ReparentMoveRootTaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_LAST_SNAPSHOT_BUFFER_SIZE:Ljava/lang/String; = "last_snapshot_buffer_size"

.field private static final ATTR_LAST_SNAPSHOT_CONTENT_INSETS:Ljava/lang/String; = "last_snapshot_content_insets"

.field private static final ATTR_LAST_SNAPSHOT_TASK_SIZE:Ljava/lang/String; = "last_snapshot_task_size"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final LAYER_RANK_INVISIBLE:I = -0x1

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_ROOT_TASK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_ROOT_TASK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_ROOT_TASK_TO_FRONT:I = 0x0

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field static final TASK_VISIBILITY_INVISIBLE:I = 0x2

.field static final TASK_VISIBILITY_VISIBLE:I = 0x0

.field static final TASK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field private static final sTmpBounds:Landroid/graphics/Rect;

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field mAdjacentTask:Lcom/android/server/wm/Task;

.field mAffiliatedTaskId:I

.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field private final mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

.field mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field mConfigWillChange:Z

.field mCreatedByOrganizer:Z

.field mCurrentUser:I

.field private mDeferTaskAppear:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

.field final mExitingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field private mForceHiddenFlags:I

.field private mForceNotOrganized:Z

.field private mForceShowForAllUsers:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasBeenVisible:Z

.field mInRemoveTask:Z

.field mInResumeTopActivity:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field final mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field mLastTimeMoved:J

.field mLaunchCookie:Landroid/os/IBinder;

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

.field mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field private mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field private mPreserveNonFloatingState:Z

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mRemoveWithTaskOrganizer:Z

.field private mRemoving:Z

.field mResizeMode:I

.field private mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRotation:I

.field private mShadowRadius:F

.field mSupportsPictureInPicture:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$-nHv3hp3munhu4Gy96iX2y0sRuI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3xH7pQV3TePK6a8j4i6TaVmj4QQ(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$41C-LKlpe6PrnN0veKem-6gKpNY(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4uoiBIGNMTDRqeJdiWkAelWVBX8(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7nTho283cVKQ1bb86OUzh4bK9Cc(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3V5t7ZX1Ip_YH884BnxvjqYRZw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Klnp7Kt9fwk14ulYoCaswc9xIRI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PRiyfFwy4dog-mhOrPI0NF2Vdhc(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UqOZnD1FgFOGmAuBU4uaaelTkDg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aBtoFv3xFrd63lyHY-Ao7UwldMY(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dJ3OUx6e_LHbcEmkA9VVYo7V4gY(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qjBpDLSo_osTHUebmVR0R-BqIrQ(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 466
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 643
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .locals 18
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p15, "lastTimeMoved"    # J
    .param p17, "neverRelinquishIdentity"    # Z
    .param p18, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "_lastSnapshotData"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "callingUid"    # I
    .param p24, "callingPackage"    # Ljava/lang/String;
    .param p25, "callingFeatureId"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .param p32, "info"    # Landroid/content/pm/ActivityInfo;
    .param p33, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "_createdByOrganizer"    # Z
    .param p36, "_launchCookie"    # Landroid/os/IBinder;
    .param p37, "_deferTaskAppear"    # Z
    .param p38, "_removeWithTaskOrganizer"    # Z

    .line 861
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p26

    move-object/from16 v5, p32

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 319
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 374
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 375
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 386
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 420
    const/4 v8, 0x1

    iput v8, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 422
    const/4 v9, -0x1

    iput v9, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 430
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 438
    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 445
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 452
    iput v9, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 454
    iput v9, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 461
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 462
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 463
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    .line 464
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    .line 465
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 471
    iput-object v6, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 492
    iput v9, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 495
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 498
    new-instance v10, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v10}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 511
    iput v9, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 514
    iput v9, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 529
    iput v9, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 532
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 534
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 560
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 562
    new-instance v10, Lcom/android/server/wm/Dimmer;

    invoke-direct {v10, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 563
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 564
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 567
    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 572
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 580
    iput-object v6, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 588
    iput-object v6, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 594
    iput-object v6, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 602
    iput v7, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 618
    new-instance v7, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v7}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 644
    new-instance v7, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v7, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/Task;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 646
    new-instance v7, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

    .line 685
    new-instance v7, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

    .line 760
    new-instance v7, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 863
    iput-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 864
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 865
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 866
    iput v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 867
    move/from16 v7, p12

    iput v7, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 868
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 869
    move/from16 v10, p27

    iput-boolean v10, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 870
    if-eqz p18, :cond_0

    .line 871
    move-object/from16 v11, p18

    goto :goto_0

    .line 872
    :cond_0
    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_0
    iput-object v11, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 873
    if-eqz p19, :cond_1

    .line 874
    move-object/from16 v11, p19

    goto :goto_1

    .line 875
    :cond_1
    new-instance v11, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v11}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    :goto_1
    iput-object v11, v0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 877
    const/4 v11, -0x2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 878
    new-instance v11, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v11, v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 879
    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 880
    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 881
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 882
    move-object/from16 v14, p33

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 883
    move-object/from16 v15, p34

    iput-object v15, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 884
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 885
    move/from16 v8, p28

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 886
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 887
    move/from16 v7, p9

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 888
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 889
    move/from16 v7, p10

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 890
    move/from16 v7, p11

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    .line 891
    move/from16 v7, p29

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 892
    move/from16 v7, p13

    iput v7, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 894
    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 895
    move-wide/from16 v7, p15

    iput-wide v7, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 896
    move/from16 v7, p17

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 897
    move/from16 v8, p20

    iput v8, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 898
    move/from16 v7, p21

    iput v7, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 899
    move/from16 v7, p22

    iput v7, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 900
    move/from16 v7, p23

    iput v7, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 901
    move-object/from16 v7, p24

    iput-object v7, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 902
    move-object/from16 v7, p25

    iput-object v7, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 903
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 904
    if-eqz v5, :cond_2

    .line 905
    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 906
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v3, p31

    goto :goto_2

    .line 908
    :cond_2
    iput-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 909
    move/from16 v3, p30

    iput v3, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 910
    move/from16 v3, p31

    iput v3, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 912
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 913
    new-instance v3, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object v4, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v0, v4}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    .line 914
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 916
    move/from16 v3, p35

    iput-boolean v3, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    .line 917
    move-object/from16 v4, p36

    iput-object v4, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    .line 918
    move/from16 v6, p37

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 919
    move/from16 v1, p38

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v16

    move/from16 v0, v16

    :goto_3
    invoke-static {v2, v0}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    .line 921
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/Intent;
    .param p4, "x3"    # Landroid/content/Intent;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Landroid/content/ComponentName;
    .param p8, "x7"    # Landroid/content/ComponentName;
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z
    .param p12, "x11"    # I
    .param p13, "x12"    # I
    .param p14, "x13"    # Ljava/lang/String;
    .param p15, "x14"    # J
    .param p17, "x15"    # Z
    .param p18, "x16"    # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "x17"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .param p20, "x18"    # I
    .param p21, "x19"    # I
    .param p22, "x20"    # I
    .param p23, "x21"    # I
    .param p24, "x22"    # Ljava/lang/String;
    .param p25, "x23"    # Ljava/lang/String;
    .param p26, "x24"    # I
    .param p27, "x25"    # Z
    .param p28, "x26"    # Z
    .param p29, "x27"    # Z
    .param p30, "x28"    # I
    .param p31, "x29"    # I
    .param p32, "x30"    # Landroid/content/pm/ActivityInfo;
    .param p33, "x31"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "x32"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "x33"    # Z
    .param p36, "x34"    # Landroid/os/IBinder;
    .param p37, "x35"    # Z
    .param p38, "x36"    # Z
    .param p39, "x37"    # Lcom/android/server/wm/Task$1;

    .line 252
    invoke-direct/range {p0 .. p38}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/wm/Task;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/Task;
    .param p1, "x1"    # Z

    .line 252
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/Task;
    .param p1, "x1"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V

    return-void
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z

    .line 7568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 7571
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7572
    return-void
.end method

.method private autoRemoveFromRecents()Z
    .locals 1

    .line 1828
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 8
    .param p1, "outNonDecorBounds"    # Landroid/graphics/Rect;
    .param p2, "outStableBounds"    # Landroid/graphics/Rect;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 2610
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2611
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2613
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2616
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2618
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 2619
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v7, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2621
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2623
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2624
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v2, v3}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2625
    return-void

    .line 2614
    .end local v1    # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_1
    :goto_0
    return-void
.end method

.method private canBeOrganized()Z
    .locals 4

    .line 4958
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 4959
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskOrganizerController;->isSupportedWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4963
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4964
    return v2

    .line 4968
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4969
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v0, v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 4960
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    :cond_3
    :goto_0
    return v1
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "pipCandidate"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/wm/Task;
    .param p3, "toFrontActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 6721
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6723
    return v0

    .line 6725
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6729
    :cond_1
    if-eqz p2, :cond_2

    .line 6730
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6731
    .local v1, "targetRootTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6733
    return v0

    .line 6735
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 6727
    .end local v1    # "targetRootTask":Lcom/android/server/wm/Task;
    :cond_4
    :goto_1
    return v0
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2033
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 2037
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2038
    .local v1, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2039
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 2040
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2041
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    nop

    .line 2040
    :goto_3
    return v0

    .line 2043
    :cond_5
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :cond_8
    :goto_4
    return v0

    .line 2035
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    return v0
.end method

.method private canReuseAsLeafTask()Z
    .locals 4

    .line 7472
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7478
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 7479
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    .line 7480
    .local v2, "activityType":I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 7473
    .end local v0    # "windowingMode":I
    .end local v2    # "activityType":I
    :cond_3
    :goto_0
    return v1
.end method

.method private canSpecifyOrientation()Z
    .locals 4

    .line 3822
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 3823
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 3824
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 4
    .param p1, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 946
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    return-void

    .line 951
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 955
    .local v1, "isVoiceSession":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 957
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    goto :goto_1

    .line 958
    :catch_0
    move-exception v0

    .line 961
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 967
    :cond_4
    const-string v0, "cleanUpResourcesForDestroy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method private clearPinnedTaskIfNeed()V
    .locals 2

    .line 1833
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1836
    :cond_0
    return-void
.end method

.method private closeRecentsChain()V
    .locals 2

    .line 1542
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1548
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1549
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1550
    return-void
.end method

.method private computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2898
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 2900
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2901
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2902
    .local v1, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2903
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_0

    .line 2907
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2908
    .local v3, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2909
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2912
    .end local v3    # "stableBounds":Landroid/graphics/Rect;
    :cond_0
    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2917
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 2918
    .local v3, "offsetTop":I
    if-lez v3, :cond_1

    .line 2919
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2921
    :cond_1
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .locals 2
    .param p1, "maxPosition"    # I

    .line 3137
    :goto_0
    if-lez p1, :cond_1

    .line 3138
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3139
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 3140
    .local v1, "canShow":Z
    if-nez v1, :cond_0

    .line 3141
    goto :goto_1

    .line 3143
    :cond_0
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, -0x1

    .line 3144
    goto :goto_0

    .line 3145
    :cond_1
    :goto_1
    return p1
.end method

.method private computeMinUserPosition(II)I
    .locals 2
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 3119
    :goto_0
    if-ge p1, p2, :cond_1

    .line 3120
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3121
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 3122
    .local v1, "canShow":Z
    if-eqz v1, :cond_0

    .line 3123
    goto :goto_1

    .line 3125
    :cond_0
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, 0x1

    .line 3126
    goto :goto_0

    .line 3127
    :cond_1
    :goto_1
    return p1
.end method

.method static computeScreenLayoutOverride(III)I
    .locals 3
    .param p0, "sourceScreenLayout"    # I
    .param p1, "screenWidthDp"    # I
    .param p2, "screenHeightDp"    # I

    .line 2823
    and-int/lit8 p0, p0, 0x3f

    .line 2825
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2826
    .local v0, "longSize":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2827
    .local v1, "shortSize":I
    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private containsActivityFromRootTask(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 5662
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 5663
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 5664
    const/4 v0, 0x1

    return v0

    .line 5666
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 5667
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/Runnable;

    .line 7328
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7329
    return v1

    .line 7331
    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7332
    .local v5, "printedHeader":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7333
    .local v4, "printed":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;

    move-object v2, v0

    move-object v3, p0

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/Task;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    const/4 v1, 0x1

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 7372
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "boundaryActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1922
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1924
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1926
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_1

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    .line 1929
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1931
    :cond_1
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1934
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_2
    return v1
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 6845
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 6847
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 6849
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6852
    goto :goto_0

    .line 6850
    :catch_0
    move-exception v0

    .line 6853
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 6854
    const/4 v0, 0x1

    return v0

    .line 6845
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 6828
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 6829
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 6836
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6837
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 6836
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 6839
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 6840
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 6842
    .end local v0    # "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    :goto_0
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "rootTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "overlapPxX"    # I
    .param p3, "overlapPxY"    # I

    .line 2542
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2548
    :cond_0
    const/4 v0, 0x0

    .line 2550
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2551
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 2552
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 2553
    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 2554
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2556
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 2557
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2558
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 2559
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_1

    .line 2560
    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_4

    .line 2561
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2563
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2564
    return-void

    .line 2543
    .end local v0    # "horizontalDiff":I
    .end local v1    # "overlapLR":I
    .end local v2    # "verticalDiff":I
    .end local v3    # "overlapTB":I
    :cond_5
    :goto_2
    return-void
.end method

.method static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .locals 1
    .param p0, "token"    # Landroid/window/WindowContainerToken;

    .line 924
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 925
    :cond_0
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .locals 6
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "suggestedPosition"    # I

    .line 3149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 3151
    .local v0, "canShowChild":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 3154
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    .line 3155
    .local v2, "minPosition":I
    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v3

    .line 3156
    .local v3, "maxPosition":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3158
    add-int/lit8 v3, v3, 0x1

    .line 3162
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3164
    :goto_1
    if-le v3, v2, :cond_4

    .line 3165
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 3166
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3171
    :cond_4
    :goto_2
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_5

    if-nez v2, :cond_5

    .line 3172
    return v4

    .line 3173
    :cond_5
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_6

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_6

    .line 3174
    return v4

    .line 3177
    :cond_6
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 4
    .param p0, "token"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "foundTop"    # [Z

    .line 3407
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3410
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3411
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    .line 3412
    return-void

    .line 3414
    :cond_1
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    .line 3415
    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    .line 3416
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3419
    :cond_2
    sget-object v1, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 3420
    .local v1, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3421
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v2, v1, v3}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 3423
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3424
    return-void

    .line 3408
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "visibleFrame":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "allowFocusSelf"    # Z

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3038
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    .line 3039
    const/4 v1, 0x0

    return-object v1

    .line 3042
    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3044
    .local v1, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3045
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 3047
    :cond_1
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .locals 0
    .param p1, "reportOut"    # Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 1662
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1663
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1664
    return-void
.end method

.method private getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;
    .locals 3
    .param p1, "top"    # Lcom/android/server/wm/Task;

    .line 4136
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4137
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4138
    .local v1, "topVisibleActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4139
    :cond_1
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v0, v2}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 4138
    :goto_1
    return-object v0
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 7799
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getRelativePosition()Landroid/graphics/Point;
    .locals 1

    .line 7682
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7683
    .local v0, "position":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 7684
    return-object v0
.end method

.method private getShadowRadius(Z)F
    .locals 3
    .param p1, "taskIsFocused"    # Z

    .line 5156
    const/4 v0, 0x0

    .line 5159
    .local v0, "elevation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5160
    const/4 v0, 0x5

    goto :goto_1

    .line 5161
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5162
    if-eqz p1, :cond_1

    .line 5163
    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    move v0, v1

    .line 5170
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5171
    return v2

    .line 5174
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 5166
    :cond_3
    return v2
.end method

.method private hasVisibleChildren()Z
    .locals 2

    .line 5145
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5149
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5146
    :cond_2
    :goto_0
    return v1
.end method

.method private inFrontOfStandardRootTask()Z
    .locals 6

    .line 6871
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6872
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6873
    return v1

    .line 6875
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 6876
    .local v3, "hasFound":[Z
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 6888
    .local v4, "rootTaskBehind":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 2385
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 2386
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2388
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 2389
    return-void
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "intersectBounds"    # Landroid/graphics/Rect;
    .param p2, "intersectInsets"    # Landroid/graphics/Rect;

    .line 2580
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    .line 2581
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2582
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2584
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    .line 2585
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2586
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2588
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    .line 2589
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2590
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2592
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    .line 2593
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2594
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2596
    :cond_3
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "inOutConfig"    # Landroid/content/res/Configuration;

    .line 2633
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2634
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2635
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2637
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2638
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2639
    return-void
.end method

.method private isFocused()Z
    .locals 2

    .line 5135
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5138
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5136
    :cond_2
    :goto_0
    return v1
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3598
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3601
    return v1

    .line 3604
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_1

    if-eq p0, p1, :cond_1

    .line 3607
    return v1

    .line 3610
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3613
    const/4 v0, 0x1

    return v0

    .line 3615
    :cond_2
    return v1
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 6739
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTopActivityLaunchedBehind()Z
    .locals 2

    .line 4365
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4366
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_0

    .line 4367
    const/4 v1, 0x1

    return v1

    .line 4369
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "taskId"    # I
    .param p2, "notTop"    # Landroid/os/IBinder;

    .line 3754
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3733
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_0

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$applyAnimationUnchecked$14(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2
    .param p0, "sources"    # Ljava/util/ArrayList;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 4005
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4006
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 4005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4008
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$awakeFromSleepingLocked$17(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 5587
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->awakeFromSleepingLocked()V

    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$20(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "configChanges"    # I
    .param p2, "preserveWindows"    # Z
    .param p3, "notifyClients"    # Z
    .param p4, "task"    # Lcom/android/server/wm/Task;

    .line 5965
    iget-object v0, p4, Lcom/android/server/wm/Task;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$21(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 5970
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method static synthetic lambda$fillTaskInfo$15(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "info"    # Landroid/app/TaskInfo;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4119
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 4120
    return-void
.end method

.method static synthetic lambda$finishAllActivitiesImmediately$23(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishAllActivitiesImmediatelyLocked: finishing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6865
    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 6866
    return-void
.end method

.method static synthetic lambda$finishIfVoiceTask$22(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6830
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 6831
    :cond_0
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6832
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 6833
    return-void
.end method

.method static synthetic lambda$forAllOccludedActivities$9(Ljava/util/function/Consumer;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "handleOccludedActivity"    # Ljava/util/function/Consumer;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3640
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3641
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDescendantTaskCount$7(Lcom/android/server/wm/Task;[I)V
    .locals 2
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "count"    # [I

    .line 3019
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$30(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "matcher"    # Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .param p1, "activities"    # Ljava/util/ArrayList;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 7390
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7391
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7393
    :cond_0
    return-void
.end method

.method static synthetic lambda$getPausingActivity$1(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 1512
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getResumedActivity$0(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 1494
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getTopFullscreenActivity$11(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3759
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3760
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getTopVisibleActivity$12(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3767
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getTopWaitSplashScreenActivity$13(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3773
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$goToSleepIfPossible$18(Z[ILcom/android/server/wm/Task;)V
    .locals 2
    .param p0, "shuttingDown"    # Z
    .param p1, "sleepInProgress"    # [I
    .param p2, "t"    # Lcom/android/server/wm/Task;

    .line 5619
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5620
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 5622
    :cond_0
    return-void
.end method

.method static synthetic lambda$navigateUpTo$25(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "dest"    # Landroid/content/ComponentName;
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 6944
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6945
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6944
    :goto_0
    return v0
.end method

.method static synthetic lambda$navigateUpTo$26(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "finalParent"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "resultCodeHolder"    # [I
    .param p2, "resultDataHolder"    # [Landroid/content/Intent;
    .param p3, "resultGrantsHolder"    # [Lcom/android/server/uri/NeededUriGrants;
    .param p4, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 6983
    if-ne p4, p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 6985
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 6988
    aput v0, p1, v0

    .line 6989
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 6990
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$performClearTask$6(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1851
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1853
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 1855
    return-void
.end method

.method static synthetic lambda$startPausingLocked$19(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;[ILcom/android/server/wm/Task;)V
    .locals 2
    .param p0, "userLeaving"    # Z
    .param p1, "uiSleeping"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pausing"    # [I
    .param p5, "t"    # Lcom/android/server/wm/Task;

    .line 5693
    invoke-virtual {p5, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5694
    const/4 v0, 0x0

    aget v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p4, v0

    .line 5696
    :cond_0
    return-void
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$2(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "window"    # Lcom/android/server/wm/WindowState;

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$3(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1645
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$topActivityWithStartingWindow$4(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1653
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1653
    :goto_0
    return v1
.end method

.method static synthetic lambda$topRunningActivity$10(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3718
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "activityComponent"    # Landroid/content/ComponentName;

    .line 2068
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 2241
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 2242
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2243
    .local v1, "nextPersistTaskBounds":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 2244
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2246
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 2247
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2250
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2253
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2254
    .local v2, "prevWinMode":I
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2255
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    .line 2256
    .local v3, "wasInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    .line 2257
    .local v4, "wasInPictureInPicture":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2262
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    .line 2263
    .local v5, "pipChanging":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 2264
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 2265
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v8

    if-eq v3, v8, :cond_4

    .line 2266
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 2269
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    .line 2270
    .local v8, "newWinMode":I
    if-eq v2, v8, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v9, :cond_5

    .line 2271
    invoke-direct {p0, v2, v8}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2272
    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v9}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 2277
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2278
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2279
    .local v9, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 2280
    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2284
    .end local v9    # "currentBounds":Landroid/graphics/Rect;
    :cond_6
    if-eqz v5, :cond_8

    .line 2289
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 2290
    .local v9, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_7

    iget-object v10, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2291
    iput-boolean v6, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    .line 2293
    .end local v9    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    goto :goto_2

    .line 2296
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    .line 2299
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2300
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v6

    .line 2301
    .local v6, "taskOrgChanged":Z
    if-eqz v6, :cond_9

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2303
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v9

    if-nez v9, :cond_9

    .line 2307
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2312
    :cond_9
    if-nez v6, :cond_a

    .line 2313
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2315
    :cond_a
    return-void
.end method

.method private performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1898
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1899
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1901
    :cond_0
    sget-object v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1902
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1901
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 1903
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1904
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1908
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v3, :cond_1

    const/high16 v3, 0x20000000

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    .line 1910
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1911
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    .line 1912
    const/4 v3, 0x0

    const-string v4, "clear-task-top"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1913
    return-object v1

    .line 1917
    :cond_1
    return-object v0
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;

    .line 7236
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7238
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 7239
    return-void
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 1208
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;

    .line 2868
    nop

    .line 2869
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2870
    .local v0, "windowingMode":I
    if-nez v0, :cond_0

    .line 2871
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2875
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2876
    nop

    .line 2877
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2879
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2881
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2884
    return-void

    .line 2887
    :cond_1
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2888
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 2889
    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/Task;->computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2890
    return-void

    .line 2892
    :cond_2
    return-void
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7414
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 7416
    if-eqz p1, :cond_0

    if-ne p0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 7417
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 7420
    :cond_0
    return-void
.end method

.method static restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .locals 55
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .param p1, "taskSupervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4684
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 4685
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 4686
    .local v3, "affinityIntent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4687
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v5, 0x0

    .line 4688
    .local v5, "realActivity":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 4689
    .local v6, "realActivitySuspended":Z
    const/4 v7, 0x0

    .line 4690
    .local v7, "origActivity":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 4691
    .local v8, "affinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4692
    .local v9, "rootAffinity":Ljava/lang/String;
    const/4 v10, 0x0

    .line 4693
    .local v10, "hasRootAffinity":Z
    const/4 v11, 0x0

    .line 4694
    .local v11, "windowLayoutAffinity":Ljava/lang/String;
    const/4 v12, 0x0

    .line 4695
    .local v12, "rootHasReset":Z
    const/4 v13, 0x0

    .line 4696
    .local v13, "autoRemoveRecents":Z
    const/4 v14, 0x0

    .line 4697
    .local v14, "askedCompatMode":Z
    const/4 v15, 0x0

    .line 4698
    .local v15, "taskType":I
    const/16 v16, 0x0

    .line 4699
    .local v16, "userId":I
    const/16 v17, 0x1

    .line 4700
    .local v17, "userSetupComplete":Z
    const/16 v18, -0x1

    .line 4701
    .local v18, "effectiveUid":I
    const/16 v19, 0x0

    .line 4702
    .local v19, "lastDescription":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 4703
    .local v20, "lastTimeOnTop":J
    const/16 v22, 0x1

    .line 4704
    .local v22, "neverRelinquishIdentity":Z
    const/16 v23, -0x1

    .line 4705
    .local v23, "taskId":I
    move-object/from16 v24, v3

    .end local v3    # "affinityIntent":Landroid/content/Intent;
    .local v24, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 4706
    .local v3, "outerDepth":I
    new-instance v25, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v26, v25

    .line 4707
    .local v26, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v25, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    move-object/from16 v27, v25

    .line 4708
    .local v27, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    const/16 v25, -0x1

    .line 4709
    .local v25, "taskAffiliation":I
    const/16 v28, -0x1

    .line 4710
    .local v28, "prevTaskId":I
    const/16 v29, -0x1

    .line 4711
    .local v29, "nextTaskId":I
    const/16 v30, -0x1

    .line 4712
    .local v30, "callingUid":I
    const-string v31, ""

    .line 4713
    .local v31, "callingPackage":Ljava/lang/String;
    const/16 v32, 0x0

    .line 4714
    .local v32, "callingFeatureId":Ljava/lang/String;
    const/16 v33, 0x4

    .line 4715
    .local v33, "resizeMode":I
    const/16 v34, 0x0

    .line 4716
    .local v34, "supportsPictureInPicture":Z
    const/16 v35, 0x0

    .line 4717
    .local v35, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v36, -0x1

    .line 4718
    .local v36, "minWidth":I
    const/16 v37, -0x1

    .line 4719
    .local v37, "minHeight":I
    const/16 v38, 0x0

    .line 4721
    .local v38, "persistTaskVersion":I
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v39

    move-object/from16 v40, v5

    .end local v5    # "realActivity":Landroid/content/ComponentName;
    .local v40, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x1

    add-int/lit8 v39, v39, -0x1

    move/from16 v41, v15

    move/from16 v42, v16

    move/from16 v43, v17

    move-object/from16 v44, v19

    move-wide/from16 v45, v20

    move/from16 v47, v22

    move/from16 v5, v23

    move/from16 v21, v25

    move/from16 v20, v28

    move/from16 v48, v29

    move/from16 v49, v30

    move-object/from16 v50, v31

    move-object/from16 v51, v32

    move-object/from16 v52, v35

    move/from16 v53, v36

    move/from16 v54, v37

    move-object/from16 v22, v0

    move/from16 v19, v6

    move-object/from16 v17, v11

    move v15, v14

    move/from16 v0, v39

    move-object/from16 v6, v40

    move v11, v10

    move v14, v13

    move-object v10, v9

    move v13, v12

    move/from16 v12, v38

    move-object v9, v8

    move-object v8, v7

    move/from16 v7, v33

    .end local v16    # "userId":I
    .end local v23    # "taskId":I
    .end local v25    # "taskAffiliation":I
    .end local v28    # "prevTaskId":I
    .end local v29    # "nextTaskId":I
    .end local v30    # "callingUid":I
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "callingFeatureId":Ljava/lang/String;
    .end local v33    # "resizeMode":I
    .end local v35    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v36    # "minWidth":I
    .end local v37    # "minHeight":I
    .end local v38    # "persistTaskVersion":I
    .end local v40    # "realActivity":Landroid/content/ComponentName;
    .local v0, "attrNdx":I
    .local v5, "taskId":I
    .local v6, "realActivity":Landroid/content/ComponentName;
    .local v7, "resizeMode":I
    .local v8, "origActivity":Landroid/content/ComponentName;
    .local v9, "affinity":Ljava/lang/String;
    .local v10, "rootAffinity":Ljava/lang/String;
    .local v11, "hasRootAffinity":Z
    .local v12, "persistTaskVersion":I
    .local v13, "rootHasReset":Z
    .local v14, "autoRemoveRecents":Z
    .local v15, "askedCompatMode":Z
    .local v17, "windowLayoutAffinity":Ljava/lang/String;
    .local v19, "realActivitySuspended":Z
    .local v20, "prevTaskId":I
    .local v21, "taskAffiliation":I
    .local v22, "intent":Landroid/content/Intent;
    .local v41, "taskType":I
    .local v42, "userId":I
    .local v43, "userSetupComplete":Z
    .local v44, "lastDescription":Ljava/lang/String;
    .local v45, "lastTimeOnTop":J
    .local v47, "neverRelinquishIdentity":Z
    .local v48, "nextTaskId":I
    .local v49, "callingUid":I
    .local v50, "callingPackage":Ljava/lang/String;
    .local v51, "callingFeatureId":Ljava/lang/String;
    .local v52, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v53, "minWidth":I
    .local v54, "minHeight":I
    :goto_0
    move/from16 v23, v15

    .end local v15    # "askedCompatMode":Z
    .local v23, "askedCompatMode":Z
    const-string v15, "ActivityTaskManager"

    move/from16 v28, v14

    .end local v14    # "autoRemoveRecents":Z
    .local v28, "autoRemoveRecents":Z
    if-ltz v0, :cond_3

    .line 4722
    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 4723
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v31

    .line 4728
    .local v31, "attrValue":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v32

    move/from16 v33, v13

    .end local v13    # "rootHasReset":Z
    .local v33, "rootHasReset":Z
    sparse-switch v32, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v13, "root_has_reset"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v13, "window_layout_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v13, "real_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v13, "never_relinquish_identity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x10

    goto/16 :goto_2

    :sswitch_4
    const-string v13, "calling_package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x15

    goto/16 :goto_2

    :sswitch_5
    const-string v13, "persist_task_version"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1c

    goto/16 :goto_2

    :sswitch_6
    const-string v13, "last_description"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v13, "affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto/16 :goto_2

    :sswitch_8
    const-string v13, "min_width"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1a

    goto/16 :goto_2

    :sswitch_9
    const-string v13, "calling_feature_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x16

    goto/16 :goto_2

    :sswitch_a
    const-string v13, "prev_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x12

    goto/16 :goto_2

    :sswitch_b
    const-string v13, "task_type"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xd

    goto/16 :goto_2

    :sswitch_c
    const-string v13, "calling_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x14

    goto/16 :goto_2

    :sswitch_d
    const-string v13, "user_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xa

    goto/16 :goto_2

    :sswitch_e
    const-string v13, "root_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x5

    goto/16 :goto_2

    :sswitch_f
    const-string v13, "supports_picture_in_picture"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x18

    goto/16 :goto_2

    :sswitch_10
    const-string v13, "auto_remove_recents"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x8

    goto/16 :goto_2

    :sswitch_11
    const-string v13, "last_snapshot_buffer_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1f

    goto/16 :goto_2

    :sswitch_12
    const-string v13, "orig_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x3

    goto/16 :goto_2

    :sswitch_13
    const-string v13, "non_fullscreen_bounds"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x19

    goto/16 :goto_2

    :sswitch_14
    const-string v13, "last_snapshot_task_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1d

    goto/16 :goto_2

    :sswitch_15
    const-string v13, "min_height"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1b

    goto/16 :goto_2

    :sswitch_16
    const-string v13, "resize_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x17

    goto/16 :goto_2

    :sswitch_17
    const-string v13, "effective_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xc

    goto :goto_2

    :sswitch_18
    const-string v13, "user_setup_complete"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xb

    goto :goto_2

    :sswitch_19
    const-string v13, "task_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x11

    goto :goto_2

    :sswitch_1a
    const-string v13, "real_activity_suspended"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    goto :goto_2

    :sswitch_1b
    const-string v13, "next_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x13

    goto :goto_2

    :sswitch_1c
    const-string v13, "task_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :sswitch_1d
    const-string v13, "last_time_moved"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xf

    goto :goto_2

    :sswitch_1e
    const-string v13, "last_snapshot_content_insets"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1e

    goto :goto_2

    :sswitch_1f
    const-string v13, "asked_compat_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x9

    goto :goto_2

    :goto_1
    const/4 v13, -0x1

    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 4827
    move-object/from16 v13, v27

    const-string v13, "task_description_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 4828
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    .end local v8    # "origActivity":Landroid/content/ComponentName;
    .local v32, "origActivity":Landroid/content/ComponentName;
    const-string v8, "Task: Unknown attribute="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4824
    .end local v32    # "origActivity":Landroid/content/ComponentName;
    .restart local v8    # "origActivity":Landroid/content/ComponentName;
    :pswitch_0
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v15, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 4825
    move-object/from16 v32, v8

    goto/16 :goto_3

    .line 4821
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 4822
    move-object/from16 v32, v8

    goto/16 :goto_3

    .line 4818
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_2
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 4819
    move-object/from16 v32, v8

    goto/16 :goto_3

    .line 4815
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4816
    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4812
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_4
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4813
    .end local v54    # "minHeight":I
    .local v13, "minHeight":I
    move/from16 v54, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4809
    .end local v13    # "minHeight":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v54    # "minHeight":I
    :pswitch_5
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4810
    .end local v53    # "minWidth":I
    .local v13, "minWidth":I
    move/from16 v53, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4806
    .end local v13    # "minWidth":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v53    # "minWidth":I
    :pswitch_6
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    .line 4807
    .end local v52    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v13, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v52, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4803
    .end local v13    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v52    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_7
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4804
    .end local v34    # "supportsPictureInPicture":Z
    .local v13, "supportsPictureInPicture":Z
    move/from16 v34, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4800
    .end local v13    # "supportsPictureInPicture":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v34    # "supportsPictureInPicture":Z
    :pswitch_8
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4801
    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4797
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_9
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4798
    .end local v51    # "callingFeatureId":Ljava/lang/String;
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v51, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4794
    .end local v13    # "callingFeatureId":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v51    # "callingFeatureId":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4795
    .end local v50    # "callingPackage":Ljava/lang/String;
    .local v13, "callingPackage":Ljava/lang/String;
    move-object/from16 v50, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4791
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v50    # "callingPackage":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4792
    .end local v49    # "callingUid":I
    .local v13, "callingUid":I
    move/from16 v49, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4788
    .end local v13    # "callingUid":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v49    # "callingUid":I
    :pswitch_c
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4789
    .end local v48    # "nextTaskId":I
    .local v13, "nextTaskId":I
    move/from16 v48, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4785
    .end local v13    # "nextTaskId":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v48    # "nextTaskId":I
    :pswitch_d
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4786
    .end local v20    # "prevTaskId":I
    .local v13, "prevTaskId":I
    move/from16 v20, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4782
    .end local v13    # "prevTaskId":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v20    # "prevTaskId":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_e
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4783
    .end local v21    # "taskAffiliation":I
    .local v13, "taskAffiliation":I
    move/from16 v21, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4779
    .end local v13    # "taskAffiliation":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v21    # "taskAffiliation":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_f
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4780
    .end local v47    # "neverRelinquishIdentity":Z
    .local v13, "neverRelinquishIdentity":Z
    move/from16 v47, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4776
    .end local v13    # "neverRelinquishIdentity":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v47    # "neverRelinquishIdentity":Z
    :pswitch_10
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    .line 4777
    .end local v45    # "lastTimeOnTop":J
    .local v29, "lastTimeOnTop":J
    move/from16 v15, v23

    move/from16 v14, v28

    move-wide/from16 v45, v29

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4773
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .end local v29    # "lastTimeOnTop":J
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v45    # "lastTimeOnTop":J
    :pswitch_11
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4774
    .end local v44    # "lastDescription":Ljava/lang/String;
    .local v13, "lastDescription":Ljava/lang/String;
    move-object/from16 v44, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4770
    .end local v13    # "lastDescription":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v44    # "lastDescription":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4771
    .end local v41    # "taskType":I
    .local v13, "taskType":I
    move/from16 v41, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4767
    .end local v13    # "taskType":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v41    # "taskType":I
    :pswitch_13
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4768
    .end local v18    # "effectiveUid":I
    .local v13, "effectiveUid":I
    move/from16 v18, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4764
    .end local v13    # "effectiveUid":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v18    # "effectiveUid":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_14
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4765
    .end local v43    # "userSetupComplete":Z
    .local v13, "userSetupComplete":Z
    move/from16 v43, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4761
    .end local v13    # "userSetupComplete":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v43    # "userSetupComplete":Z
    :pswitch_15
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4762
    .end local v42    # "userId":I
    .local v13, "userId":I
    move/from16 v42, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4758
    .end local v13    # "userId":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v42    # "userId":I
    :pswitch_16
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4759
    .end local v23    # "askedCompatMode":Z
    .local v13, "askedCompatMode":Z
    move/from16 v14, v28

    move v15, v13

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4755
    .end local v13    # "askedCompatMode":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v23    # "askedCompatMode":Z
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_17
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4756
    .end local v28    # "autoRemoveRecents":Z
    .local v13, "autoRemoveRecents":Z
    move v14, v13

    move/from16 v15, v23

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4752
    .end local v13    # "autoRemoveRecents":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v28    # "autoRemoveRecents":Z
    :pswitch_18
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4753
    .end local v33    # "rootHasReset":Z
    .local v13, "rootHasReset":Z
    move/from16 v15, v23

    move/from16 v14, v28

    goto/16 :goto_4

    .line 4749
    .end local v13    # "rootHasReset":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v33    # "rootHasReset":Z
    :pswitch_19
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4750
    .end local v17    # "windowLayoutAffinity":Ljava/lang/String;
    .local v13, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v17, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4745
    .end local v13    # "windowLayoutAffinity":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v17    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1a
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v10, v31

    .line 4746
    const/4 v11, 0x1

    .line 4747
    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    .line 4742
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1b
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v9, v31

    .line 4743
    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    .line 4739
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1c
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 4740
    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    .line 4736
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1d
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 4737
    .end local v19    # "realActivitySuspended":Z
    .local v13, "realActivitySuspended":Z
    move/from16 v19, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    .line 4733
    .end local v13    # "realActivitySuspended":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v19    # "realActivitySuspended":Z
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1e
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 4734
    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    .line 4730
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_1f
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    const/4 v13, -0x1

    if-ne v5, v13, :cond_1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v27, v15

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    :cond_1
    move-object/from16 v32, v8

    move-object/from16 v27, v15

    goto :goto_3

    .line 4827
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :cond_2
    move-object/from16 v32, v8

    .line 4721
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .end local v31    # "attrValue":Ljava/lang/String;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :goto_3
    move/from16 v15, v23

    move/from16 v14, v28

    move-object/from16 v8, v32

    move/from16 v13, v33

    .end local v23    # "askedCompatMode":Z
    .end local v28    # "autoRemoveRecents":Z
    .end local v33    # "rootHasReset":Z
    .local v13, "rootHasReset":Z
    .local v14, "autoRemoveRecents":Z
    .local v15, "askedCompatMode":Z
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .end local v14    # "autoRemoveRecents":Z
    .end local v15    # "askedCompatMode":Z
    .restart local v23    # "askedCompatMode":Z
    .restart local v28    # "autoRemoveRecents":Z
    :cond_3
    move-object/from16 v32, v8

    move/from16 v33, v13

    .line 4832
    .end local v0    # "attrNdx":I
    .end local v8    # "origActivity":Landroid/content/ComponentName;
    .end local v13    # "rootHasReset":Z
    .restart local v32    # "origActivity":Landroid/content/ComponentName;
    .restart local v33    # "rootHasReset":Z
    move-object/from16 v8, v26

    .end local v26    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v8, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Landroid/util/TypedXmlPullParser;)V

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    .line 4835
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "affinityIntent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    .local v14, "affinityIntent":Landroid/content/Intent;
    :goto_5
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move/from16 v22, v0

    const/4 v1, 0x1

    .local v22, "event":I
    if-eq v0, v1, :cond_b

    move/from16 v1, v22

    move-object/from16 v22, v8

    const/4 v8, 0x3

    .end local v8    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v1, "event":I
    .local v22, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-ne v1, v8, :cond_5

    .line 4836
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v3, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v24, v1

    goto/16 :goto_8

    .line 4837
    :cond_5
    :goto_6
    const/4 v8, 0x2

    if-ne v1, v8, :cond_a

    .line 4838
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4840
    .local v0, "name":Ljava/lang/String;
    const-string v8, "affinity_intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4841
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v14, v8

    .end local v14    # "affinityIntent":Landroid/content/Intent;
    .local v8, "affinityIntent":Landroid/content/Intent;
    goto :goto_7

    .line 4842
    .end local v8    # "affinityIntent":Landroid/content/Intent;
    .restart local v14    # "affinityIntent":Landroid/content/Intent;
    :cond_6
    const-string v8, "intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4843
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v13, v8

    .end local v13    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_7

    .line 4844
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v8, "activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4845
    nop

    .line 4846
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 4850
    .local v8, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_8

    .line 4851
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4853
    .end local v8    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    move/from16 v24, v1

    goto :goto_7

    .line 4854
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    .end local v1    # "event":I
    .local v24, "event":I
    const-string v1, "restoreTask: Unexpected name="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4857
    .end local v0    # "name":Ljava/lang/String;
    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto :goto_5

    .line 4837
    .end local v24    # "event":I
    .restart local v1    # "event":I
    :cond_a
    move/from16 v24, v1

    .end local v1    # "event":I
    .restart local v24    # "event":I
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto :goto_5

    .line 4835
    .end local v24    # "event":I
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v22, "event":I
    :cond_b
    move/from16 v24, v22

    move-object/from16 v22, v8

    .line 4859
    .end local v8    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v22, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v24    # "event":I
    :goto_8
    if-nez v11, :cond_c

    .line 4860
    move-object v10, v9

    goto :goto_9

    .line 4861
    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4862
    const/4 v10, 0x0

    .line 4864
    :cond_d
    :goto_9
    if-gtz v18, :cond_11

    .line 4865
    if-eqz v13, :cond_e

    move-object v0, v13

    goto :goto_a

    :cond_e
    move-object v0, v14

    :goto_a
    move-object v1, v0

    .line 4866
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 4867
    .end local v18    # "effectiveUid":I
    .local v8, "effectiveUid":I
    if-eqz v1, :cond_10

    .line 4868
    move/from16 v26, v3

    .end local v3    # "outerDepth":I
    .local v26, "outerDepth":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 4870
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 4871
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v8

    .end local v8    # "effectiveUid":I
    .restart local v18    # "effectiveUid":I
    const/16 v8, 0x2200

    .line 4870
    move/from16 v31, v11

    move/from16 v11, v42

    .end local v42    # "userId":I
    .local v11, "userId":I
    .local v31, "hasRootAffinity":Z
    :try_start_1
    invoke-interface {v3, v0, v8, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4874
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f

    .line 4875
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v18    # "effectiveUid":I
    .restart local v8    # "effectiveUid":I
    goto :goto_b

    .line 4874
    .end local v8    # "effectiveUid":I
    .restart local v18    # "effectiveUid":I
    :cond_f
    move/from16 v8, v18

    .line 4878
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "effectiveUid":I
    .restart local v8    # "effectiveUid":I
    :goto_b
    goto :goto_d

    .line 4877
    .end local v8    # "effectiveUid":I
    .restart local v18    # "effectiveUid":I
    :catch_0
    move-exception v0

    goto :goto_c

    .end local v18    # "effectiveUid":I
    .end local v31    # "hasRootAffinity":Z
    .restart local v8    # "effectiveUid":I
    .local v11, "hasRootAffinity":Z
    .restart local v42    # "userId":I
    :catch_1
    move-exception v0

    move/from16 v18, v8

    move/from16 v31, v11

    move/from16 v11, v42

    .end local v8    # "effectiveUid":I
    .end local v42    # "userId":I
    .local v11, "userId":I
    .restart local v18    # "effectiveUid":I
    .restart local v31    # "hasRootAffinity":Z
    goto :goto_c

    .line 4867
    .end local v18    # "effectiveUid":I
    .end local v26    # "outerDepth":I
    .end local v31    # "hasRootAffinity":Z
    .local v3, "outerDepth":I
    .restart local v8    # "effectiveUid":I
    .local v11, "hasRootAffinity":Z
    .restart local v42    # "userId":I
    :cond_10
    move/from16 v26, v3

    move/from16 v18, v8

    move/from16 v31, v11

    move/from16 v11, v42

    .line 4880
    .end local v3    # "outerDepth":I
    .end local v8    # "effectiveUid":I
    .end local v42    # "userId":I
    .local v11, "userId":I
    .restart local v18    # "effectiveUid":I
    .restart local v26    # "outerDepth":I
    .restart local v31    # "hasRootAffinity":Z
    :goto_c
    move/from16 v8, v18

    .end local v18    # "effectiveUid":I
    .restart local v8    # "effectiveUid":I
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating task #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": effectiveUid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4864
    .end local v1    # "checkIntent":Landroid/content/Intent;
    .end local v8    # "effectiveUid":I
    .end local v26    # "outerDepth":I
    .end local v31    # "hasRootAffinity":Z
    .restart local v3    # "outerDepth":I
    .local v11, "hasRootAffinity":Z
    .restart local v18    # "effectiveUid":I
    .restart local v42    # "userId":I
    :cond_11
    move/from16 v26, v3

    move/from16 v31, v11

    move/from16 v11, v42

    .end local v3    # "outerDepth":I
    .end local v42    # "userId":I
    .local v11, "userId":I
    .restart local v26    # "outerDepth":I
    .restart local v31    # "hasRootAffinity":Z
    move/from16 v8, v18

    .line 4884
    .end local v18    # "effectiveUid":I
    .restart local v8    # "effectiveUid":I
    :goto_e
    const/4 v1, 0x1

    if-ge v12, v1, :cond_12

    .line 4889
    move/from16 v15, v41

    .end local v41    # "taskType":I
    .local v15, "taskType":I
    if-ne v15, v1, :cond_13

    const/4 v1, 0x2

    if-ne v7, v1, :cond_13

    .line 4890
    const/4 v7, 0x1

    move/from16 v0, v34

    goto :goto_f

    .line 4897
    .end local v15    # "taskType":I
    .restart local v41    # "taskType":I
    :cond_12
    move/from16 v15, v41

    .end local v41    # "taskType":I
    .restart local v15    # "taskType":I
    const/4 v1, 0x3

    if-ne v7, v1, :cond_13

    .line 4898
    const/4 v7, 0x2

    .line 4899
    const/16 v34, 0x1

    move/from16 v0, v34

    goto :goto_f

    .line 4903
    :cond_13
    move/from16 v0, v34

    .end local v34    # "supportsPictureInPicture":Z
    .local v0, "supportsPictureInPicture":Z
    :goto_f
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 4904
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4905
    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4906
    invoke-static {v1, v14}, Lcom/android/server/wm/Task$Builder;->access$300(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4907
    invoke-static {v1, v9}, Lcom/android/server/wm/Task$Builder;->access$400(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4908
    invoke-static {v1, v10}, Lcom/android/server/wm/Task$Builder;->access$500(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4909
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task$Builder;->setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4910
    move-object/from16 v3, v32

    .end local v32    # "origActivity":Landroid/content/ComponentName;
    .local v3, "origActivity":Landroid/content/ComponentName;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$600(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4911
    move/from16 v3, v33

    .end local v33    # "rootHasReset":Z
    .local v3, "rootHasReset":Z
    .restart local v32    # "origActivity":Landroid/content/ComponentName;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$700(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4912
    move/from16 v3, v28

    .end local v28    # "autoRemoveRecents":Z
    .local v3, "autoRemoveRecents":Z
    .restart local v33    # "rootHasReset":Z
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$800(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4913
    move/from16 v3, v23

    .end local v23    # "askedCompatMode":Z
    .local v3, "askedCompatMode":Z
    .restart local v28    # "autoRemoveRecents":Z
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$900(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4914
    invoke-static {v1, v11}, Lcom/android/server/wm/Task$Builder;->access$1000(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4915
    invoke-virtual {v1, v8}, Lcom/android/server/wm/Task$Builder;->setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4916
    move-object/from16 v3, v44

    .end local v44    # "lastDescription":Ljava/lang/String;
    .local v3, "lastDescription":Ljava/lang/String;
    .restart local v23    # "askedCompatMode":Z
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1100(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4917
    move/from16 v29, v5

    move-object/from16 v18, v6

    move-wide/from16 v5, v45

    .end local v6    # "realActivity":Landroid/content/ComponentName;
    .end local v45    # "lastTimeOnTop":J
    .local v5, "lastTimeOnTop":J
    .local v18, "realActivity":Landroid/content/ComponentName;
    .local v29, "taskId":I
    invoke-static {v1, v5, v6}, Lcom/android/server/wm/Task$Builder;->access$1200(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4918
    move-object/from16 v30, v3

    move/from16 v3, v47

    .end local v47    # "neverRelinquishIdentity":Z
    .local v3, "neverRelinquishIdentity":Z
    .local v30, "lastDescription":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1300(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4919
    move/from16 v34, v3

    move-object/from16 v3, v22

    .end local v22    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v3, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v34, "neverRelinquishIdentity":Z
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1400(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4920
    move-object/from16 v3, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v3, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v22    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1500(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4921
    move/from16 v3, v21

    .end local v21    # "taskAffiliation":I
    .local v3, "taskAffiliation":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1600(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4922
    move/from16 v3, v20

    .end local v20    # "prevTaskId":I
    .local v3, "prevTaskId":I
    .restart local v21    # "taskAffiliation":I
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1700(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4923
    move/from16 v3, v48

    .end local v48    # "nextTaskId":I
    .local v3, "nextTaskId":I
    .restart local v20    # "prevTaskId":I
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1800(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4924
    move/from16 v35, v3

    move/from16 v3, v49

    .end local v49    # "callingUid":I
    .local v3, "callingUid":I
    .local v35, "nextTaskId":I
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1900(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4925
    move/from16 v36, v3

    move-object/from16 v3, v50

    .end local v50    # "callingPackage":Ljava/lang/String;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v36, "callingUid":I
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2000(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4926
    move-object/from16 v37, v3

    move-object/from16 v3, v51

    .end local v51    # "callingFeatureId":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v37, "callingPackage":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2100(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4927
    invoke-static {v1, v7}, Lcom/android/server/wm/Task$Builder;->access$2200(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4928
    invoke-static {v1, v0}, Lcom/android/server/wm/Task$Builder;->access$2300(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4929
    move-object/from16 v38, v3

    move/from16 v3, v19

    .end local v19    # "realActivitySuspended":Z
    .local v3, "realActivitySuspended":Z
    .local v38, "callingFeatureId":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2400(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4930
    move/from16 v3, v43

    .end local v43    # "userSetupComplete":Z
    .local v3, "userSetupComplete":Z
    .restart local v19    # "realActivitySuspended":Z
    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2500(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4931
    move/from16 v39, v3

    move/from16 v3, v53

    .end local v53    # "minWidth":I
    .local v3, "minWidth":I
    .local v39, "userSetupComplete":Z
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task$Builder;->setMinWidth(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4932
    move/from16 v40, v3

    move/from16 v3, v54

    .end local v54    # "minHeight":I
    .local v3, "minHeight":I
    .local v40, "minWidth":I
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task$Builder;->setMinHeight(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 4933
    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4934
    .local v1, "task":Lcom/android/server/wm/Task;
    move/from16 v41, v3

    move-object/from16 v3, v52

    .end local v52    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v3, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v41, "minHeight":I
    iput-object v3, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4935
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4936
    move-object/from16 v42, v3

    move-object/from16 v3, v17

    .end local v17    # "windowLayoutAffinity":Ljava/lang/String;
    .local v3, "windowLayoutAffinity":Ljava/lang/String;
    .local v42, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    iput-object v3, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 4937
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_14

    .line 4939
    move/from16 v17, v0

    .end local v0    # "supportsPictureInPicture":Z
    .local v17, "supportsPictureInPicture":Z
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4940
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4941
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object/from16 v25, v0

    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v25, "dc":Lcom/android/server/wm/DisplayContent;
    const/high16 v0, -0x80000000

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4943
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "activityNdx":I
    :goto_10
    if-ltz v0, :cond_15

    .line 4944
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 4943
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 4937
    .end local v17    # "supportsPictureInPicture":Z
    .end local v25    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v0, "supportsPictureInPicture":Z
    :cond_14
    move/from16 v17, v0

    .line 4949
    .end local v0    # "supportsPictureInPicture":Z
    .restart local v17    # "supportsPictureInPicture":Z
    :cond_15
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1f
        -0x5eb23152 -> :sswitch_1e
        -0x5ccdaff6 -> :sswitch_1d
        -0x5ba06deb -> :sswitch_1c
        -0x591a685c -> :sswitch_1b
        -0x43dc2f14 -> :sswitch_1a
        -0x430d08ca -> :sswitch_19
        -0x3a0f4851 -> :sswitch_18
        -0x37680e48 -> :sswitch_17
        -0x3395d9b2 -> :sswitch_16
        -0x313f784c -> :sswitch_15
        -0x2fcb75f7 -> :sswitch_14
        -0x2a27c539 -> :sswitch_13
        -0x2a0990b3 -> :sswitch_12
        -0x20dc8352 -> :sswitch_11
        -0x1df202b3 -> :sswitch_10
        -0x158140a0 -> :sswitch_f
        -0x9b3481b -> :sswitch_e
        -0x8c511f1 -> :sswitch_d
        -0x7e175ab -> :sswitch_c
        0xac8bdb4 -> :sswitch_b
        0x13bdcee4 -> :sswitch_a
        0x1782e55f -> :sswitch_9
        0x2046b199 -> :sswitch_8
        0x24172928 -> :sswitch_7
        0x33cf43d3 -> :sswitch_6
        0x3c12eca9 -> :sswitch_5
        0x40756fcb -> :sswitch_4
        0x56e1584e -> :sswitch_3
        0x5bc3bc90 -> :sswitch_2
        0x772fa04e -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 8
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 6536
    const-string v0, "noMoreActivities"

    .line 6538
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "noMoreActivities"

    if-nez v1, :cond_0

    .line 6539
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6540
    .local v1, "nextFocusedTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    .line 6544
    iget-object v3, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 6551
    .end local v1    # "nextFocusedTask":Lcom/android/server/wm/Task;
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6552
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x88e815e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6554
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 27
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "deferPause"    # Z

    .line 6143
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6145
    return v4

    .line 6151
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 6153
    .local v6, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    move v7, v0

    .line 6156
    .local v7, "hasRunningActivity":Z
    if-eqz v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6157
    return v4

    .line 6160
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->cancelInitializingActivities()V

    .line 6162
    if-nez v7, :cond_3

    .line 6164
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/Task;->resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 6167
    :cond_3
    iput-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 6168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 6171
    .local v8, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    if-ne v0, v6, :cond_6

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6172
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6175
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 6179
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6180
    invoke-virtual {v8, v9, v4, v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 6183
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x281163f6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v10, v11, v4, v9, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6185
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_5
    return v4

    .line 6188
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6189
    return v4

    .line 6193
    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v10

    .line 6194
    .local v10, "allPausedComplete":Z
    if-nez v10, :cond_9

    .line 6195
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x1f73cdce

    move-object v11, v9

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6198
    :cond_8
    return v4

    .line 6203
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6206
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 6207
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x6ef9cc35

    move-object v11, v9

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6209
    :cond_a
    return v4

    .line 6215
    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v11, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v11}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v0

    const-string v11, "ActivityTaskManager"

    if-nez v0, :cond_c

    .line 6216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": user "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is stopped"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6218
    return v4

    .line 6223
    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6227
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v12, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLaunchSource(I)V

    .line 6229
    const/4 v0, 0x0

    .line 6230
    .local v0, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 6231
    .local v12, "lastFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v12, v13, :cond_d

    .line 6235
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    .line 6238
    :cond_d
    move-object v13, v0

    .end local v0    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v13, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    if-nez p3, :cond_e

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v5

    goto :goto_2

    :cond_e
    move v0, v4

    .line 6239
    .local v0, "pausing":Z
    :goto_2
    iget-object v14, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v15, "resumeTopActivityInnerLocked"

    if-eqz v14, :cond_10

    .line 6240
    sget-boolean v14, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v14, :cond_f

    iget-object v14, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move/from16 v17, v7

    .end local v7    # "hasRunningActivity":Z
    .local v17, "hasRunningActivity":Z
    const v7, 0x3ae9a216

    move/from16 v18, v10

    .end local v10    # "allPausedComplete":Z
    .local v18, "allPausedComplete":Z
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v14, v10, v4

    const/4 v5, 0x0

    invoke-static {v9, v7, v4, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .end local v14    # "protoLogParam0":Ljava/lang/String;
    .end local v17    # "hasRunningActivity":Z
    .end local v18    # "allPausedComplete":Z
    .restart local v7    # "hasRunningActivity":Z
    .restart local v10    # "allPausedComplete":Z
    :cond_f
    move/from16 v17, v7

    move/from16 v18, v10

    .line 6241
    .end local v7    # "hasRunningActivity":Z
    .end local v10    # "allPausedComplete":Z
    .restart local v17    # "hasRunningActivity":Z
    .restart local v18    # "allPausedComplete":Z
    :goto_3
    invoke-virtual {v1, v4, v6, v15}, Lcom/android/server/wm/Task;->startPausingLocked(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    move v5, v0

    goto :goto_4

    .line 6239
    .end local v17    # "hasRunningActivity":Z
    .end local v18    # "allPausedComplete":Z
    .restart local v7    # "hasRunningActivity":Z
    .restart local v10    # "allPausedComplete":Z
    :cond_10
    move/from16 v17, v7

    move/from16 v18, v10

    .end local v7    # "hasRunningActivity":Z
    .end local v10    # "allPausedComplete":Z
    .restart local v17    # "hasRunningActivity":Z
    .restart local v18    # "allPausedComplete":Z
    move v5, v0

    .line 6244
    .end local v0    # "pausing":Z
    .local v5, "pausing":Z
    :goto_4
    if-eqz v5, :cond_17

    .line 6245
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2a4a2012

    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v7, v4, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6251
    :cond_11
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6252
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7, v4, v4}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_7

    .line 6255
    :cond_12
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_15

    .line 6259
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_5

    :cond_13
    move v0, v4

    .line 6260
    .local v0, "isTop":Z
    :goto_5
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6261
    if-eqz v0, :cond_14

    const-string v9, "pre-top-activity"

    goto :goto_6

    :cond_14
    const-string v9, "pre-activity"

    .line 6260
    :goto_6
    invoke-virtual {v7, v6, v4, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 6263
    .end local v0    # "isTop":Z
    :cond_15
    :goto_7
    if-eqz v13, :cond_16

    .line 6264
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_8

    .line 6263
    :cond_16
    const/4 v4, 0x1

    .line 6266
    :goto_8
    return v4

    .line 6267
    :cond_17
    iget-object v0, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_19

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6268
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6274
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 6275
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_18

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x2423d534

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v0, v11, v4

    const/4 v14, 0x0

    invoke-static {v7, v9, v4, v14, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_18
    const/4 v10, 0x1

    .line 6277
    :goto_9
    return v10

    .line 6283
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6284
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6287
    :cond_1a
    if-eqz v2, :cond_1b

    if-eq v2, v6, :cond_1b

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_1b

    .line 6297
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1b

    .line 6298
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6313
    :cond_1b
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6314
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBeforePackageUnstopped(Ljava/lang/String;)V

    .line 6315
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v9, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v7, v4, v9}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 6318
    :catch_0
    move-exception v0

    .line 6319
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed trying to unstop package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 6317
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 6321
    :goto_a
    nop

    .line 6326
    :goto_b
    const/4 v0, 0x1

    .line 6327
    .local v0, "anim":Z
    iget-object v7, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6328
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v9, 0x2

    if-eqz v2, :cond_20

    .line 6329
    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_1d

    .line 6332
    iget-object v10, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 6333
    const/4 v0, 0x0

    .line 6334
    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_c

    .line 6336
    :cond_1c
    invoke-virtual {v7, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6338
    :goto_c
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v10, v0

    goto :goto_f

    .line 6342
    :cond_1d
    iget-object v10, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 6343
    const/4 v0, 0x0

    .line 6344
    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_f

    .line 6346
    :cond_1e
    nop

    .line 6347
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_1f

    const/16 v10, 0x20

    goto :goto_d

    :cond_1f
    move v10, v4

    .line 6346
    :goto_d
    const/4 v14, 0x1

    invoke-virtual {v7, v14, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    goto :goto_e

    .line 6352
    :cond_20
    iget-object v10, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 6353
    const/4 v0, 0x0

    .line 6354
    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_f

    .line 6356
    :cond_21
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6360
    :goto_e
    move v10, v0

    .end local v0    # "anim":Z
    .local v10, "anim":Z
    :goto_f
    if-eqz v10, :cond_22

    .line 6361
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    goto :goto_10

    .line 6363
    :cond_22
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 6366
    :goto_10
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6368
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6380
    if-eqz v12, :cond_24

    .line 6381
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v12, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_24

    .line 6383
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    const/4 v0, 0x1

    goto :goto_11

    :cond_24
    move v0, v4

    :goto_11
    move v14, v0

    .line 6386
    .local v14, "lastActivityTranslucent":Z
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_25

    if-eqz v14, :cond_26

    .line 6387
    :cond_25
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6391
    :cond_26
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 6394
    if-nez v12, :cond_27

    const/4 v0, 0x0

    goto :goto_12

    :cond_27
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_12
    move-object v9, v0

    .line 6395
    .local v9, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/Task$ActivityState;

    move-result-object v4

    .line 6397
    .local v4, "lastState":Lcom/android/server/wm/Task$ActivityState;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 6399
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_28

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move/from16 v22, v5

    const/4 v3, 0x1

    .end local v5    # "pausing":Z
    .local v22, "pausing":Z
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    move-object/from16 v23, v0

    move-object/from16 v21, v8

    const v0, 0x5a078e8

    const/4 v8, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v21, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v23, "protoLogParam0":Ljava/lang/String;
    invoke-static {v2, v0, v3, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .end local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v22    # "pausing":Z
    .end local v23    # "protoLogParam0":Ljava/lang/String;
    .restart local v5    # "pausing":Z
    .restart local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_28
    move/from16 v22, v5

    move-object/from16 v21, v8

    .line 6401
    .end local v5    # "pausing":Z
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v22    # "pausing":Z
    :goto_13
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v0, v15}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    .line 6405
    const/4 v0, 0x1

    .line 6409
    .local v0, "notUpdated":Z
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 6418
    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v3, v5, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v2

    xor-int/2addr v2, v5

    move v0, v2

    goto :goto_14

    .line 6409
    :cond_29
    move v2, v0

    .line 6422
    .end local v0    # "notUpdated":Z
    .local v2, "notUpdated":Z
    :goto_14
    if-eqz v2, :cond_2e

    .line 6428
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6429
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_2a

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v15, v11

    const/16 v19, 0x1

    aput-object v5, v15, v19

    move/from16 v23, v2

    move-object/from16 v16, v3

    const v2, -0xdf64aa9

    const/4 v3, 0x0

    .end local v2    # "notUpdated":Z
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .local v16, "protoLogParam0":Ljava/lang/String;
    .local v23, "notUpdated":Z
    invoke-static {v8, v2, v11, v3, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .end local v5    # "protoLogParam1":Ljava/lang/String;
    .end local v16    # "protoLogParam0":Ljava/lang/String;
    .end local v23    # "notUpdated":Z
    .restart local v2    # "notUpdated":Z
    :cond_2a
    move/from16 v23, v2

    .line 6431
    .end local v2    # "notUpdated":Z
    .restart local v23    # "notUpdated":Z
    :goto_15
    if-eq v0, v6, :cond_2b

    .line 6433
    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 6435
    :cond_2b
    iget-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_2d

    iget-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v2, 0x1

    goto :goto_17

    .line 6436
    :cond_2d
    :goto_16
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6438
    :goto_17
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 6439
    return v2

    .line 6443
    .end local v0    # "nextNext":Lcom/android/server/wm/ActivityRecord;
    .end local v23    # "notUpdated":Z
    .restart local v2    # "notUpdated":Z
    :cond_2e
    move/from16 v23, v2

    .end local v2    # "notUpdated":Z
    .restart local v23    # "notUpdated":Z
    :try_start_1
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6444
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 6446
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6447
    .local v2, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v2, :cond_2f

    .line 6448
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6449
    .local v3, "N":I
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2f

    if-lez v3, :cond_2f

    .line 6452
    invoke-static {v2}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6456
    .end local v3    # "N":I
    :cond_2f
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_30

    .line 6457
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6458
    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    .line 6457
    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6463
    :cond_30
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 6465
    iget v3, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 6466
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v24, v2

    .end local v2    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .local v24, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 6465
    invoke-static {v3, v5, v8, v2}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    .line 6468
    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 6469
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 6470
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 6471
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6472
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v2

    .line 6473
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v3

    .line 6472
    invoke-static {v2, v3}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v2

    .line 6471
    invoke-virtual {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 6474
    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 6476
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_31

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    move-object/from16 v26, v0

    move-object/from16 v16, v2

    const v0, -0x1fcf770e

    const/4 v2, 0x0

    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .restart local v16    # "protoLogParam0":Ljava/lang/String;
    .local v26, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v3, v0, v8, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_18

    .end local v16    # "protoLogParam0":Ljava/lang/String;
    .end local v26    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_31
    move-object/from16 v26, v0

    .line 6497
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v24    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_18
    nop

    .line 6502
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6509
    nop

    .line 6510
    .end local v4    # "lastState":Lcom/android/server/wm/Task$ActivityState;
    .end local v9    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "lastActivityTranslucent":Z
    .end local v23    # "notUpdated":Z
    move-object/from16 v20, v7

    const/4 v5, 0x1

    goto/16 :goto_1d

    .line 6503
    .restart local v4    # "lastState":Lcom/android/server/wm/Task$ActivityState;
    .restart local v9    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "lastActivityTranslucent":Z
    .restart local v23    # "notUpdated":Z
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 6506
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6507
    const-string v2, "resume-exception"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6508
    return v3

    .line 6477
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 6479
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_32

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam0":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v20, "dc":Lcom/android/server/wm/DisplayContent;
    aput-object v2, v8, v7

    const/16 v19, 0x1

    aput-object v3, v8, v19

    move-object/from16 v25, v0

    move-object/from16 v16, v2

    const v0, -0x71489db

    const/4 v2, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .restart local v16    # "protoLogParam0":Ljava/lang/String;
    .local v25, "e":Ljava/lang/Exception;
    invoke-static {v5, v0, v7, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v16    # "protoLogParam0":Ljava/lang/String;
    .end local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_32
    move-object/from16 v25, v0

    move-object/from16 v20, v7

    .line 6481
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v25    # "e":Ljava/lang/Exception;
    :goto_19
    invoke-virtual {v6, v4, v15}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    .line 6484
    if-eqz v9, :cond_33

    .line 6485
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v9, v0, v15}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    .line 6488
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting because process died: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6489
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_34

    .line 6490
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v2, 0x0

    goto :goto_1a

    .line 6491
    :cond_34
    if-eqz v12, :cond_36

    .line 6492
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6493
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_1a

    .line 6492
    :cond_35
    const/4 v2, 0x0

    goto :goto_1a

    .line 6491
    :cond_36
    const/4 v2, 0x0

    .line 6495
    :goto_1a
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 6496
    return v3

    .line 6512
    .end local v4    # "lastState":Lcom/android/server/wm/Task$ActivityState;
    .end local v9    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "lastActivityTranslucent":Z
    .end local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v22    # "pausing":Z
    .end local v23    # "notUpdated":Z
    .end local v25    # "e":Ljava/lang/Exception;
    .local v5, "pausing":Z
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_37
    move v2, v4

    move/from16 v22, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v3, 0x1

    .end local v5    # "pausing":Z
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v22    # "pausing":Z
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_38

    .line 6513
    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_1b

    .line 6516
    :cond_38
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 6520
    :goto_1b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_39

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x5e800ec8

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v8, 0x0

    invoke-static {v3, v4, v2, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_39
    const/4 v5, 0x1

    .line 6521
    :goto_1c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6, v5, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 6524
    :goto_1d
    return v5
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .locals 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "first"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;

    .line 4664
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4665
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_0

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 4672
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4673
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4674
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4675
    const/4 v0, 0x0

    return v0

    .line 4676
    :catch_0
    move-exception v0

    .line 4677
    .local v0, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4678
    return v2

    .line 4669
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .locals 1

    .line 2499
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2500
    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2504
    return-void

    .line 2507
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2509
    return-void

    .line 2512
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2513
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    .line 2515
    return-void

    .line 2521
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 2522
    return-void

    .line 2526
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 2527
    return-void
.end method

.method private sendTaskAppeared()V
    .locals 2

    .line 5042
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    .line 5043
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 5045
    :cond_0
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 5048
    if-eqz p1, :cond_0

    .line 5049
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 5051
    :cond_0
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "existing"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 7544
    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7545
    const/4 v0, 0x0

    return v0

    .line 7548
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 7550
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 7551
    return v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1258
    :cond_0
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 1259
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1260
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_2

    .line 1264
    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 1266
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1269
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v4, 0x2

    if-nez v3, :cond_7

    .line 1270
    if-eqz p1, :cond_4

    .line 1274
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1275
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 1276
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1280
    :cond_4
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x7a744c8b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    invoke-static {v6, v7, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1282
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, v0

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1283
    iput-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 1285
    :cond_7
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_9

    .line 1288
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1289
    .local v5, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1290
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1291
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v6, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x283aa656

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v7, v4, v1

    invoke-static {v8, v9, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1293
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1294
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1295
    .end local v5    # "targetIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1296
    :cond_9
    iput-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1297
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1298
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1301
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_2
    nop

    .line 1302
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1304
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1305
    .local v0, "intentFlags":I
    :goto_4
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    .line 1308
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1310
    :cond_c
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1311
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1312
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1311
    const-string v5, "user_setup_complete"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_5

    :cond_d
    move v3, v2

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1313
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_e

    .line 1315
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    .line 1316
    :cond_e
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_10

    .line 1321
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_f

    .line 1322
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    .line 1324
    :cond_f
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    .line 1327
    :cond_10
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1329
    :goto_6
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v1, v2, :cond_11

    .line 1330
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1333
    :cond_11
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1334
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1953
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1954
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6cb9a502

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1956
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "origin"    # Lcom/android/server/wm/Task;

    .line 5225
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5226
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 5227
    .local v2, "leaf":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v2, :cond_1

    .line 5228
    return-void

    .line 5230
    :cond_1
    if-eq v2, p0, :cond_2

    .line 5231
    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 5232
    return-void

    .line 5234
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 5235
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    .line 5236
    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2102
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7

    .line 2103
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2104
    .local v0, "atd":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2105
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2107
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2108
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2110
    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2111
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2113
    :cond_2
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_3

    .line 2114
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2116
    :cond_3
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4

    .line 2117
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2119
    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_5

    .line 2120
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 2121
    nop

    .line 2122
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 2121
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 2124
    :cond_5
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_6

    .line 2125
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 2126
    nop

    .line 2127
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 2126
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 2129
    :cond_6
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-nez v1, :cond_7

    .line 2130
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 2135
    .end local v0    # "atd":Landroid/app/ActivityManager$TaskDescription;
    :cond_7
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setWindowingModeInSurfaceTransaction(IZ)V
    .locals 15
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 5336
    move-object v1, p0

    const-string v0, "movePinnedActivityToOriginalTask"

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 5337
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v2, :cond_0

    .line 5338
    const-string v0, "ActivityTaskManager"

    const-string v3, "taskDisplayArea is null, bail early"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    return-void

    .line 5341
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    .line 5342
    .local v3, "currentMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 5343
    .local v4, "topTask":Lcom/android/server/wm/Task;
    move/from16 v5, p1

    .line 5348
    .local v5, "windowingMode":I
    const/4 v6, 0x0

    if-nez p2, :cond_1

    .line 5349
    nop

    .line 5350
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v7

    .line 5349
    invoke-virtual {v2, v5, v6, v4, v7}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5351
    const/4 v5, 0x0

    .line 5355
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v7

    .line 5357
    .local v7, "alreadyInSplitScreenMode":Z
    const/4 v8, 0x1

    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    if-ne v5, v8, :cond_2

    .line 5358
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5361
    iget-object v9, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v9

    .line 5362
    invoke-virtual {v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedRootTask()V

    .line 5363
    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/Task;)V

    .line 5366
    :cond_2
    if-ne v3, v5, :cond_3

    .line 5370
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 5371
    return-void

    .line 5374
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 5379
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v10, v5

    .line 5380
    .local v10, "likelyResolvedMode":I
    if-nez v5, :cond_5

    .line 5381
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 5382
    .local v11, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_0

    .line 5383
    :cond_4
    move v12, v8

    :goto_0
    move v10, v12

    .line 5385
    .end local v11    # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_5
    const/4 v11, 0x2

    if-ne v3, v11, :cond_6

    .line 5386
    iget-object v12, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, v6}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 5388
    :cond_6
    if-ne v10, v11, :cond_7

    .line 5392
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 5393
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 5395
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 5398
    :cond_7
    if-eq v10, v8, :cond_8

    if-eqz v9, :cond_8

    iget-boolean v12, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v12, :cond_8

    .line 5400
    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5403
    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5404
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v13

    iget v14, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v14, v8, v12}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 5408
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_8
    iget-object v12, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 5410
    if-eqz v9, :cond_9

    .line 5411
    :try_start_0
    iget-object v12, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5413
    :cond_9
    invoke-super {p0, v5}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 5421
    if-ne v3, v11, :cond_a

    .line 5422
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 5425
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v12

    if-nez v12, :cond_a

    .line 5426
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 5427
    .local v12, "lastParentBeforePip":Lcom/android/server/wm/Task;
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 5428
    nop

    .line 5429
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v13

    .line 5428
    invoke-virtual {v9, v12, v13, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    .line 5431
    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5437
    .end local v12    # "lastParentBeforePip":Lcom/android/server/wm/Task;
    :cond_a
    if-eqz p2, :cond_b

    .line 5449
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5439
    return-void

    .line 5443
    :cond_b
    if-eqz v9, :cond_c

    if-ne v3, v8, :cond_c

    if-ne v5, v11, :cond_c

    .line 5445
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 5446
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5449
    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5450
    nop

    .line 5452
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v11, 0x0

    invoke-virtual {v0, v6, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5453
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5454
    return-void

    .line 5449
    :catchall_0
    move-exception v0

    iget-object v6, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5450
    throw v0
.end method

.method private shouldStartChangeTransition(II)Z
    .locals 4
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 2392
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2393
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2394
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2400
    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-ne p2, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eq v3, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 2396
    :cond_4
    :goto_2
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1970
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_0

    .line 1972
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1970
    :goto_0
    return v0
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "taskIsFocused"    # Z
    .param p2, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 5182
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5184
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    .line 5185
    .local v0, "newShadowRadius":F
    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 5186
    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 5187
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 5189
    :cond_1
    return-void

    .line 5182
    .end local v0    # "newShadowRadius":F
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSurfaceBounds()V
    .locals 1

    .line 7668
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 7669
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    .line 7670
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 7671
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 7041
    if-eqz p2, :cond_1

    .line 7042
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7043
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7044
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 7046
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 7049
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 7050
    return-void
.end method

.method private warnForNonLeafTask(Ljava/lang/String;)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;

    .line 7703
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on non-leaf task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7706
    :cond_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1740
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1741
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 9
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"    # I

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    .line 1692
    .local v0, "hadChild":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 1694
    .local v1, "activityType":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1695
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1697
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x4f52761a

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1701
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1702
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/Task;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1707
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1709
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1710
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_2

    return-void

    .line 1712
    :cond_2
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1715
    if-nez v0, :cond_4

    .line 1716
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-nez v4, :cond_3

    .line 1721
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1723
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 1724
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1725
    iget v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1726
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1727
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1729
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1730
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v4

    .line 1729
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_0

    .line 1733
    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1736
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1737
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .line 7485
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7487
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7488
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_0

    .line 7494
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 7492
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const v2, 0x7fffffff

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7494
    if-eqz v0, :cond_2

    .line 7495
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 7498
    :cond_2
    return-void

    .line 7494
    :goto_2
    if-eqz v0, :cond_3

    .line 7495
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 7497
    :cond_3
    throw v2
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3493
    if-nez p1, :cond_0

    .line 3494
    return-void

    .line 3496
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3497
    return-void

    .line 3499
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3500
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3501
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_2

    .line 3505
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 3506
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3507
    return-void

    .line 3510
    :cond_2
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_3

    .line 3513
    return-void

    .line 3521
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3523
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3524
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3525
    return-void

    .line 3528
    :cond_4
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 3529
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 3530
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 3532
    :cond_5
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 3031
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z
    .param p3, "moveDisplayToTop"    # Z

    .line 3060
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3061
    .local v0, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    .line 3062
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3064
    :cond_0
    if-nez v0, :cond_2

    .line 3065
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 3066
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_1

    .line 3068
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    .line 3070
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 3073
    .end local v1    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3074
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-nez p3, :cond_5

    .line 3078
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3079
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    move-object v3, v0

    .line 3081
    .local v3, "next":Lcom/android/server/wm/WindowContainer;
    :cond_3
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3082
    move-object v3, v2

    .line 3083
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3084
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    .line 3085
    :cond_4
    return-object v1

    .line 3088
    .end local v2    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "next":Lcom/android/server/wm/WindowContainer;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adjustFocusToNextFocusableTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3089
    .local v2, "myReason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3090
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_7

    .line 3093
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3094
    return-object v1

    .line 3099
    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 3102
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 3106
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3108
    :cond_8
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;
    .param p3, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2151
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 2152
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 2156
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2157
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 2158
    .local v2, "defaultMinSizeDp":I
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 2159
    .local v3, "density":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 2161
    .local v4, "defaultMinSize":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 2162
    move v0, v4

    .line 2164
    :cond_0
    if-ne v1, v5, :cond_1

    .line 2165
    move v1, v4

    .line 2168
    .end local v2    # "defaultMinSizeDp":I
    .end local v3    # "density":F
    .end local v4    # "defaultMinSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2171
    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2172
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 2173
    return-void

    .line 2175
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2177
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 2178
    .local v2, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    .line 2179
    .local v3, "adjustHeight":Z
    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 2180
    return-void

    .line 2183
    :cond_6
    if-eqz v2, :cond_8

    .line 2184
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_7

    .line 2185
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 2189
    :cond_7
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2192
    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    .line 2193
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_9

    .line 2194
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 2198
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2201
    :cond_a
    :goto_3
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 10
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 3996
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3997
    .local v0, "control":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1

    .line 4000
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4001
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0xc8fcb49

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v9, 0x2

    aput-object v3, v7, v9

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4004
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;

    invoke-direct {v1, p5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_0

    .line 4011
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 4013
    :cond_2
    :goto_0
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 4191
    return-object p0
.end method

.method awakeFromSleepingLocked()V
    .locals 3

    .line 5586
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5587
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5589
    return-void

    .line 5592
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 5593
    const-string v0, "ActivityTaskManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 5596
    :cond_1
    return-void
.end method

.method canAffectSystemUiFlags()Z
    .locals 1

    .line 3935
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 3703
    const/4 v0, 0x1

    return v0
.end method

.method cancelInitializingActivities()V
    .locals 2

    .line 6046
    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    .line 6047
    return-void
.end method

.method cancelTaskWindowTransition()V
    .locals 2

    .line 3536
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3537
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3536
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3539
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .locals 1
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 6057
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method checkReadyForSleep()V
    .locals 2

    .line 5599
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5600
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 5602
    :cond_0
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "top"    # Lcom/android/server/wm/ActivityRecord;

    .line 5993
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1

    .line 5994
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5995
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 5997
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5998
    iput-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6000
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6002
    :cond_1
    return-void
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1471
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 1472
    iput-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 1476
    const-string v0, "cleanUpActivityReferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1479
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1480
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1481
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1482
    return-void

    .line 1484
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 1485
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1486
    return-void
.end method

.method clearLastRecentsAnimationTransaction()V
    .locals 5

    .line 7643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7644
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7646
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v3, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 7647
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 7648
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 7649
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .locals 1

    .line 3947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 3948
    return-void
.end method

.method clearRootProcess()V
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    .line 2966
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    .line 2967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2969
    :cond_0
    return-void
.end method

.method completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 17
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 5829
    move-object/from16 v0, p0

    const-string v1, "completePauseLocked"

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    .line 5831
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5832
    .local v2, "prev":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x3585dae8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5834
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_c

    .line 5835
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 5836
    sget-object v3, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v3

    .line 5837
    .local v3, "wasStopping":Z
    sget-object v7, Lcom/android/server/wm/Task$ActivityState;->PAUSED:Lcom/android/server/wm/Task$ActivityState;

    const-string v8, "completePausedLocked"

    invoke-virtual {v2, v7, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    .line 5838
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_2

    .line 5843
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x6d8d8932

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v1, v10, v6

    invoke-static {v7, v9, v6, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5844
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v6, v8}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v2, v1

    .end local v2    # "prev":Lcom/android/server/wm/ActivityRecord;
    .local v1, "prev":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_0

    .line 5846
    .end local v1    # "prev":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "prev":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5847
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v7, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    move v9, v3

    .local v9, "protoLogParam1":Z
    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .local v10, "protoLogParam2":Z
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x62b1960f

    const/16 v13, 0x3c

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5850
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Z
    .end local v10    # "protoLogParam2":Z
    :cond_3
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v7, :cond_5

    .line 5852
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x6962ec20

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5853
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    iget-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_0

    .line 5854
    :cond_5
    if-eqz v3, :cond_6

    .line 5858
    sget-object v1, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v2, v1, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    .line 5859
    :cond_6
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 5861
    :cond_7
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 5864
    invoke-virtual {v2, v4, v6, v1}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_0

    .line 5868
    :cond_8
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x58f8bc9e

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5869
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    move-object v2, v1

    .line 5874
    :cond_a
    :goto_0
    if-eqz v2, :cond_b

    .line 5875
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 5877
    :cond_b
    iput-object v5, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5880
    .end local v3    # "wasStopping":Z
    :cond_c
    if-eqz p1, :cond_10

    .line 5881
    iget-object v1, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5882
    .local v1, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_d

    .line 5883
    iget-object v3, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    .line 5885
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    .line 5887
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    :cond_e
    move-object v3, v5

    .line 5888
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_f

    if-eqz v2, :cond_10

    if-eq v3, v2, :cond_10

    .line 5893
    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5898
    .end local v1    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_10
    :goto_1
    if-eqz v2, :cond_11

    .line 5899
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5902
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v6, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5907
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v1, :cond_12

    .line 5908
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5909
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 5910
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 5912
    :cond_13
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2654
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2656
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 2643
    if-eqz p3, :cond_0

    .line 2645
    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2646
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2648
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2650
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 16
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2681
    .local v4, "windowingMode":I
    if-nez v4, :cond_0

    .line 2682
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2685
    :cond_0
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    .line 2686
    .local v5, "density":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 2687
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    .line 2689
    :cond_1
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    .line 2695
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2696
    .local v6, "parentBounds":Landroid/graphics/Rect;
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2697
    .local v7, "resolvedBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 2701
    :cond_2
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2702
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    .local v8, "insideParentBounds":Z
    goto :goto_1

    .line 2698
    .end local v8    # "insideParentBounds":Z
    :cond_3
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2699
    const/4 v8, 0x1

    .line 2707
    .restart local v8    # "insideParentBounds":Z
    :goto_1
    const/4 v9, 0x1

    if-eqz v3, :cond_4

    move v10, v9

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 2709
    .local v10, "customContainerPolicy":Z
    :goto_2
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2710
    .local v11, "outAppBounds":Landroid/graphics/Rect;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2712
    :cond_5
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2713
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2715
    if-nez v10, :cond_8

    const/4 v12, 0x5

    if-eq v4, v12, :cond_8

    .line 2717
    if-eqz v8, :cond_6

    .line 2718
    iget-object v12, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .local v12, "containingAppBounds":Landroid/graphics/Rect;
    goto :goto_4

    .line 2723
    .end local v12    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    .line 2724
    .local v12, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v12, :cond_7

    .line 2725
    invoke-virtual {v12}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    move-object v12, v13

    .line 2727
    .local v12, "containingAppBounds":Landroid/graphics/Rect;
    :goto_4
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 2728
    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2733
    .end local v12    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_8
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v12, :cond_9

    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_14

    .line 2735
    :cond_9
    if-nez v10, :cond_a

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2736
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2737
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2738
    :cond_a
    if-nez v10, :cond_d

    if-nez p3, :cond_b

    .line 2739
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 2740
    :cond_b
    if-eqz p3, :cond_c

    .line 2741
    move-object/from16 v12, p3

    goto :goto_5

    .line 2742
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    :goto_5
    nop

    .line 2748
    .local v12, "di":Landroid/view/DisplayInfo;
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2749
    .end local v12    # "di":Landroid/view/DisplayInfo;
    goto :goto_6

    .line 2752
    :cond_d
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 2753
    .local v12, "rotation":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_e

    .line 2754
    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 2756
    :cond_e
    if-eq v12, v13, :cond_f

    if-eqz v10, :cond_f

    .line 2757
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2758
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2759
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v12}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2760
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v12

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2762
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v12

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2764
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2767
    :cond_f
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2768
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2772
    .end local v12    # "rotation":I
    :goto_6
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v12, :cond_11

    .line 2773
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    .line 2774
    .local v12, "overrideScreenWidthDp":I
    if-eqz v8, :cond_10

    if-nez v10, :cond_10

    .line 2775
    iget v13, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    .line 2776
    :cond_10
    move v13, v12

    :goto_7
    iput v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2778
    .end local v12    # "overrideScreenWidthDp":I
    :cond_11
    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_13

    .line 2779
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    .line 2780
    .local v12, "overrideScreenHeightDp":I
    if-eqz v8, :cond_12

    if-nez v10, :cond_12

    .line 2781
    iget v13, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_8

    .line 2782
    :cond_12
    move v13, v12

    :goto_8
    iput v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2785
    .end local v12    # "overrideScreenHeightDp":I
    :cond_13
    iget v12, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v12, :cond_14

    .line 2787
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2789
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2790
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    iput v12, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2796
    :cond_14
    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v12, :cond_16

    .line 2797
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v12, v13, :cond_15

    .line 2798
    goto :goto_9

    :cond_15
    const/4 v9, 0x2

    :goto_9
    iput v9, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2800
    :cond_16
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_19

    .line 2804
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2805
    .local v9, "compatScreenWidthDp":I
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    .line 2808
    .local v12, "compatScreenHeightDp":I
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_17

    .line 2809
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2811
    :cond_17
    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v13, :cond_18

    .line 2812
    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2815
    :cond_18
    iget v13, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v13, v9, v12}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2818
    .end local v9    # "compatScreenWidthDp":I
    .end local v12    # "compatScreenHeightDp":I
    :cond_19
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2661
    if-eqz p3, :cond_0

    .line 2663
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2665
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2667
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6005
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6006
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6007
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6008
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 2
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 3697
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3698
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method cropWindowsToRootTaskBounds()Z
    .locals 3

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3373
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3375
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3376
    .local v1, "topNonOrgTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eq p0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3380
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0

    .line 3377
    .restart local v0    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method dismissPip()V
    .locals 2

    .line 7520
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7524
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7529
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 7541
    return-void

    .line 7525
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7521
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchTaskInfoChangedIfNeeded(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 7803
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7804
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 7806
    :cond_0
    return-void
.end method

.method dontAnimateDimExit()V
    .locals 1

    .line 3939
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 3940
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4384
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4385
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4386
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4387
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4388
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4389
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4390
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4391
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4394
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 4392
    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4397
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4398
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4400
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_6

    .line 4401
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4402
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4403
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4404
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4406
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    .line 4407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4408
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4409
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4413
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 4414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4415
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4416
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4420
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    .line 4421
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4422
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4424
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    .line 4425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4426
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4428
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4429
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4430
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4431
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4433
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_e

    .line 4435
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4436
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4437
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4438
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4440
    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 4443
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4444
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4445
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4446
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v3, "null"

    if-nez v2, :cond_10

    .line 4447
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 4449
    :cond_10
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4451
    :goto_2
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4452
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4453
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    .line 4454
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 4456
    :cond_11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4458
    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4460
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4461
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_14

    .line 4462
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4463
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4464
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4466
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 4467
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4469
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    .line 4470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4472
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChildPipActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_17

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4477
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4478
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4479
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4480
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4482
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    if-eqz v0, :cond_18

    .line 4483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceNotOrganized=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4485
    :cond_18
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 4017
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4020
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4021
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 4022
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4026
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4020
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4030
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4031
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Exiting application tokens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 4034
    iget-object v2, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 4035
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exiting App #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4036
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4037
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 4038
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4033
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4040
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4042
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v2, "AnimatingApps:"

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .line 7290
    move-object v8, p0

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    move-object v9, p2

    move/from16 v10, p6

    invoke-direct {v0, p0, v10, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/Task;ZLjava/io/PrintWriter;)V

    .line 7302
    .local v0, "headerPrinter":Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 7304
    .local v1, "printed":Z
    if-nez p5, :cond_0

    .line 7307
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7308
    const/4 v0, 0x0

    .line 7309
    const/4 v1, 0x1

    move-object v11, v0

    move v0, v1

    goto :goto_0

    .line 7304
    :cond_0
    move-object v11, v0

    move v0, v1

    .line 7312
    .end local v1    # "printed":Z
    .local v0, "printed":Z
    .local v11, "headerPrinter":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mPausingActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7314
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v5, "    mResumedActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7316
    if-eqz p3, :cond_1

    .line 7317
    iget-object v2, v8, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mLastPausedActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    move v12, v0

    goto :goto_1

    .line 7316
    :cond_1
    move v12, v0

    .line 7321
    .end local v0    # "printed":Z
    .local v12, "printed":Z
    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/Task;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    or-int/2addr v0, v12

    .line 7323
    .end local v12    # "printed":Z
    .restart local v0    # "printed":Z
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 7811
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7812
    return-void

    .line 7815
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7816
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 7818
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7819
    const-wide v2, 0x1050000000fL

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7820
    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7822
    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    .line 7823
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7825
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 7826
    const-wide v3, 0x1090000000dL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7828
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 7829
    const-wide v3, 0x1090000000eL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7831
    :cond_3
    const-wide v2, 0x10500000011L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7832
    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7833
    const-wide v2, 0x10500000013L

    iget v4, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7834
    const-wide v2, 0x10500000014L

    iget v4, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7836
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7837
    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7839
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    .line 7840
    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7843
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    .line 7844
    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7845
    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7848
    :cond_5
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7849
    const-wide v2, 0x1090000001dL

    iget-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7850
    const-wide v2, 0x1080000001eL

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7852
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7853
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 5942
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 5943
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 5963
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 5965
    :try_start_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5970
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 5973
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5974
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5980
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5981
    nop

    .line 5982
    return-void

    .line 5980
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5981
    throw v0
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 7209
    iget-object v0, p0, Lcom/android/server/wm/Task;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 7210
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 7773
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 7774
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 7775
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 4051
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 4052
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .locals 1
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z

    .line 4055
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 4056
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .locals 8
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z
    .param p3, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 4065
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 4066
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_0
    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 4067
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 4068
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 4069
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 4070
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4073
    .local v0, "baseIntent":Landroid/content/Intent;
    if-nez v0, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 4074
    .local v3, "baseIntentFlags":I
    :goto_2
    if-nez v0, :cond_3

    .line 4075
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    goto :goto_3

    .line 4076
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    goto :goto_3

    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_3
    iput-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 4077
    iget-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4078
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 4079
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_4

    .line 4080
    :cond_5
    move-object v4, v5

    :goto_4
    iput-object v4, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4081
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_6

    .line 4082
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_5

    .line 4083
    :cond_6
    move-object v4, v5

    :goto_5
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4084
    iget-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 4085
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 4086
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v4, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 4087
    iget-wide v6, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v6, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 4088
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v4, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4089
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 4090
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 4091
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4094
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 4095
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 4096
    iget-object v4, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 4100
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 4101
    .local v4, "top":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_7

    iget v6, v4, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_6

    :cond_7
    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_6
    iput v6, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 4102
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    iput v6, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 4103
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    iput-boolean v6, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 4105
    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRelativePosition()Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 4107
    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 4108
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_8

    .line 4109
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_7

    .line 4110
    :cond_8
    move-object v6, v5

    :goto_7
    iput-object v6, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4112
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4113
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v6, p0, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4114
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v7, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    .line 4115
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    move v1, v2

    :goto_8
    iput-boolean v1, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 4116
    iget-object v1, p1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4117
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 4118
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4121
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4122
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v1, v2, :cond_a

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_a

    .line 4123
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_9

    .line 4124
    :cond_a
    const/4 v2, -0x1

    :goto_9
    iput v2, p1, Landroid/app/TaskInfo;->parentTaskId:I

    .line 4125
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->isFocused:Z

    .line 4126
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    .line 4127
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4128
    .local v2, "topRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    :cond_b
    iput-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 4129
    return-void
.end method

.method fillsParent()Z
    .locals 2

    .line 3835
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2059
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2060
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2059
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 2061
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2062
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2063
    return-object v1
.end method

.method finishAllActivitiesImmediately()V
    .locals 1

    .line 6859
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6860
    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 6861
    return-void

    .line 6863
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6867
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .locals 10
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 6785
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6786
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_0

    goto/16 :goto_0

    .line 6789
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_1

    .line 6792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6793
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6792
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    return-object v1

    .line 6796
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6797
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6796
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6798
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6799
    .local v1, "finishedTask":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 6800
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    .line 6801
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6805
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 6806
    .local v5, "activityBelow":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_3

    .line 6807
    sget-object v6, Lcom/android/server/wm/Task$ActivityState;->STARTED:Lcom/android/server/wm/Task$ActivityState;

    sget-object v7, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    sget-object v8, Lcom/android/server/wm/Task$ActivityState;->PAUSING:Lcom/android/server/wm/Task$ActivityState;

    sget-object v9, Lcom/android/server/wm/Task$ActivityState;->PAUSED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6808
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v6, v7, :cond_3

    .line 6810
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6811
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6810
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6812
    invoke-virtual {v5, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6817
    :cond_3
    return-object v1

    .line 6787
    .end local v1    # "finishedTask":Lcom/android/server/wm/Task;
    .end local v5    # "activityBelow":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_0
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 3
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 6821
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    const-class v1, Lcom/android/server/wm/Task;

    .line 6822
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 6821
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 6823
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 6824
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6825
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3840
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3841
    .local v0, "count":I
    const/4 v1, 0x1

    .line 3842
    .local v1, "isLeafTask":Z
    if-eqz p2, :cond_2

    .line 3843
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3844
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3845
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 3846
    const/4 v1, 0x0

    .line 3847
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3843
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 3851
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3852
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3853
    .restart local v3    # "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_3

    .line 3854
    const/4 v1, 0x0

    .line 3855
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3851
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3859
    .end local v2    # "i":I
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3860
    :cond_5
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Function;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3883
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 3884
    .local v0, "isLeafTask":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3885
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3886
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 3887
    const/4 v0, 0x0

    .line 3888
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3889
    return v2

    .line 3884
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3893
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 3894
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3896
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method forAllOccludedActivities(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 3628
    .local p1, "handleOccludedActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3630
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3631
    return-void

    .line 3633
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3634
    .local v0, "topOccluding":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    .line 3636
    return-void

    .line 3639
    :cond_1
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 3643
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3870
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3871
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3873
    :cond_0
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Function;Z)Z
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 3901
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 0
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3864
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3865
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3866
    return-void
.end method

.method forAllTasks(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3877
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3878
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActivityType()I
    .locals 2

    .line 1679
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    .line 1680
    .local v0, "applicationType":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1683
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    .line 1681
    :cond_1
    :goto_0
    return v0
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .locals 1

    .line 7769
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appRootTaskClipMode"    # I

    .line 3658
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3660
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3662
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 3386
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3387
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 3388
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3390
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3392
    :goto_0
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 2

    .line 1594
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    return-object v0

    .line 1597
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1598
    .local v0, "topTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 7556
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7557
    return-void
.end method

.method getDescendantTaskCount()I
    .locals 4

    .line 3018
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 3019
    .local v0, "currentCount":[I
    sget-object v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;

    const-class v3, Lcom/android/server/wm/Task;

    .line 3020
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 3019
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3021
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3022
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3023
    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3428
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3429
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3430
    return-void

    .line 3433
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3434
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3437
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    .line 3438
    invoke-virtual {v4}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 3439
    .local v4, "dockedResizing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3440
    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    .line 3441
    .local v2, "foundTop":[Z
    sget-object v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const-class v6, Lcom/android/server/wm/ActivityRecord;

    .line 3442
    invoke-static {v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v6

    .line 3441
    invoke-static {v5, v6, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v5

    .line 3443
    .local v5, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3444
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3445
    aget-boolean v3, v2, v3

    if-eqz v3, :cond_2

    .line 3446
    return-void

    .line 3450
    .end local v2    # "foundTop":[Z
    .end local v5    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3457
    if-eqz v4, :cond_3

    .line 3458
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3460
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3461
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3462
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3465
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3467
    :goto_1
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 3954
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3955
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3963
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3967
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3964
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 3566
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayId()I
    .locals 2

    .line 2972
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2973
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 7765
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDragResizeMode()I
    .locals 1

    .line 3489
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 7376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7378
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7379
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 7380
    :cond_0
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7381
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7382
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 7383
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7385
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    goto :goto_0

    .line 7386
    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 7387
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 7389
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7396
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    :goto_0
    return-object v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 4

    .line 2469
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2470
    return-object v1

    .line 2474
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2475
    .local v0, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2476
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    const/16 v3, 0x1b

    .line 2477
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    .line 2479
    .local v2, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2480
    return-object v1

    .line 2482
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method getHasBeenVisible()Z
    .locals 1

    .line 5006
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .locals 4

    .line 1228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getItemFromRootTasks(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 3920
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;TR;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .line 2939
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2940
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2941
    return-object v1

    .line 2944
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2945
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2947
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2949
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2950
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2952
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2948
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 5243
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 5239
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 3943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3621
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3623
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getOrganizedTask()Lcom/android/server/wm/Task;
    .locals 3

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2993
    return-object p0

    .line 2995
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2996
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2997
    return-object v1

    .line 2999
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3000
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getOrientation(I)I
    .locals 1
    .param p1, "candidate"    # I

    .line 3818
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method getPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 1512
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1513
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .locals 1

    .line 4132
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 5306
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 7675
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 7676
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v0

    .line 7677
    .local v0, "outset":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 7678
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 7679
    return-void
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1490
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 1494
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1495
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1604
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "setToBottomIfNone"    # Z

    .line 1608
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "ignoreRelinquishIdentity"    # Z
    .param p2, "setToBottomIfNone"    # Z

    .line 1612
    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 3

    .line 2982
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2983
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    return-object p0

    .line 2985
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2986
    .local v1, "parentTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3914
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getRootTaskId()I
    .locals 1

    .line 2978
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getSnapshot(ZZ)Landroid/window/TaskSnapshot;
    .locals 3
    .param p1, "isLowResolution"    # Z
    .param p2, "restoreFromDisk"    # Z

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStartingWindowInfo()Landroid/window/StartingWindowInfo;
    .locals 5

    .line 4152
    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    .line 4153
    .local v0, "info":Landroid/window/StartingWindowInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4155
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 4156
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 4157
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4158
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    .line 4159
    nop

    .line 4160
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_0

    .line 4161
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v2, v2, Lcom/android/server/wm/StartingData;->mTypeParams:I

    goto :goto_0

    .line 4162
    :cond_0
    nop

    :goto_0
    iput v2, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 4163
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4164
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    .line 4165
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4169
    :cond_1
    iget-object v3, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4171
    .end local v2    # "mainWindow":Lcom/android/server/wm/WindowState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4172
    .local v2, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3

    .line 4173
    nop

    .line 4174
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 4175
    .local v3, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_3

    .line 4176
    nop

    .line 4177
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    iput-object v4, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 4178
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput-object v4, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4181
    .end local v3    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :cond_3
    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3906
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3907
    .local v0, "t":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    return-object v0

    .line 3908
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .locals 1

    .line 3813
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 4146
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4147
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 4148
    return-object v0
.end method

.method getTaskOutset()I
    .locals 4

    .line 2441
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2442
    return v1

    .line 2444
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2445
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2446
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2450
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    .line 2451
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 2450
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 2454
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    return v1
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3758
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "includeOverlays"    # Z

    .line 1620
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3765
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .line 3707
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3708
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3772
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 21
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 4210
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v2, p0

    goto/16 :goto_9

    .line 4214
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->isTopActivityLaunchedBehind()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4215
    return v3

    .line 4218
    :cond_1
    const/4 v1, 0x0

    .line 4219
    .local v1, "gotRootSplitScreenTask":Z
    const/4 v4, 0x0

    .line 4220
    .local v4, "gotOpaqueSplitScreenPrimary":Z
    const/4 v5, 0x0

    .line 4221
    .local v5, "gotOpaqueSplitScreenSecondary":Z
    const/4 v6, 0x0

    .line 4222
    .local v6, "gotTranslucentFullscreen":Z
    const/4 v7, 0x0

    .line 4223
    .local v7, "gotTranslucentSplitScreenPrimary":Z
    const/4 v8, 0x0

    .line 4224
    .local v8, "gotTranslucentSplitScreenSecondary":Z
    const/4 v9, 0x1

    .line 4228
    .local v9, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 4229
    .local v10, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    .line 4230
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v11

    .line 4231
    .local v11, "parentVisibility":I
    if-ne v11, v2, :cond_2

    .line 4233
    return v2

    .line 4234
    :cond_2
    if-ne v11, v12, :cond_3

    .line 4237
    const/4 v6, 0x1

    .line 4241
    .end local v11    # "parentVisibility":I
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4242
    .local v11, "adjacentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v13

    .line 4243
    .local v13, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v14

    .line 4244
    .local v14, "isAssistantType":Z
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v12

    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_16

    .line 4245
    invoke-virtual {v10, v15}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v16

    .line 4246
    .local v16, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4247
    .local v3, "other":Lcom/android/server/wm/Task;
    if-nez v3, :cond_4

    move-object/from16 v2, p0

    goto/16 :goto_5

    .line 4249
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_5

    move/from16 v17, v12

    goto :goto_1

    :cond_5
    const/16 v17, 0x0

    .line 4250
    .local v17, "hasRunningActivities":Z
    :goto_1
    move-object/from16 v2, p0

    if-ne v3, v2, :cond_8

    .line 4253
    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v18

    if-nez v18, :cond_7

    .line 4254
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v18

    if-eqz v18, :cond_6

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v18, v12

    :goto_3
    move/from16 v9, v18

    .line 4255
    move/from16 v18, v1

    goto/16 :goto_6

    .line 4258
    :cond_8
    if-nez v17, :cond_9

    .line 4259
    goto/16 :goto_5

    .line 4262
    :cond_9
    move/from16 v18, v1

    .end local v1    # "gotRootSplitScreenTask":Z
    .local v18, "gotRootSplitScreenTask":Z
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    .line 4264
    .local v1, "otherWindowingMode":I
    if-ne v1, v12, :cond_b

    .line 4265
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 4267
    const/4 v6, 0x1

    .line 4268
    move/from16 v1, v18

    goto/16 :goto_5

    .line 4270
    :cond_a
    const/4 v12, 0x2

    return v12

    .line 4271
    :cond_b
    const/4 v12, 0x6

    if-ne v1, v12, :cond_d

    .line 4272
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 4273
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 4275
    const/4 v6, 0x1

    .line 4276
    move/from16 v1, v18

    goto :goto_5

    .line 4279
    :cond_c
    const/4 v12, 0x2

    return v12

    .line 4280
    :cond_d
    const/4 v12, 0x3

    if-ne v1, v12, :cond_e

    if-nez v4, :cond_e

    .line 4282
    const/16 v18, 0x1

    .line 4283
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    .line 4284
    xor-int/lit8 v20, v7, 0x1

    move/from16 v4, v20

    .line 4285
    if-ne v13, v12, :cond_f

    if-eqz v4, :cond_f

    .line 4288
    const/4 v12, 0x2

    return v12

    .line 4290
    :cond_e
    const/4 v12, 0x4

    if-ne v1, v12, :cond_f

    if-nez v5, :cond_f

    .line 4292
    const/16 v18, 0x1

    .line 4293
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 4294
    xor-int/lit8 v20, v8, 0x1

    move/from16 v5, v20

    .line 4295
    if-ne v13, v12, :cond_f

    if-eqz v5, :cond_f

    .line 4298
    const/4 v12, 0x2

    return v12

    .line 4301
    :cond_f
    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    .line 4304
    const/4 v12, 0x2

    return v12

    .line 4301
    :cond_10
    const/4 v12, 0x2

    .line 4306
    if-eqz v14, :cond_11

    if-eqz v18, :cond_11

    .line 4310
    return v12

    .line 4312
    :cond_11
    iget-object v12, v3, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_15

    .line 4313
    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 4314
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, v3, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    .line 4315
    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_4

    .line 4321
    :cond_12
    const/4 v12, 0x2

    return v12

    .line 4317
    :cond_13
    :goto_4
    const/4 v6, 0x1

    .line 4318
    move/from16 v1, v18

    goto :goto_5

    .line 4323
    :cond_14
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4244
    .end local v1    # "otherWindowingMode":I
    .end local v3    # "other":Lcom/android/server/wm/Task;
    .end local v16    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v17    # "hasRunningActivities":Z
    :cond_15
    move/from16 v1, v18

    .end local v18    # "gotRootSplitScreenTask":Z
    .local v1, "gotRootSplitScreenTask":Z
    :goto_5
    add-int/lit8 v15, v15, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v2, p0

    move/from16 v18, v1

    .line 4328
    .end local v1    # "gotRootSplitScreenTask":Z
    .end local v15    # "i":I
    .restart local v18    # "gotRootSplitScreenTask":Z
    :goto_6
    if-nez v9, :cond_17

    .line 4329
    const/4 v1, 0x2

    return v1

    .line 4333
    :cond_17
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_7

    .line 4352
    :pswitch_1
    if-eqz v8, :cond_18

    .line 4354
    const/4 v1, 0x1

    return v1

    .line 4352
    :cond_18
    const/4 v1, 0x1

    goto :goto_7

    .line 4346
    :pswitch_2
    const/4 v1, 0x1

    if-eqz v7, :cond_1a

    .line 4348
    return v1

    .line 4335
    :pswitch_3
    const/4 v1, 0x1

    if-nez v7, :cond_19

    if-eqz v8, :cond_1a

    .line 4342
    :cond_19
    const/4 v1, 0x2

    return v1

    .line 4360
    :cond_1a
    :goto_7
    if-eqz v6, :cond_1b

    move v3, v1

    goto :goto_8

    .line 4361
    :cond_1b
    const/4 v3, 0x0

    .line 4360
    :goto_8
    return v3

    .line 4210
    .end local v4    # "gotOpaqueSplitScreenPrimary":Z
    .end local v5    # "gotOpaqueSplitScreenSecondary":Z
    .end local v6    # "gotTranslucentFullscreen":Z
    .end local v7    # "gotTranslucentSplitScreenPrimary":Z
    .end local v8    # "gotTranslucentSplitScreenSecondary":Z
    .end local v9    # "shouldBeVisible":Z
    .end local v10    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "adjacentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/Task;>;"
    .end local v13    # "windowingMode":I
    .end local v14    # "isAssistantType":Z
    .end local v18    # "gotRootSplitScreenTask":Z
    :cond_1c
    move-object/from16 v2, p0

    .line 4211
    :goto_9
    const/4 v1, 0x2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method goToSleepIfPossible(Z)Z
    .locals 10
    .param p1, "shuttingDown"    # Z

    .line 5616
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5617
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 5618
    .local v0, "sleepInProgress":[I
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    invoke-direct {v3, p1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>(Z[I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5623
    aget v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 5626
    .end local v0    # "sleepInProgress":[I
    :cond_1
    const/4 v0, 0x1

    .line 5627
    .local v0, "shouldSleep":Z
    iget-object v3, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 5629
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x26c235ca

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5633
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    const-string v3, "sleep"

    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/android/server/wm/Task;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 5635
    const/4 v0, 0x0

    goto :goto_1

    .line 5636
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    .line 5638
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x3f8fb992

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5639
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 5642
    :cond_5
    :goto_1
    if-nez p1, :cond_7

    .line 5643
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->containsActivityFromRootTask(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5645
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v5, v3

    .local v5, "protoLogParam0":J
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x705a3c51

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v3, v7, v1, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5648
    .end local v5    # "protoLogParam0":J
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 5649
    const/4 v0, 0x0

    .line 5653
    :cond_7
    if-eqz v0, :cond_8

    .line 5654
    invoke-virtual {p0, v4, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5658
    :cond_8
    return v0
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 7271
    const-string v0, "handleAppDied"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    .line 7272
    const/4 v0, 0x0

    .line 7273
    .local v0, "isPausingDied":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_1

    .line 7274
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x197a7b00

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 7276
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7277
    const/4 v0, 0x1

    .line 7279
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_3

    .line 7280
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7281
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7283
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7285
    :cond_3
    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    .line 7757
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7758
    const/4 v0, 0x1

    return v0

    .line 7761
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 3

    .line 3306
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3307
    return v1

    .line 3314
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3315
    return v2

    .line 3321
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method hasWindowsAlive()Z
    .locals 1

    .line 3198
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysOnTop()Z
    .locals 1

    .line 5287
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysOnTopWhenVisible()Z
    .locals 1

    .line 5294
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method isAnimatingByRecents()Z
    .locals 2

    .line 3691
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 2

    .line 3559
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3560
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isClearingToReuseTask()Z
    .locals 1

    .line 2051
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method public isCompatible(II)Z
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 3281
    if-nez p2, :cond_0

    .line 3284
    const/4 p2, 0x1

    .line 3286
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isDragResizing()Z
    .locals 1

    .line 3485
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .locals 1

    .line 3576
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusableAndVisible()Z
    .locals 1

    .line 3785
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusedRootTaskOnDisplay()Z
    .locals 1

    .line 5924
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isForceHidden()Z
    .locals 1

    .line 5301
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isHomeOrRecentsRootTask()Z
    .locals 1

    .line 5467
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isInChangeTransition()Z
    .locals 1

    .line 2464
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4373
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4374
    return-object v0

    .line 4376
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4377
    return-object p1

    .line 4379
    :cond_1
    return-object v0
.end method

.method isLeafTask()Z
    .locals 3

    .line 3009
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3010
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3011
    const/4 v1, 0x0

    return v1

    .line 3009
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3014
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .line 5471
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOrganized()Z
    .locals 1

    .line 4954
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 4

    .line 3348
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3349
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3350
    .local v0, "forceResizable":Z
    :goto_0
    if-nez v0, :cond_1

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method isRootTask()Z
    .locals 1

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1352
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1355
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1356
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1358
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTaskId(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 4185
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTopActivityFocusable()Z
    .locals 2

    .line 3779
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3780
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_0

    .line 3781
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3780
    :goto_0
    return v1
.end method

.method isTopRootTaskInDisplayArea()Z
    .locals 2

    .line 5915
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5916
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3587
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3590
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 3591
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 3590
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3592
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3593
    .local v2, "opaque":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3594
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3588
    .end local v0    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v2    # "opaque":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_1
    return v1
.end method

.method isUidPresent(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1634
    sget-object v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1635
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1634
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1636
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1637
    .local v1, "isUidPresent":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1638
    return v1
.end method

.method public synthetic lambda$dismissPip$31$Task()V
    .locals 4

    .line 7530
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7531
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 7535
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7536
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7539
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 7540
    return-void
.end method

.method public synthetic lambda$dump$27$Task(ZLjava/io/PrintWriter;)V
    .locals 2
    .param p1, "needSep"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 7291
    if-eqz p1, :cond_0

    .line 7292
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  RootTask #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7295
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7296
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7294
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCreatedByOrganizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7300
    return-void
.end method

.method public synthetic lambda$dumpActivities$28$Task(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "printed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "printedHeader"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "needSep"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "header"    # Ljava/lang/Runnable;
    .param p6, "task"    # Lcom/android/server/wm/Task;

    .line 7336
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7337
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7338
    if-eqz p3, :cond_0

    .line 7339
    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7341
    :cond_0
    if-eqz p5, :cond_1

    .line 7342
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 7344
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7346
    :cond_2
    const-string v0, "    "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "* "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7347
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mBounds="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7348
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7349
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7350
    const-string v1, " mMinHeight="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7351
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 7352
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7353
    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7354
    iget-object v0, p6, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7356
    :cond_3
    const-string v0, "      "

    invoke-virtual {p6, p4, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7357
    return-void
.end method

.method public synthetic lambda$dumpActivities$29$Task(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZLcom/android/server/wm/Task;)V
    .locals 16
    .param p1, "printed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "printedHeader"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "needSep"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "header"    # Ljava/lang/Runnable;
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "fd"    # Ljava/io/FileDescriptor;
    .param p8, "dumpAll"    # Z
    .param p9, "dumpClient"    # Z
    .param p10, "task"    # Lcom/android/server/wm/Task;

    .line 7334
    const-string v0, "    "

    .line 7335
    .local v0, "prefix":Ljava/lang/String;
    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/Task;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V

    .line 7358
    .local v1, "headerPrinter":Ljava/lang/Runnable;
    if-nez p6, :cond_0

    .line 7361
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 7362
    const/4 v1, 0x0

    .line 7364
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 7367
    .local v14, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v2, v14}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object/from16 v15, p10

    invoke-virtual {v15, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 7369
    const/4 v7, 0x1

    xor-int/lit8 v8, p8, 0x1

    const/4 v11, 0x0

    const-string v5, "    "

    const-string v6, "Hist"

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move-object v4, v14

    move/from16 v9, p9

    move-object/from16 v10, p6

    move-object v12, v1

    move-object/from16 v13, p10

    invoke-static/range {v2 .. v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 7371
    return-void
.end method

.method public synthetic lambda$getNextFocusableTask$8$Task(ZLjava/lang/Object;)Z
    .locals 1
    .param p1, "allowFocusSelf"    # Z
    .param p2, "task"    # Ljava/lang/Object;

    .line 3042
    if-nez p1, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/Task;

    .line 3043
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3042
    :goto_0
    return v0
.end method

.method public synthetic lambda$inFrontOfStandardRootTask$24$Task([ZLcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "hasFound"    # [Z
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 6879
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6880
    return v2

    .line 6882
    :cond_0
    if-ne p2, p0, :cond_1

    .line 6884
    aput-boolean v2, p1, v0

    .line 6886
    :cond_1
    return v0
.end method

.method public synthetic lambda$performClearTask$5$Task(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1844
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1846
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1847
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1848
    return-void
.end method

.method public synthetic lambda$setWindowingMode$16$Task(IZ)V
    .locals 0
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 5330
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .line 1938
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1943
    :pswitch_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1942
    :pswitch_1
    const-string v0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object v0

    .line 1941
    :pswitch_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1940
    :pswitch_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1939
    :pswitch_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 3

    .line 3647
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method maybeApplyLastRecentsAnimationTransaction()V
    .locals 3

    .line 7652
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_1

    .line 7653
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 7654
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 7655
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7657
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 7661
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7663
    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7665
    .end local v0    # "tx":Landroid/view/SurfaceControl$Transaction;
    :cond_1
    return-void
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2405
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2406
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2407
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2408
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2409
    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5579
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x456f6dcc    # -0.00110299f

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5581
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    const-string v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    .line 5582
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 5583
    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "newTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1670
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1b9e2278

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1673
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1675
    return-void
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 6
    .param p1, "tr"    # Lcom/android/server/wm/Task;

    .line 7143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7147
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7148
    return v1

    .line 7154
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2

    .line 7155
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7156
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    .line 7157
    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7159
    :cond_1
    if-eqz v0, :cond_2

    .line 7161
    const/4 v3, 0x1

    .line 7163
    .local v3, "moveOK":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 7167
    goto :goto_0

    .line 7164
    :catch_0
    move-exception v4

    .line 7165
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 7166
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 7168
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v3, :cond_2

    .line 7169
    return v1

    .line 7178
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "moveOK":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7179
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 7180
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    .line 7182
    :cond_3
    const-string v0, "moveTaskToBackLocked"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7184
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 7185
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 7186
    return v3

    .line 7189
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v2, v4, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 7193
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7194
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7195
    .local v1, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_5

    if-eq v1, p0, :cond_5

    sget-object v2, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7198
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_1

    .line 7200
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 7202
    :goto_1
    return v3
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 7
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .line 7054
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 7055
    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .locals 6
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 7061
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7062
    .local v0, "topRootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7063
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 7065
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    const/4 v3, 0x3

    if-eq p1, p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7067
    if-eqz p2, :cond_1

    .line 7068
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_1

    .line 7070
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 7072
    :goto_1
    return-void

    .line 7075
    :cond_2
    if-eqz p4, :cond_3

    .line 7077
    sget-object v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 7078
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 7077
    invoke-static {v4, v5, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 7079
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7080
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 7087
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 7090
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 7091
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 7101
    :cond_4
    invoke-virtual {v4, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 7104
    if-eqz p2, :cond_5

    .line 7105
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 7106
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7107
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 7109
    :cond_5
    invoke-direct {p0, v3, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 7118
    :goto_2
    invoke-direct {p0, v2, p1, v1, p3}, Lcom/android/server/wm/Task;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7120
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 7123
    :cond_6
    if-nez p5, :cond_7

    .line 7124
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7127
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 7128
    nop

    .line 7129
    return-void

    .line 7092
    .restart local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    :goto_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 7093
    if-eqz v4, :cond_9

    .line 7094
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 7096
    :cond_9
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7127
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 7097
    return-void

    .line 7127
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 7128
    throw v1
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 5529
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5530
    return-void

    .line 5532
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5533
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_4

    .line 5536
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 5537
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5538
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v2, :cond_2

    .line 5539
    invoke-virtual {v2, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 5541
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5542
    .local v3, "lastFocusedTask":Lcom/android/server/wm/Task;
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5543
    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5544
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    .line 5545
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 5544
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    .line 5547
    .end local v3    # "lastFocusedTask":Lcom/android/server/wm/Task;
    :goto_1
    if-eqz p2, :cond_3

    if-eq p2, p0, :cond_3

    .line 5548
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    .line 5549
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 5550
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 5549
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    .line 5552
    :cond_3
    return-void

    .line 5554
    .end local v1    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "parentTask":Lcom/android/server/wm/Task;
    :cond_4
    if-eqz p2, :cond_6

    if-ne p2, p0, :cond_5

    goto :goto_2

    .line 5561
    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 5562
    return-void

    .line 5555
    :cond_6
    :goto_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 5475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5476
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 5483
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5484
    return-void

    .line 5487
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5489
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5495
    nop

    .line 5496
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5497
    .local v1, "topFullScreenRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    .line 5498
    nop

    .line 5499
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5500
    .local v3, "primarySplitScreenRootTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1

    .line 5501
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_1

    .line 5502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5507
    .end local v1    # "topFullScreenRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "primarySplitScreenRootTask":Lcom/android/server/wm/Task;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 5513
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 5514
    .local v1, "lastFocusedTask":Lcom/android/server/wm/Task;
    :goto_0
    if-nez p2, :cond_4

    .line 5515
    move-object p2, p0

    .line 5517
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5518
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5519
    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .locals 26
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "destGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;
    .param p6, "resultGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 6929
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 6932
    return v4

    .line 6934
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 6935
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6936
    return v4

    .line 6939
    :cond_1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6940
    .local v0, "parent":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    .line 6941
    .local v6, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 6942
    .local v7, "dest":Landroid/content/ComponentName;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    if-eq v8, v2, :cond_2

    if-eqz v7, :cond_2

    .line 6943
    new-instance v8, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {v8, v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v5, v8, v2, v4, v9}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 6947
    .local v8, "candidate":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_2

    .line 6948
    move-object v0, v8

    .line 6949
    const/4 v6, 0x1

    move v8, v6

    move-object v6, v0

    goto :goto_0

    .line 6955
    .end local v8    # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    move v8, v6

    move-object v6, v0

    .end local v0    # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v6, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v8, "foundParentInTask":Z
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6956
    .local v15, "controller":Landroid/app/IActivityController;
    const/4 v10, -0x1

    if-eqz v15, :cond_3

    .line 6957
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 6958
    .local v11, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v11, :cond_3

    .line 6960
    const/4 v12, 0x1

    .line 6962
    .local v12, "resumeOK":Z
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v15, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 6966
    goto :goto_1

    .line 6963
    :catch_0
    move-exception v0

    .line 6964
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6965
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 6968
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v12, :cond_3

    .line 6969
    return v4

    .line 6973
    .end local v11    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resumeOK":Z
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 6975
    .local v16, "origId":J
    new-array v14, v9, [I

    .line 6976
    .local v14, "resultCodeHolder":[I
    aput p4, v14, v4

    .line 6977
    new-array v13, v9, [Landroid/content/Intent;

    .line 6978
    .local v13, "resultDataHolder":[Landroid/content/Intent;
    aput-object p5, v13, v4

    .line 6979
    new-array v12, v9, [Lcom/android/server/uri/NeededUriGrants;

    .line 6980
    .local v12, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    aput-object p6, v12, v4

    .line 6981
    move-object v11, v6

    .line 6982
    .local v11, "finalParent":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v0, v11, v14, v13, v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v5, v0, v2, v9, v9}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 6992
    aget v18, v14, v4

    .line 6993
    .end local p4    # "resultCode":I
    .local v18, "resultCode":I
    aget-object v19, v13, v4

    .line 6995
    .end local p5    # "resultData":Landroid/content/Intent;
    .local v19, "resultData":Landroid/content/Intent;
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    .line 6996
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6997
    .local v4, "callingUid":I
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v15

    .end local v15    # "controller":Landroid/app/IActivityController;
    .local v21, "controller":Landroid/app/IActivityController;
    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 6998
    .local v15, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    .line 6999
    .local v22, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v15, v0, :cond_6

    const/4 v0, 0x2

    if-eq v15, v0, :cond_6

    if-eq v15, v9, :cond_6

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    goto/16 :goto_5

    .line 7006
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 7007
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7006
    move-object/from16 v25, v5

    const/16 v5, 0x400

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v25, "task":Lcom/android/server/wm/Task;
    :try_start_2
    invoke-interface {v0, v9, v5, v10}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 7010
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    const-string v9, "navigateUpTo"

    .line 7011
    invoke-virtual {v5, v3, v9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7012
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7013
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 7014
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7015
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7016
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7017
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 7018
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7019
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7020
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7021
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 7022
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7023
    .local v5, "res":I
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    move v0, v9

    .line 7026
    .end local v5    # "res":I
    .end local v8    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    move v8, v0

    goto :goto_4

    .line 7024
    .end local v0    # "foundParentInTask":Z
    .restart local v8    # "foundParentInTask":Z
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    :catch_2
    move-exception v0

    move-object/from16 v25, v5

    .line 7025
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_3
    const/4 v5, 0x0

    move v8, v5

    .line 7027
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    const/4 v0, 0x1

    const-string v5, "navigate-top"

    move-object v10, v6

    move-object v9, v11

    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .local v9, "finalParent":Lcom/android/server/wm/ActivityRecord;
    move/from16 v11, v18

    move-object/from16 v20, v12

    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v20, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v12, v19

    move-object/from16 v23, v13

    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .local v23, "resultDataHolder":[Landroid/content/Intent;
    move-object/from16 v13, p6

    move-object/from16 v24, v14

    .end local v14    # "resultCodeHolder":[I
    .local v24, "resultCodeHolder":[I
    move-object v14, v5

    move-object/from16 v5, v21

    move/from16 v21, v15

    .end local v15    # "parentLaunchMode":I
    .local v5, "controller":Landroid/app/IActivityController;
    .local v21, "parentLaunchMode":I
    move v15, v0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v10, p3

    goto :goto_6

    .line 6999
    .end local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v23    # "resultDataHolder":[Landroid/content/Intent;
    .end local v24    # "resultCodeHolder":[I
    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    .restart local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v13    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v14    # "resultCodeHolder":[I
    .restart local v15    # "parentLaunchMode":I
    .local v21, "controller":Landroid/app/IActivityController;
    :cond_6
    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    .line 7003
    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .end local v14    # "resultCodeHolder":[I
    .end local v15    # "parentLaunchMode":I
    .local v5, "controller":Landroid/app/IActivityController;
    .restart local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v21, "parentLaunchMode":I
    .restart local v23    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v24    # "resultCodeHolder":[I
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_5
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v10, p3

    invoke-virtual {v6, v4, v3, v10, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    goto :goto_6

    .line 6995
    .end local v4    # "callingUid":I
    .end local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v21    # "parentLaunchMode":I
    .end local v22    # "destIntentFlags":I
    .end local v23    # "resultDataHolder":[Landroid/content/Intent;
    .end local v24    # "resultCodeHolder":[I
    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    .restart local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v13    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v14    # "resultCodeHolder":[I
    .local v15, "controller":Landroid/app/IActivityController;
    :cond_7
    move-object/from16 v10, p3

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v5, v15

    .line 7031
    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .end local v14    # "resultCodeHolder":[I
    .end local v15    # "controller":Landroid/app/IActivityController;
    .local v5, "controller":Landroid/app/IActivityController;
    .restart local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v23    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v24    # "resultCodeHolder":[I
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7032
    return v8
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6019
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 6020
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 6021
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6024
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6025
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6026
    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6027
    iget-object v1, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6029
    if-eqz v0, :cond_2

    .line 6030
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 6031
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6033
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6036
    goto :goto_0

    .line 6035
    :catch_0
    move-exception v1

    .line 6040
    .end local v0    # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/Task$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 2220
    const-string v0, "onActivityStateChanged"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    .line 2221
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    if-eq p2, v0, :cond_0

    .line 2222
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2225
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    if-ne p2, v0, :cond_2

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2231
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2233
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2235
    :cond_2
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 7615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 7617
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7618
    return-void

    .line 7620
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7622
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 7625
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    .line 7626
    .local v0, "isTop":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 7627
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7628
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 7630
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2319
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 2320
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedTaskController;->isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2326
    return-void

    .line 2331
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2332
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2333
    return-void

    .line 2336
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2337
    .local v0, "prevWindowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    .line 2338
    .local v1, "prevIsAlwaysOnTop":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 2339
    .local v2, "prevRotation":I
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 2342
    .local v3, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 2344
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2346
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2347
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v4, :cond_2

    .line 2348
    return-void

    .line 2351
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 2352
    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V

    .line 2355
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v5, :cond_4

    .line 2356
    return-void

    .line 2360
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v5

    .line 2361
    .local v5, "overrideWindowingMode":I
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_6

    .line 2362
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2365
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 2366
    .local v6, "newRotation":I
    if-eq v2, v6, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    move v8, v7

    .line 2367
    .local v8, "rotationChanged":Z
    :goto_0
    if-eqz v8, :cond_6

    .line 2368
    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v2, v6, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 2369
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2373
    .end local v6    # "newRotation":I
    .end local v8    # "rotationChanged":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v6

    if-eq v1, v6, :cond_7

    .line 2377
    const v6, 0x7fffffff

    invoke-virtual {v4, v6, p0, v7}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2379
    :cond_7
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2
    .param p1, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 3291
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3292
    return v1

    .line 3297
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3298
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3299
    return v1

    .line 3301
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 3333
    .local v0, "isRootTask":Z
    if-nez v0, :cond_0

    .line 3334
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 3336
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3337
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3338
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 3339
    .local v1, "displayId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 3342
    .end local v1    # "displayId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3343
    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 3345
    :cond_3
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 6
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1383
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1384
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1385
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz p2, :cond_1

    .line 1386
    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1388
    .local v2, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_1
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 1390
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 1391
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1394
    :cond_3
    if-eqz v1, :cond_4

    .line 1404
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1405
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    .line 1404
    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1408
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1413
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5

    .line 1422
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1423
    iget-object v3, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1426
    :cond_5
    if-eqz p2, :cond_8

    .line 1427
    move-object v3, p2

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1428
    .local v3, "oldParentTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_6

    .line 1429
    sget-object v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 1431
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 1429
    invoke-static {v4, v3, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 1432
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1433
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1436
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_7

    .line 1437
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1440
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 1444
    .end local v3    # "oldParentTask":Lcom/android/server/wm/Task;
    :cond_8
    if-eqz p1, :cond_9

    .line 1447
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_9

    .line 1449
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v3, v4}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    goto :goto_3

    .line 1450
    :catch_0
    move-exception v0

    .line 1456
    :cond_9
    :goto_3
    if-nez p2, :cond_a

    if-eqz p1, :cond_a

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1464
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1467
    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .locals 1

    .line 5202
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5205
    :cond_0
    return-void
.end method

.method onSizeCompatActivityChanged()V
    .locals 1

    .line 5210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5211
    return-void
.end method

.method onSnapshotChanged(Landroid/window/TaskSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 3807
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/window/TaskSnapshot;)V

    .line 3808
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 3810
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 5196
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 5199
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6
    .param p1, "includeFinishing"    # Z

    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    .line 1808
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1809
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_0

    .line 1811
    return v3

    .line 1813
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1814
    goto :goto_1

    .line 1816
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1817
    return v3

    .line 1819
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1807
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1821
    .end local v1    # "i":I
    :cond_3
    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method performClearTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1840
    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1843
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1850
    :cond_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1857
    :goto_0
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1875
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 1878
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    .local v1, "result":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1881
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1882
    nop

    .line 1883
    return-object v1

    .line 1880
    .end local v1    # "result":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1881
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1882
    throw v1
.end method

.method performClearTaskLocked()V
    .locals 3

    .line 1863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1864
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 1866
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "clear-task-all"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1869
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1870
    nop

    .line 1871
    return-void

    .line 1868
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1869
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1870
    throw v1
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 3182
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 3183
    .local v0, "toTop":Z
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 3184
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3190
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3191
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    .line 3192
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    .line 3194
    :cond_1
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "position"    # I

    .line 3793
    if-nez p1, :cond_0

    .line 3794
    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    return-void

    .line 3799
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3800
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 7597
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 7598
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7597
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7599
    .local v0, "nextFocusableRootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 7600
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "includingParents"    # Z

    .line 7604
    if-nez p1, :cond_0

    .line 7606
    return-void

    .line 7609
    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7610
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 7611
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;

    .line 3789
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    .line 3790
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 7575
    if-nez p1, :cond_0

    .line 7577
    return-void

    .line 7580
    :cond_0
    if-ne p1, p0, :cond_1

    .line 7582
    const-string v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 7583
    return-void

    .line 7586
    :cond_1
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7588
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7589
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 7590
    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    .line 3972
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3973
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 3974
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3977
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3978
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3979
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 3982
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3985
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 3987
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3988
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 3990
    :cond_1
    return-void
.end method

.method preserveOrientationOnResize()Z
    .locals 2

    .line 3360
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1745
    const-string v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1746
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1751
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    return-void

    .line 1762
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1771
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1785
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_0

    .line 1788
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_5

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1794
    :cond_4
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 1796
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1798
    :cond_5
    :goto_0
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 973
    const-string v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method removeIfPossible(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    return-void

    .line 983
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 987
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 988
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_1

    .line 989
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskRemoved(I)V

    .line 992
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1
    return-void
.end method

.method removeImmediately()V
    .locals 1

    .line 3212
    const-string v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 3213
    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3217
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_0

    .line 3218
    return-void

    .line 3220
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 3222
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 3223
    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 3225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 3227
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 3228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 3229
    return-void
.end method

.method removeLaunchTickMessages()V
    .locals 1

    .line 7036
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7037
    return-void
.end method

.method removedFromRecents()V
    .locals 3

    .line 1553
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1554
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_0

    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1556
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1559
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1561
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 1563
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .locals 3
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3235
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 3237
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 3239
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3244
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 3245
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 1
    .param p1, "newParent"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "onTop"    # Z

    .line 7633
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 7634
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z
    .locals 21
    .param p1, "preferredRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "moveRootTaskMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 1100
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    iget-object v7, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1101
    .local v7, "supervisor":Lcom/android/server/wm/ActivityTaskSupervisor;
    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1102
    .local v8, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1103
    .local v9, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 1104
    .local v10, "sourceRootTask":Lcom/android/server/wm/Task;
    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-ne v3, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    invoke-virtual {v7, v1, v2, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v12

    .line 1106
    .local v12, "toRootTask":Lcom/android/server/wm/Task;
    if-ne v12, v10, :cond_1

    .line 1107
    return v11

    .line 1109
    :cond_1
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1110
    return v11

    .line 1113
    :cond_2
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v13

    .line 1114
    .local v13, "toRootTaskWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 1116
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v14, :cond_3

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    invoke-static {v15, v13}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    move v15, v11

    .line 1118
    .local v15, "mightReplaceWindow":Z
    :goto_1
    if-eqz v15, :cond_4

    .line 1127
    iget-object v11, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v9, v11, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 1130
    :cond_4
    iget-object v11, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1131
    const/4 v11, 0x1

    .line 1133
    .local v11, "kept":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v17, v16

    .line 1134
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v0, v17

    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v8, v10}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    .line 1177
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    move-object v2, v8

    move-object v8, v9

    move-object/from16 v9, p1

    goto/16 :goto_c

    .line 1135
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    const/4 v2, 0x0

    .line 1140
    .local v2, "wasFocused":Z
    :goto_2
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v17, :cond_6

    .line 1141
    move-object/from16 v17, v8

    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v17, "root":Lcom/android/server/wm/RootWindowContainer;
    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v8, v0, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    .line 1177
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "wasFocused":Z
    :catchall_1
    move-exception v0

    move-object v8, v9

    move-object/from16 v2, v17

    move-object/from16 v9, p1

    goto/16 :goto_c

    .end local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    :catchall_2
    move-exception v0

    move-object v2, v8

    move-object v8, v9

    move-object/from16 v9, p1

    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    goto/16 :goto_c

    .line 1140
    .end local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "wasFocused":Z
    .restart local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_6
    move-object/from16 v17, v8

    .line 1141
    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_7
    const/4 v8, 0x0

    .line 1143
    .local v8, "wasFront":Z
    :goto_3
    if-eqz v4, :cond_9

    move-object/from16 v18, v9

    const/4 v9, 0x1

    .end local v9    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v18, "windowManager":Lcom/android/server/wm/WindowManagerService;
    if-ne v4, v9, :cond_8

    if-nez v2, :cond_a

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .end local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v9    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_9
    move-object/from16 v18, v9

    .end local v9    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_a
    :goto_4
    const/4 v9, 0x1

    .line 1147
    .local v9, "moveRootTaskToFront":Z
    :goto_5
    :try_start_4
    invoke-virtual {v1, v12, v3, v9, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1149
    if-eqz p6, :cond_b

    .line 1151
    :try_start_5
    invoke-virtual {v7, v1, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_6

    .line 1177
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "wasFocused":Z
    .end local v8    # "wasFront":Z
    .end local v9    # "moveRootTaskToFront":Z
    :catchall_3
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v2, v17

    move-object/from16 v8, v18

    goto/16 :goto_c

    .line 1156
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "wasFocused":Z
    .restart local v8    # "wasFront":Z
    .restart local v9    # "moveRootTaskToFront":Z
    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    .line 1158
    invoke-virtual {v12, v6}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1162
    move/from16 v19, v2

    .end local v2    # "wasFocused":Z
    .local v19, "wasFocused":Z
    sget-object v2, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v0, v2, :cond_d

    .line 1163
    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_7

    .line 1156
    .end local v19    # "wasFocused":Z
    .restart local v2    # "wasFocused":Z
    :cond_c
    move/from16 v19, v2

    .line 1166
    .end local v2    # "wasFocused":Z
    .restart local v19    # "wasFocused":Z
    :cond_d
    :goto_7
    if-nez v5, :cond_e

    .line 1167
    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_e
    const/4 v2, 0x3

    if-ne v13, v2, :cond_f

    const/4 v2, 0x1

    if-ne v4, v2, :cond_f

    .line 1174
    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveRecentsRootTaskToFront(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1177
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "wasFront":Z
    .end local v9    # "moveRootTaskToFront":Z
    .end local v19    # "wasFocused":Z
    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1178
    nop

    .line 1180
    if-eqz v15, :cond_10

    .line 1184
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    xor-int/lit8 v2, v11, 0x1

    move-object/from16 v8, v18

    .end local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v8, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v8, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    goto :goto_8

    .line 1180
    .end local v8    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_10
    move-object/from16 v8, v18

    .line 1187
    .end local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_8
    if-nez p5, :cond_12

    .line 1190
    const/4 v0, 0x0

    if-nez v15, :cond_11

    const/4 v9, 0x1

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    :goto_9
    move-object/from16 v2, v17

    const/4 v3, 0x0

    .end local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v2, "root":Lcom/android/server/wm/RootWindowContainer;
    invoke-virtual {v2, v0, v3, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1191
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_a

    .line 1187
    .end local v2    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_12
    move-object/from16 v2, v17

    const/4 v3, 0x0

    .line 1195
    .end local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v2    # "root":Lcom/android/server/wm/RootWindowContainer;
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    iget-object v9, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1196
    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1195
    invoke-virtual {v7, v1, v0, v9, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 1198
    move-object/from16 v9, p1

    if-ne v9, v12, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    move v0, v3

    :goto_b
    return v0

    .line 1177
    .end local v2    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v8    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_4
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v2, v17

    move-object/from16 v8, v18

    .end local v17    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v18    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v2    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    goto :goto_c

    .end local v2    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v8, "root":Lcom/android/server/wm/RootWindowContainer;
    .local v9, "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_5
    move-exception v0

    move-object/from16 v20, v9

    move-object v9, v2

    move-object v2, v8

    move-object/from16 v8, v20

    .end local v9    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v2    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v8, "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_c
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1178
    throw v0
.end method

.method reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    .locals 9
    .param p1, "preferredRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "moveRootTaskMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 1074
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 4989
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4990
    return-void

    .line 4992
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4993
    return-void
.end method

.method resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3652
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 3653
    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "taskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 6753
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6755
    .local v0, "forceReset":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6758
    .local v1, "task":Lcom/android/server/wm/Task;
    sget-object v2, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 6760
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6761
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 6762
    .local v3, "newTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    .line 6763
    move-object p1, v3

    .line 6767
    .end local v3    # "newTop":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    if-eqz v2, :cond_2

    .line 6770
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 6773
    :cond_2
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .locals 4
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;
    .param p2, "preserveWindows"    # Z
    .param p3, "deferResume"    # Z

    .line 7215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7216
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 7220
    :try_start_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    const-class v3, Lcom/android/server/wm/Task;

    .line 7221
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 7220
    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 7223
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 7224
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 7226
    if-nez p3, :cond_0

    .line 7227
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/Task;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7230
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7231
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7232
    nop

    .line 7233
    return-void

    .line 7230
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7231
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7232
    throw v0
.end method

.method resize(ZZ)V
    .locals 1
    .param p1, "relayout"    # Z
    .param p2, "forced"    # Z

    .line 3325
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3326
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3328
    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z

    .line 1005
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1008
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1010
    .local v0, "forced":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1017
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :cond_1
    nop

    .line 1066
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1019
    return v1

    .line 1022
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1033
    const/4 v3, 0x0

    .line 1034
    .local v3, "updatedConfig":Z
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1035
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 1036
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    .line 1041
    :cond_3
    const/4 v1, 0x1

    .line 1042
    .local v1, "kept":Z
    if-eqz v3, :cond_4

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1044
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_4

    .line 1045
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    .line 1053
    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1054
    if-nez v1, :cond_4

    .line 1055
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1059
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 1061
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 1063
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    nop

    .line 1066
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1064
    return v1

    .line 1023
    .end local v1    # "kept":Z
    .end local v3    # "updatedConfig":Z
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/Task;
    .end local p1    # "bounds":Landroid/graphics/Rect;
    .end local p2    # "resizeMode":I
    .end local p3    # "preserveWindow":Z
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    .end local v0    # "forced":Z
    .restart local p0    # "this":Lcom/android/server/wm/Task;
    .restart local p1    # "bounds":Landroid/graphics/Rect;
    .restart local p2    # "resizeMode":I
    .restart local p3    # "preserveWindow":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1067
    throw v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2832
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2833
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2835
    nop

    .line 2836
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2837
    .local v0, "windowingMode":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2841
    .local v1, "parentWindowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 2842
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2843
    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v0, v2

    .line 2844
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2849
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2851
    if-eqz v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 2852
    .local v2, "candidateWindowingMode":I
    :goto_1
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v2, v4, :cond_3

    .line 2854
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2859
    .end local v2    # "candidateWindowingMode":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2860
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/Task;->resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 2862
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2863
    return-void
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7400
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7404
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    sget-object v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 7405
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 7404
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 7406
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7407
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 7409
    return-object v0
.end method

.method resumeNextFocusAfterReparent()V
    .locals 3

    .line 5457
    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 5459
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5462
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5464
    return-void
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 6137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    return v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 6
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "deferPause"    # Z

    .line 6080
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6082
    return v1

    .line 6085
    :cond_0
    const/4 v0, 0x0

    .line 6088
    .local v0, "someActivityResumed":Z
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 6090
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6091
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6092
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    move v0, v3

    goto :goto_2

    .line 6095
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 6096
    .local v3, "idx":I
    :goto_0
    if-ltz v3, :cond_5

    .line 6097
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 6098
    .local v3, "child":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6099
    move v3, v4

    goto :goto_0

    .line 6101
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 6102
    goto :goto_2

    .line 6105
    :cond_3
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 6110
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 6111
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    move v3, v5

    .end local v4    # "idx":I
    .local v5, "idx":I
    goto :goto_1

    .line 6110
    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    :cond_4
    move v3, v4

    .line 6113
    .end local v4    # "idx":I
    .local v3, "idx":I
    :goto_1
    goto :goto_0

    .line 6123
    .end local v3    # "idx":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 6124
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_7

    .line 6125
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6128
    .end local v2    # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 6129
    nop

    .line 6131
    return v0

    .line 6128
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 6129
    throw v2
.end method

.method returnsToHomeRootTask()Z
    .locals 5

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1364
    const v3, 0x10004000

    .line 1365
    .local v3, "returnHomeFlags":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v4, 0x10004000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1367
    .end local v3    # "returnHomeFlags":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1368
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1362
    .end local v0    # "bottomTask":Lcom/android/server/wm/Task;
    :cond_4
    :goto_0
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 930
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 931
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 932
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 933
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 942
    return-object p0
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 17
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "toTop"    # Z
    .param p6, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "options"    # Landroid/app/ActivityOptions;

    .line 7434
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->canReuseAsLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7437
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p8

    move-object v14, v0

    .local v0, "task":Lcom/android/server/wm/Task;
    goto :goto_1

    .line 7440
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_0
    if-eqz v8, :cond_1

    .line 7441
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    goto :goto_0

    .line 7442
    :cond_1
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    :goto_0
    nop

    .line 7443
    .local v0, "taskId":I
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 7444
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7445
    invoke-virtual {v1, v7}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7446
    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7447
    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7448
    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task$Builder;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7449
    move-object/from16 v12, p4

    invoke-static {v1, v12}, Lcom/android/server/wm/Task$Builder;->access$2600(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7450
    move/from16 v13, p5

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7451
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 7452
    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v14, v1

    .line 7455
    .end local v0    # "taskId":I
    .local v14, "task":Lcom/android/server/wm/Task;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    .line 7456
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    move v15, v0

    .line 7457
    .end local v0    # "displayId":I
    .local v15, "displayId":I
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 7458
    invoke-virtual {v0, v15}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v16

    .line 7459
    .local v16, "isLockscreenShown":Z
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 7460
    move-object v1, v14

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7461
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7462
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v16, :cond_3

    .line 7463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 7466
    :cond_3
    return-object v14
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "toTop"    # Z

    .line 7423
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method saveToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 5
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4573
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4574
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 4575
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4577
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4578
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 4579
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4585
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_3

    .line 4586
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4587
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4588
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v2, v0

    :cond_2
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 4590
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 4591
    if-eqz v0, :cond_4

    move-object v2, v0

    :cond_4
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4593
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4594
    const-string v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4596
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4597
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4598
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4599
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4600
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4601
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4602
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    const-string v0, "last_time_moved"

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4603
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4604
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 4605
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4607
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4608
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4610
    :cond_8
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4611
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4612
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4613
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4614
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_9
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4615
    nop

    .line 4616
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    move-object v2, v0

    .line 4615
    :goto_1
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4617
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4618
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4619
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    .line 4620
    nop

    .line 4621
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4620
    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4623
    :cond_b
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4624
    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4625
    const/4 v0, 0x1

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4627
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    if-eqz v0, :cond_c

    .line 4628
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 4629
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4628
    const-string v2, "last_snapshot_task_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4631
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    .line 4632
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 4633
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4632
    const-string v2, "last_snapshot_content_insets"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4635
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    if-eqz v0, :cond_e

    .line 4636
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 4637
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4636
    const-string v2, "last_snapshot_buffer_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4640
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    .line 4641
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4642
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4643
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4646
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_10

    .line 4647
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4648
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4649
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4652
    :cond_10
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4653
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4654
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4653
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 4655
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 4656
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 4657
    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_11

    .line 4660
    return-void

    .line 4658
    :cond_11
    throw v1
.end method

.method setActivityWindowingMode(I)V
    .locals 3
    .param p1, "windowingMode"    # I

    .line 5247
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5248
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5247
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 5249
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 5250
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 5251
    return-void
.end method

.method setAdjacentTask(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "adjacent"    # Lcom/android/server/wm/Task;

    .line 1566
    iput-object p1, p0, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    .line 1567
    iput-object p0, p1, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    .line 1568
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .locals 3
    .param p1, "alwaysOnTop"    # Z

    .line 7504
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 7505
    return-void

    .line 7507
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setAlwaysOnTop(Z)V

    .line 7514
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7515
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7517
    :cond_1
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3261
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3262
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0

    .line 3265
    :cond_0
    const/4 v0, 0x0

    .line 3266
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3267
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3268
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v1, :cond_2

    .line 3269
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 3272
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 3273
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3274
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    .line 3275
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "forceResize"    # Z

    .line 3248
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 3250
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3251
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 3252
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 3255
    :cond_0
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .locals 0
    .param p1, "canAffectSystemUiFlags"    # Z

    .line 3928
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 3929
    return-void
.end method

.method setDeferTaskAppear(Z)V
    .locals 0
    .param p1, "deferTaskAppear"    # Z

    .line 5010
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 5011
    if-nez p1, :cond_0

    .line 5012
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5014
    :cond_0
    return-void
.end method

.method setDragResizing(ZI)V
    .locals 3
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .line 3471
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_2

    .line 3473
    if-eqz p1, :cond_1

    .line 3474
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3475
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for root task id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3478
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3479
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3480
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 3482
    :cond_2
    return-void
.end method

.method setForceHidden(IZ)Z
    .locals 7
    .param p1, "flags"    # I
    .param p2, "set"    # Z

    .line 5258
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5259
    .local v0, "newFlags":I
    if-eqz p2, :cond_0

    .line 5260
    or-int/2addr v0, p1

    goto :goto_0

    .line 5262
    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    .line 5264
    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_1

    .line 5265
    const/4 v1, 0x0

    return v1

    .line 5268
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    .line 5269
    .local v1, "wasHidden":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    .line 5270
    .local v2, "wasVisible":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5271
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    .line 5272
    .local v3, "nowHidden":Z
    if-eq v1, v3, :cond_3

    .line 5273
    const-string v4, "setForceHidden"

    .line 5274
    .local v4, "reason":Ljava/lang/String;
    const-string v5, "setForceHidden"

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 5276
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 5277
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5279
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5282
    .end local v4    # "reason":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v4, 0x1

    return v4
.end method

.method setForceShowForAllUsers(Z)V
    .locals 0
    .param p1, "forceShowForAllUsers"    # Z

    .line 3554
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 3555
    return-void
.end method

.method setHasBeenVisible(Z)V
    .locals 2
    .param p1, "hasBeenVisible"    # Z

    .line 4996
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4997
    if-eqz p1, :cond_1

    .line 4998
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4999
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5000
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 5003
    :cond_1
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 3685
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3686
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 3687
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1234
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1251
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1252
    return-void

    .line 1245
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1246
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1247
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1248
    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_1
    if-eqz p3, :cond_3

    move-object v1, p3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1249
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2204
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 2207
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2209
    :goto_0
    return-void
.end method

.method setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "transaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p2, "overlay"    # Landroid/view/SurfaceControl;

    .line 7638
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-direct {v0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7639
    iput-object p2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7640
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1950
    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5219
    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 5220
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5221
    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1338
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1340
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_0

    .line 1342
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1343
    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1345
    :goto_0
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/wm/Task;

    .line 1377
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1378
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 1379
    return-void
.end method

.method setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "pausing"    # Lcom/android/server/wm/ActivityRecord;

    .line 1500
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1501
    return-void
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 7744
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    .line 7745
    return-void

    .line 7748
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7749
    return-void

    .line 7752
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedTaskController;->setActions(Ljava/util/List;)V

    .line 7753
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .line 7712
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    .line 7713
    return-void

    .line 7716
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7717
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    .line 7718
    return-void

    .line 7721
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7722
    return-void

    .line 7725
    :cond_2
    nop

    .line 7726
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;

    move-result-object v1

    .line 7728
    .local v1, "pinnedTaskController":Lcom/android/server/wm/PinnedTaskController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedTaskController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    .line 7729
    return-void

    .line 7735
    :cond_3
    nop

    .line 7736
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedTaskController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7737
    move v2, p1

    goto :goto_0

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 7735
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->setAspectRatio(F)V

    .line 7738
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/wm/Task;

    .line 1372
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1373
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 1374
    return-void
.end method

.method setResizeMode(I)V
    .locals 3
    .param p1, "resizeMode"    # I

    .line 995
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_0

    .line 996
    return-void

    .line 998
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 999
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1000
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1002
    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1517
    const-string v0, "setResumedActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 1519
    return-void

    .line 1525
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1526
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1527
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 2956
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 2957
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2958
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2959
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2960
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 2962
    :cond_0
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 5125
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 5128
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5129
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 3803
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3804
    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .locals 1
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 5055
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v0

    return v0
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .locals 4
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "skipTaskAppeared"    # Z

    .line 5060
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 5061
    return v1

    .line 5064
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5067
    .local v0, "prevOrganizer":Landroid/window/ITaskOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5069
    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 5071
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    .line 5072
    if-nez p2, :cond_3

    .line 5073
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_0

    .line 5077
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 5078
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_2

    .line 5079
    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeLaunchRootTask(Lcom/android/server/wm/Task;)V

    .line 5081
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 5082
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3

    .line 5083
    const-string v1, "setTaskOrganizer"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 5087
    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/Task;

    .line 1571
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1572
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1574
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1575
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1576
    .local v0, "nextRecents":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    .line 1577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_0

    .line 1580
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1582
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1583
    goto :goto_1

    .line 1585
    :cond_1
    move-object p1, v0

    .line 1586
    .end local v0    # "nextRecents":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 1587
    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1588
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1589
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1590
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 1
    .param p1, "windowingMode"    # I

    .line 5313
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5314
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 5315
    return-void

    .line 5318
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 5319
    return-void
.end method

.method setWindowingMode(IZ)V
    .locals 2
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 5330
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/Task;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 5332
    return-void
.end method

.method shouldAnimate()Z
    .locals 3

    .line 3669
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3670
    return v1

    .line 3675
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3676
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3677
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3678
    return v1

    .line 3680
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 4200
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldDeferRemoval()Z
    .locals 3

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3205
    return v1

    .line 3207
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method shouldIgnoreInput()Z
    .locals 2

    .line 7688
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7689
    return v1

    .line 7691
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7692
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7694
    return v1

    .line 7696
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeRootTaskWithLaunchBounds()Z
    .locals 1

    .line 5989
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .locals 2

    .line 7778
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7782
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7783
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    .line 7788
    const/4 v1, 0x0

    return v1

    .line 7791
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    .line 7795
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 7
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 6895
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-static {p2, v0, v1}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 6897
    .local v0, "affinity":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 6898
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6905
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6906
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6907
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6909
    invoke-direct {p0}, Lcom/android/server/wm/Task;->inFrontOfStandardRootTask()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6911
    return v1

    .line 6914
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 6915
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_2

    .line 6916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6917
    return v4

    .line 6919
    :cond_2
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6921
    return v1

    .line 6924
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_3
    return v4

    .line 6899
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_4
    :goto_0
    return v1
.end method

.method showForAllUsers()Z
    .locals 3

    .line 3542
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3543
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3544
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showSurfaceOnCreation()Z
    .locals 2

    .line 4974
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4977
    return v1

    .line 4980
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method showToCurrentUser()Z
    .locals 2

    .line 3549
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3550
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3549
    :goto_1
    return v0
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 21
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 6560
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 6561
    .local v11, "rTask":Lcom/android/server/wm/Task;
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v10, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    move v12, v3

    .line 6562
    .local v12, "allowMoveToFront":Z
    if-eq v11, v1, :cond_3

    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v0

    :goto_3
    move v13, v3

    .line 6564
    .local v13, "isOrhasTask":Z
    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_5

    if-eqz v12, :cond_5

    if-eqz v13, :cond_4

    if-eqz p3, :cond_5

    .line 6568
    :cond_4
    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 6570
    :cond_5
    const/4 v3, 0x0

    .line 6571
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v7, "here"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    if-eqz v13, :cond_7

    .line 6574
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 6575
    .local v15, "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v15, :cond_7

    .line 6579
    sget-boolean v16, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v16, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "protoLogParam1":Ljava/lang/String;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam2":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v16, v5, v2

    aput-object v17, v5, v0

    aput-object v6, v5, v4

    const v0, -0x6544f687

    invoke-static {v7, v0, v2, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6582
    .end local v6    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "protoLogParam0":Ljava/lang/String;
    .end local v17    # "protoLogParam1":Ljava/lang/String;
    :cond_6
    invoke-virtual {v11, v8}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 6583
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6584
    return-void

    .line 6592
    .end local v15    # "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    .line 6593
    .local v15, "activityTask":Lcom/android/server/wm/Task;
    if-ne v3, v15, :cond_8

    iget-object v6, v1, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    if-eq v6, v14, :cond_8

    .line 6594
    iget-object v6, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v2, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 6599
    :cond_8
    move-object v14, v15

    .line 6602
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .local v14, "task":Lcom/android/server/wm/Task;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_9

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v6, v5, v0

    const/16 v16, 0x2

    aput-object v4, v5, v16

    move-object/from16 v18, v3

    const v0, -0x6544f687

    const/4 v3, 0x0

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .local v18, "protoLogParam0":Ljava/lang/String;
    invoke-static {v7, v0, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6604
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    .end local v18    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    invoke-virtual {v14, v8}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 6608
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    if-eqz v12, :cond_1a

    .line 6609
    iget-object v7, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6613
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 6614
    invoke-virtual {v7, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6615
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 6617
    :cond_b
    const/4 v0, 0x6

    .line 6618
    .local v0, "transit":I
    if-eqz p3, :cond_e

    .line 6619
    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_c

    .line 6620
    const/16 v0, 0x10

    const/4 v3, 0x1

    goto :goto_5

    .line 6626
    :cond_c
    const/4 v3, 0x0

    invoke-direct {v1, v9, v3, v8, v10}, Lcom/android/server/wm/Task;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 6628
    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    goto :goto_4

    .line 6626
    :cond_d
    const/4 v3, 0x1

    .line 6630
    :goto_4
    const/16 v0, 0x8

    goto :goto_5

    .line 6618
    :cond_e
    const/4 v3, 0x1

    .line 6633
    :goto_5
    invoke-virtual {v7, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6634
    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6636
    .end local v0    # "transit":I
    :goto_6
    const/4 v0, 0x1

    .line 6637
    .local v0, "doShow":Z
    if-eqz p3, :cond_10

    .line 6643
    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    .line 6644
    invoke-virtual {v1, v8, v8}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 6645
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v8, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    move v3, v2

    :goto_7
    move v0, v3

    move/from16 v18, v0

    goto :goto_8

    .line 6647
    :cond_10
    if-eqz v10, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    .line 6649
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_8

    .line 6651
    :cond_11
    move/from16 v18, v0

    .end local v0    # "doShow":Z
    .local v18, "doShow":Z
    :goto_8
    iget-boolean v0, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_12

    .line 6655
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6656
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 6659
    iget-object v0, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto/16 :goto_d

    .line 6660
    :cond_12
    if-eqz v18, :cond_19

    .line 6665
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 6666
    .local v6, "prevTask":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6667
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_14

    .line 6670
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, v6, :cond_13

    .line 6671
    const/4 v0, 0x0

    move-object/from16 v16, v0

    goto :goto_9

    .line 6674
    :cond_13
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_14

    .line 6675
    const/4 v0, 0x0

    move-object/from16 v16, v0

    goto :goto_9

    .line 6681
    :cond_14
    move-object/from16 v16, v0

    .end local v0    # "prev":Lcom/android/server/wm/ActivityRecord;
    .local v16, "prev":Lcom/android/server/wm/ActivityRecord;
    :goto_9
    if-eqz v10, :cond_15

    .line 6682
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getSplashScreenThemeResName()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    .line 6683
    .local v3, "splashScreenThemeResName":Ljava/lang/String;
    :goto_a
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6685
    :cond_16
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6686
    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 6689
    move-object v5, v3

    goto :goto_b

    .line 6687
    :catch_0
    move-exception v0

    .line 6691
    :cond_17
    move-object v5, v3

    .end local v3    # "splashScreenThemeResName":Ljava/lang/String;
    .local v5, "splashScreenThemeResName":Ljava/lang/String;
    :goto_b
    const/4 v3, 0x0

    .line 6692
    .local v3, "splashScreenThemeResId":I
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 6694
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6695
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 6696
    .local v0, "packageContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6697
    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .line 6701
    .end local v0    # "packageContext":Landroid/content/Context;
    move v0, v3

    goto :goto_c

    .line 6698
    :catch_1
    move-exception v0

    .line 6704
    :cond_18
    move v0, v3

    .end local v3    # "splashScreenThemeResId":I
    .local v0, "splashScreenThemeResId":I
    :goto_c
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/Task;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v17

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, p3

    move-object/from16 v19, v5

    .end local v5    # "splashScreenThemeResName":Ljava/lang/String;
    .local v19, "splashScreenThemeResName":Ljava/lang/String;
    move/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .local v17, "prevTask":Lcom/android/server/wm/Task;
    move v6, v0

    move-object/from16 v20, v7

    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v20, "dc":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZILcom/android/server/wm/ActivityRecord;)V

    goto :goto_d

    .line 6660
    .end local v0    # "splashScreenThemeResId":I
    .end local v16    # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "prevTask":Lcom/android/server/wm/Task;
    .end local v19    # "splashScreenThemeResName":Ljava/lang/String;
    .end local v20    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_19
    move-object/from16 v20, v7

    .line 6707
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "doShow":Z
    :goto_d
    goto :goto_e

    .line 6710
    :cond_1a
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6712
    :goto_e
    return-void
.end method

.method final startPausingLocked(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uiSleeping"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .line 5671
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/Task;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 16
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "reason"    # Ljava/lang/String;

    .line 5690
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_1

    .line 5691
    new-array v0, v10, [I

    aput v11, v0, v11

    .line 5692
    .local v0, "pausing":[I
    new-instance v12, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;

    move-object v2, v12

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;-><init>(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5697
    aget v2, v0, v11

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    return v10

    .line 5700
    .end local v0    # "pausing":[I
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_2

    .line 5701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5702
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/Task$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5701
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5707
    invoke-virtual {v1, v11, v9}, Lcom/android/server/wm/Task;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 5710
    :cond_2
    iget-object v3, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5712
    .local v3, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_4

    .line 5713
    if-nez v9, :cond_3

    .line 5714
    const-string v0, "Trying to pause when nothing is resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5717
    :cond_3
    return v11

    .line 5720
    :cond_4
    if-ne v3, v9, :cond_5

    .line 5721
    const-string v0, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    return v11

    .line 5725
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x10a7dd47

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v11

    invoke-static {v5, v6, v11, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5726
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_6
    iput-object v3, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5727
    iput-object v3, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5728
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5729
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5731
    :cond_7
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->PAUSING:Lcom/android/server/wm/Task$ActivityState;

    const-string v5, "startPausingLocked"

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    .line 5732
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 5734
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 5736
    const/4 v0, 0x0

    .line 5737
    .local v0, "pauseImmediately":Z
    const/4 v5, 0x0

    .line 5738
    .local v5, "shouldAutoPip":Z
    if-eqz v9, :cond_a

    iget-object v6, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_a

    .line 5743
    if-eqz v3, :cond_8

    const-string v6, "shouldResumeWhilePausing"

    invoke-virtual {v3, v6, v8}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v10

    goto :goto_1

    :cond_8
    move v6, v11

    .line 5745
    .local v6, "lastResumedCanPip":Z
    :goto_1
    if-eqz v6, :cond_9

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v7}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5746
    const/4 v5, 0x1

    move v6, v5

    move v5, v0

    goto :goto_2

    .line 5747
    :cond_9
    if-nez v6, :cond_a

    .line 5748
    const/4 v0, 0x1

    move v6, v5

    move v5, v0

    goto :goto_2

    .line 5754
    .end local v6    # "lastResumedCanPip":Z
    :cond_a
    move v6, v5

    move v5, v0

    .end local v0    # "pauseImmediately":Z
    .local v5, "pauseImmediately":Z
    .local v6, "shouldAutoPip":Z
    :goto_2
    const/4 v7, 0x0

    .line 5755
    .local v7, "didAutoPip":Z
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5756
    if-eqz v6, :cond_c

    .line 5757
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x3bb1d3d1

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v11

    invoke-static {v2, v12, v11, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5760
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result v7

    .line 5761
    iput-object v4, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v15, p4

    goto :goto_5

    .line 5763
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x70e7ce00

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v0, v14, v11

    invoke-static {v12, v13, v11, v4, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5765
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_d
    :try_start_0
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "userLeaving="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p4

    :try_start_1
    invoke-static {v0, v12, v13, v14, v15}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v12, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v12

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v14, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, v3, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 5769
    invoke-static {v14, v8, v10, v5}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v10

    .line 5768
    invoke-virtual {v0, v12, v13, v10}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 5771
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v15, p4

    .line 5773
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "Exception thrown during pause"

    invoke-static {v2, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5774
    iput-object v4, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5775
    iput-object v4, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5776
    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5777
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 5780
    :cond_e
    move-object/from16 v15, p4

    iput-object v4, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5781
    iput-object v4, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5782
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5787
    :goto_5
    if-nez p2, :cond_f

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5788
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireLaunchWakelock()V

    .line 5792
    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_13

    if-nez v7, :cond_13

    .line 5797
    if-nez p2, :cond_10

    .line 5798
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_6

    .line 5800
    :cond_10
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x18e2c569

    move-object v10, v4

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v11, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5803
    :cond_11
    :goto_6
    if-eqz v5, :cond_12

    .line 5806
    invoke-virtual {v1, v11, v9}, Lcom/android/server/wm/Task;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 5807
    return v11

    .line 5810
    :cond_12
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 5811
    const/4 v2, 0x1

    return v2

    .line 5817
    :cond_13
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x6e1d4f8e

    move-object v10, v4

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v11, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5818
    :cond_14
    if-nez v9, :cond_15

    .line 5819
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5821
    :cond_15
    return v11
.end method

.method supportsFreeform()Z
    .locals 1

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1984
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_0

    .line 1985
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1984
    :goto_0
    return v0
.end method

.method supportsMultiWindow()Z
    .locals 1

    .line 1989
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 3
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1997
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1998
    return v1

    .line 2000
    :cond_0
    if-nez p1, :cond_1

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attached="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return v1

    .line 2006
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2008
    return v1

    .line 2011
    :cond_2
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(II)Z

    move-result v0

    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 2
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1965
    .local v0, "topTask":Lcom/android/server/wm/Task;
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1966
    invoke-direct {v0, p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1965
    :goto_0
    return v1
.end method

.method switchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 5567
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 5568
    return-void

    .line 5570
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 5572
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 5573
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5574
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5576
    :cond_1
    return-void
.end method

.method taskAppearedReady()Z
    .locals 3

    .line 5026
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5027
    return v1

    .line 5030
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_1

    .line 5031
    return v1

    .line 5034
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 5035
    return v2

    .line 5038
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 4489
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4490
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4493
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4494
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4495
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eq v1, p0, :cond_0

    .line 4496
    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4497
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4499
    :cond_0
    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4500
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4501
    const-string v3, " mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4502
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4503
    const-string v3, " translucent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4505
    const-string v2, " sz="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4506
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4507
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4510
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :cond_1
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4511
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4513
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4515
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4516
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4517
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4518
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4519
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4520
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4521
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4522
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4525
    :cond_4
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4527
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 4528
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1643
    const/4 v0, 0x0

    return-object v0

    .line 1645
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1651
    const/4 v0, 0x0

    return-object v0

    .line 1653
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3712
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 3746
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3747
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3746
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3748
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3749
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3750
    return-object v1
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "focusableOnly"    # Z

    .line 3717
    if-eqz p1, :cond_0

    .line 3718
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 3720
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1624
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1625
    const/4 v0, 0x0

    return-object v0

    .line 1627
    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3725
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3726
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3725
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3727
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3728
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3729
    return-object v1
.end method

.method touchActiveTime()V
    .locals 2

    .line 1224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 1225
    return-void
.end method

.method unhandledBackLocked()V
    .locals 3

    .line 7257
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7260
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 7261
    const/4 v1, 0x1

    const-string v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 7263
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 1

    .line 2141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2142
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2147
    :cond_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    .line 2926
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2927
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2928
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2929
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2932
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2934
    :cond_1
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2412
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2417
    :cond_0
    const/4 v0, 0x0

    .line 2418
    .local v0, "width":I
    const/4 v1, 0x0

    .line 2419
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2420
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2421
    .local v2, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2422
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v3

    .line 2425
    .local v3, "outset":I
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 2426
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    .line 2428
    .end local v2    # "taskBounds":Landroid/graphics/Rect;
    .end local v3    # "outset":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    .line 2429
    return-void

    .line 2431
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2432
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2433
    return-void

    .line 2413
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_3
    :goto_0
    return-void
.end method

.method updateTaskDescription()V
    .locals 5

    .line 2073
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2074
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    return-void

    .line 2076
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2077
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    sget-object v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 2079
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2077
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 2080
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 2081
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 2082
    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 2083
    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 2084
    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 2085
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2086
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 2086
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2090
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_1

    .line 2091
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2092
    .local v4, "t":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1

    .line 2093
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2097
    .end local v4    # "t":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2098
    return-void
.end method

.method updateTaskMovement(ZI)V
    .locals 3
    .param p1, "toTop"    # Z
    .param p2, "position"    # I

    .line 1530
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1532
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1533
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    .line 1535
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_1

    .line 1536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1538
    :cond_1
    return-void
.end method

.method updateTaskOrganizerState(Z)Z
    .locals 1
    .param p1, "forceUpdate"    # Z

    .line 5091
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(ZZ)Z

    move-result v0

    return v0
.end method

.method updateTaskOrganizerState(ZZ)Z
    .locals 5
    .param p1, "forceUpdate"    # Z
    .param p2, "skipTaskAppeared"    # Z

    .line 5105
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5108
    return v1

    .line 5110
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v0

    return v0

    .line 5114
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 5115
    .local v0, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 5116
    .local v2, "controller":Lcom/android/server/wm/TaskOrganizerController;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v3

    .line 5117
    .local v3, "organizer":Landroid/window/ITaskOrganizer;
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-ne v4, v3, :cond_2

    .line 5118
    return v1

    .line 5120
    :cond_2
    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v1

    return v1
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 7242
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7243
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7244
    return v1

    .line 7248
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 7249
    .local v2, "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    return v1

    .line 7251
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7253
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2487
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2488
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2489
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2490
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2491
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Task"

    .line 2490
    :goto_0
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2492
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2493
    return-void
.end method
