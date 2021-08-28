.class Lcom/android/server/wm/Task$Builder;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mActivityType:I

.field private mAffinity:Ljava/lang/String;

.field private mAffinityIntent:Landroid/content/Intent;

.field private mAskedCompatMode:Z

.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mAutoRemoveRecents:Z

.field private mCallingFeatureId:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mCreatedByOrganizer:Z

.field private mDeferTaskAppear:Z

.field private mEffectiveUid:I

.field private mHasBeenVisible:Z

.field private mIntent:Landroid/content/Intent;

.field private mLastDescription:Ljava/lang/String;

.field private mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field private mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private mLastTimeMoved:J

.field private mLaunchCookie:Landroid/os/IBinder;

.field private mLaunchFlags:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field private mNextAffiliateTaskId:I

.field private mOnTop:Z

.field private mOrigActivity:Landroid/content/ComponentName;

.field private mParent:Lcom/android/server/wm/WindowContainer;

.field private mPrevAffiliateTaskId:I

.field private mRealActivity:Landroid/content/ComponentName;

.field private mRealActivitySuspended:Z

.field private mRemoveWithTaskOrganizer:Z

.field private mResizeMode:I

.field private mRootAffinity:Ljava/lang/String;

.field private mRootWasReset:Z

.field private mSourceTask:Lcom/android/server/wm/Task;

.field private mSupportsPictureInPicture:Z

.field private mTaskAffiliation:I

.field private mTaskId:I

.field private mUserId:I

