.class public abstract Lcom/android/server/wm/ActivityTaskManagerInternal;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;,
        Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;,
        Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;,
        Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;
    }
.end annotation


# static fields
.field public static final APP_TRANSITION_RECENTS_ANIM:I = 0x5

.field public static final APP_TRANSITION_SNAPSHOT:I = 0x4

.field public static final APP_TRANSITION_SPLASH_SCREEN:I = 0x1

.field public static final APP_TRANSITION_TIMEOUT:I = 0x3

.field public static final APP_TRANSITION_WINDOWS_DRAWN:I = 0x2

.field public static final ASSIST_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final ASSIST_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final ASSIST_KEY_DATA:Ljava/lang/String; = "data"

.field public static final ASSIST_KEY_RECEIVER_EXTRAS:Ljava/lang/String; = "receiverExtras"

.field public static final ASSIST_KEY_STRUCTURE:Ljava/lang/String; = "structure"

.field public static final ASSIST_TASK_ID:Ljava/lang/String; = "taskId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract canCloseSystemDialogs(II)Z
.end method

.method public abstract canGcNow()Z
.end method

.method public abstract canShowErrorDialogs()Z
.end method

.method public abstract checkCanCloseSystemDialogs(IILjava/lang/String;)Z
.end method

.method public abstract cleanupDisabledPackageComponents(Ljava/lang/String;Ljava/util/Set;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract cleanupRecentTasksForUser(I)V
.end method

.method public abstract clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract clearLockedTasks(Ljava/lang/String;)V
.end method

.method public abstract clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearSavedANRState()V
.end method

.method public abstract closeSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
.end method

.method public abstract createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
.end method

.method public abstract createSleepTokenAcquirer(Ljava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
.end method

.method public abstract dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZ)Z
.end method

.method public abstract dumpForOom(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpForProcesses(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IZZI)Z
.end method

.method public abstract enableScreenAfterBoot(Z)V
.end method

.method public abstract finishHeavyWeightApp()V
.end method

.method public abstract finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
.end method

.method public abstract flushRecentTasks()V
.end method

.method public abstract getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;
.end method

.method public abstract getHomeActivityForUser(I)Landroid/content/ComponentName;
.end method

.method public abstract getHomeIntent()Landroid/content/Intent;
.end method

.method public abstract getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
.end method

.method public abstract getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
.end method

.method public abstract getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;
.end method

.method public abstract getTaskSnapshotBlocking(IZ)Landroid/window/TaskSnapshot;
.end method

.method public abstract getTopActivityForTask(I)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.end method

.method public abstract getTopApp()Lcom/android/server/wm/WindowProcessController;
.end method

.method public abstract getTopProcessState()I
.end method

.method public abstract getTopVisibleActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
.end method

.method public abstract handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z
.end method

.method public abstract handleAppDied(Lcom/android/server/wm/WindowProcessController;ZLjava/lang/Runnable;)V
.end method

.method public abstract hasResumedActivity(I)Z
.end method

.method public abstract hasSystemAlertWindowPermission(IILjava/lang/String;)Z
.end method

.method public abstract isBaseOfLockedTask(Ljava/lang/String;)Z
.end method

.method public abstract isCallerRecents(I)Z
.end method

.method public abstract isDreaming()Z
.end method

.method public abstract isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z
.end method

.method public abstract isGetTasksAllowed(Ljava/lang/String;II)Z
.end method

.method public abstract isRecentsComponentHomeActivity(I)Z
.end method

.method public abstract isShuttingDown()Z
.end method

.method public abstract isSleeping()Z
.end method

.method public abstract isUidForeground(I)Z
.end method

.method public abstract loadRecentTasksForUser(I)V
.end method

.method public abstract notifyActiveVoiceInteractionServiceChanged(Landroid/content/ComponentName;)V
.end method

.method public abstract notifyDreamStateChanged(Z)V
.end method

.method public abstract notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V
.end method

.method public abstract notifyKeyguardTrustedChanged()V
.end method

.method public abstract notifyLockedProfile(II)V
.end method

.method public abstract onCleanUpApplicationRecord(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onForceStopPackage(Ljava/lang/String;ZZI)Z
.end method

.method public abstract onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
.end method

.method public abstract onPackageAdded(Ljava/lang/String;Z)V
.end method

.method public abstract onPackageDataCleared(Ljava/lang/String;)V
.end method

.method public abstract onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract onPackageUninstalled(Ljava/lang/String;)V
.end method

.method public abstract onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
.end method

.method public abstract onProcessAdded(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onProcessMapped(ILcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onProcessRemoved(Ljava/lang/String;I)V
.end method

.method public abstract onProcessUnMapped(I)V
.end method

.method public abstract onUidActive(II)V
.end method

.method public abstract onUidAddedToPendingTempAllowlist(ILjava/lang/String;)V
.end method

.method public abstract onUidInactive(I)V
.end method

.method public abstract onUidProcStateChanged(II)V
.end method

.method public abstract onUidRemovedFromPendingTempAllowlist(I)V
.end method

.method public abstract onUserStopped(I)V
.end method

.method public abstract preBindApplication(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V
.end method

.method public abstract removeRecentTasksByPackageName(Ljava/lang/String;I)V
.end method

.method public abstract removeUser(I)V
.end method

.method public abstract resumeTopActivities(Z)V
.end method

.method public abstract saveANRState(Ljava/lang/String;)V
.end method

.method public abstract scheduleDestroyAllActivities(Ljava/lang/String;)V
.end method

.method public abstract sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
.end method

.method public abstract setAccessibilityServiceUids(Landroid/util/IntArray;)V
.end method

.method public abstract setAllowAppSwitches(Ljava/lang/String;II)V
.end method

.method public abstract setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V
.end method

.method public abstract setCompanionAppUids(ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDeviceOwnerUid(I)V
.end method

.method public abstract setFocusedActivity(Landroid/os/IBinder;)V
.end method

.method public abstract setProfileApp(Ljava/lang/String;)V
.end method

.method public abstract setProfileProc(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract setProfilerInfo(Landroid/app/ProfilerInfo;)V
.end method

.method public abstract setVr2dDisplayId(I)V
.end method

.method public abstract showStrictModeViolationDialog()Z
.end method

.method public abstract showSystemReadyErrorDialogsIfNeeded()V
.end method

.method public abstract shuttingDown(ZI)Z
.end method

.method public abstract startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
.end method

.method public abstract startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
.end method

.method public abstract startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I
.end method

.method public abstract startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
.end method

.method public abstract startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract startHomeActivity(ILjava/lang/String;)Z
.end method

.method public abstract startHomeOnAllDisplays(ILjava/lang/String;)Z
.end method

.method public abstract startHomeOnDisplay(ILjava/lang/String;IZZ)Z
.end method

.method public abstract switchUser(ILcom/android/server/am/UserState;)Z
.end method

.method public abstract updateTopComponentForFactoryTest()V
.end method

.method public abstract updateUserConfiguration()V
.end method

.method public abstract writeActivitiesToProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract writeProcessesToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IZ)V
.end method