.field private mUserSetupComplete:Z

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7876
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 7877
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 7885
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 7886
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 7892
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 7912
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7913
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # I

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # J

    .line 7855
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task$Builder;->setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Landroid/app/ActivityManager$TaskDescription;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # I

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # I

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # I

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # I

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # I

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setResizeMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Task$Builder;
    .param p1, "x1"    # Z

    .line 7855
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAskedCompatMode(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "affinity"    # Ljava/lang/String;

    .line 8128
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    .line 8129
    return-object p0
.end method

.method private setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "affinityIntent"    # Landroid/content/Intent;

    .line 8123
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    .line 8124
    return-object p0
.end method

.method private setAskedCompatMode(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "askedCompatMode"    # Z

    .line 8118
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAskedCompatMode:Z

    .line 8119
    return-object p0
.end method

.method private setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "autoRemoveRecents"    # Z

    .line 8113
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    .line 8114
    return-object p0
.end method

.method private setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 8078
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 8079
    return-object p0
.end method

.method private setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 8043
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 8044
    return-object p0
.end method

.method private setCallingUid(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "callingUid"    # I

    .line 8038
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 8039
    return-object p0
.end method

.method private setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "lastDescription"    # Ljava/lang/String;

    .line 8088
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    .line 8089
    return-object p0
.end method

.method private setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "lastSnapshotData"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 8098
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 8099
    return-object p0
.end method

.method private setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 8093
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 8094
    return-object p0
.end method

.method private setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "lastTimeMoved"    # J

    .line 8028
    iput-wide p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 8029
    return-object p0
.end method

.method private setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "neverRelinquishIdentity"    # Z

    .line 8033
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 8034
    return-object p0
.end method

.method private setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "nextAffiliateTaskId"    # I

    .line 8073
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 8074
    return-object p0
.end method

.method private setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "origActivity"    # Landroid/content/ComponentName;

    .line 8103
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    .line 8104
    return-object p0
.end method

.method private setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "prevAffiliateTaskId"    # I

    .line 8068
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 8069
    return-object p0
.end method

.method private setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "realActivitySuspended"    # Z

    .line 8083
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    .line 8084
    return-object p0
.end method

.method private setResizeMode(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "resizeMode"    # I

    .line 8048
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 8049
    return-object p0
.end method

.method private setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "rootAffinity"    # Ljava/lang/String;

    .line 8133
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    .line 8134
    return-object p0
.end method

.method private setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "rootWasReset"    # Z

    .line 8108
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    .line 8109
    return-object p0
.end method

.method private setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "supportsPictureInPicture"    # Z

    .line 8053
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 8054
    return-object p0
.end method

.method private setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "taskAffiliation"    # I

    .line 8063
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 8064
    return-object p0
.end method

.method private setUserId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "userId"    # I

    .line 8023
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 8024
    return-object p0
.end method

.method private setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "userSetupComplete"    # Z

    .line 8058
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    .line 8059
    return-object p0
.end method

.method private setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 8138
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 8139
    return-object p0
.end method

.method private validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 9
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 8143
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-nez v0, :cond_0

    .line 8147
    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 8150
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    .line 8155
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8156
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_1

    goto :goto_0

    .line 8157
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8163
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    iget v8, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8172
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-ne v4, v1, :cond_3

    goto :goto_1

    .line 8174
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root task with pinned windowing mode cannot with non-standard activity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8179
    :cond_4
    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8181
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 8184
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 8185
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 8189
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_7

    .line 8190
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    iget-object v6, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    iget v8, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8192
    .local v0, "launchRootTask":Lcom/android/server/wm/Task;
    :goto_2
    if-eqz v0, :cond_8

    .line 8195
    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 8196
    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 8199
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 8200
    return-void

    .line 8168
    .end local v0    # "launchRootTask":Lcom/android/server/wm/Task;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create root task for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method build()Lcom/android/server/wm/Task;
    .locals 6

    .line 8203
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_0

    .line 8204
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task$Builder;->validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 8207
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    .line 8208
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 8209
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8212
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 8213
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 8214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 8215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 8216
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 8217
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 8218
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 8219
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 8220
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_2

    .line 8221
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoveWithTaskOranizer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 8224
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 8225
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-boolean v2, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    invoke-static {v1, v2}, Lcom/android/server/wm/Task;->access$2702(Lcom/android/server/wm/Task;Z)Z

    .line 8229
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v2, :cond_3

    .line 8230
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 8233
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_8

    .line 8234
    instance-of v3, v2, Lcom/android/server/wm/Task;

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz v3, :cond_6

    .line 8235
    check-cast v2, Lcom/android/server/wm/Task;

    .line 8236
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v4, v5

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/wm/Task;->access$2800(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V

    .line 8238
    .end local v2    # "parentTask":Lcom/android/server/wm/Task;
    goto :goto_3

    .line 8239
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 8244
    :cond_8
    :goto_3
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    if-eqz v2, :cond_9

    .line 8245
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 8247
    :cond_9
    return-object v1
.end method

.method buildInner()Lcom/android/server/wm/Task;
    .locals 44

    .line 8253
    move-object/from16 v0, p0

    new-instance v41, Lcom/android/server/wm/Task;

    move-object/from16 v1, v41

    iget-object v2, v0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iget-object v4, v0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    iget-boolean v10, v0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    iget-boolean v11, v0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    iget-boolean v12, v0, Lcom/android/server/wm/Task$Builder;->mAskedCompatMode:Z

    iget v13, v0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    iget v14, v0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    iget-object v15, v0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    iget-wide v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    move-object/from16 v20, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    move/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    move/from16 v30, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v35, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    move/from16 v36, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    move-object/from16 v37, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    move/from16 v39, v1

    const/16 v40, 0x0

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct/range {v1 .. v40}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task$1;)V

    return-object v41
.end method

.method getActivityType()I
    .locals 1

    .line 7981
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    return v0
.end method

.method getCreatedByOrganizer()Z
    .locals 1

    .line 7999
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    return v0
.end method

.method getWindowingMode()I
    .locals 1

    .line 7990
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    return v0
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 7961
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 7962
    return-object p0
.end method

.method setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .line 7966
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 7967
    return-object p0
.end method

.method setActivityType(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "activityType"    # I

    .line 7976
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 7977
    return-object p0
.end method

.method setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "createdByOrganizer"    # Z

    .line 7994
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 7995
    return-object p0
.end method

.method setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "defer"    # Z

    .line 8003
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    .line 8004
    return-object p0
.end method

.method setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "effectiveUid"    # I

    .line 7946
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    .line 7947
    return-object p0
.end method

.method setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "hasBeenVisible"    # Z

    .line 8018
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    .line 8019
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 7936
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 7937
    return-object p0
.end method

.method setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 8008
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    .line 8009
    return-object p0
.end method

.method setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "launchFlags"    # I

    .line 7926
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 7927
    return-object p0
.end method

.method setMinHeight(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "minHeight"    # I

    .line 7956
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 7957
    return-object p0
.end method

.method setMinWidth(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "minWidth"    # I

    .line 7951
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 7952
    return-object p0
.end method

.method setOnTop(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "onTop"    # Z

    .line 8013
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 8014
    return-object p0
.end method

.method setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wm/WindowContainer;

    .line 7916
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 7917
    return-object p0
.end method

.method setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "realActivity"    # Landroid/content/ComponentName;

    .line 7941
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    .line 7942
    return-object p0
.end method

.method setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "sourceTask"    # Lcom/android/server/wm/Task;

    .line 7921
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    .line 7922
    return-object p0
.end method

.method setTaskId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "taskId"    # I

    .line 7931
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 7932
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 7971
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 7972
    return-object p0
.end method

.method setWindowingMode(I)Lcom/android/server/wm/Task$Builder;
    .locals 0
    .param p1, "windowingMode"    # I

    .line 7985
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 7986
    return-object p0
.end method
