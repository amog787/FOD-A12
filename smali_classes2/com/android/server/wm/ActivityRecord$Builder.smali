.class Lcom/android/server/wm/ActivityRecord$Builder;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mCallerApp:Lcom/android/server/wm/WindowProcessController;

.field private mComponentSpecified:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCreateTime:J

.field private mIntent:Landroid/content/Intent;

.field private mLaunchedFromFeature:Ljava/lang/String;

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromPid:I

.field private mLaunchedFromUid:I

.field private mOptions:Landroid/app/ActivityOptions;

.field private mPersistentState:Landroid/os/PersistableBundle;

.field private mRequestCode:I

.field private mResolvedType:Ljava/lang/String;

.field private mResultTo:Lcom/android/server/wm/ActivityRecord;

.field private mResultWho:Ljava/lang/String;

.field private mRootVoiceInteraction:Z

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8889
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8890
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord$Builder;
    .param p1, "x1"    # Landroid/os/PersistableBundle;

    .line 8866
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$Builder;->setPersistentState(Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord$Builder;
    .param p1, "x1"    # Landroid/app/ActivityManager$TaskDescription;

    .line 8866
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$Builder;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityRecord$Builder;J)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord$Builder;
    .param p1, "x1"    # J

    .line 8866
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$Builder;->setCreateTime(J)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setCreateTime(J)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "createTime"    # J

    .line 8983
    iput-wide p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mCreateTime:J

    .line 8984
    return-object p0
.end method

.method private setPersistentState(Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "persistentState"    # Landroid/os/PersistableBundle;

    .line 8973
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mPersistentState:Landroid/os/PersistableBundle;

    .line 8974
    return-object p0
.end method

.method private setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 8978
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 8979
    return-object p0
.end method


# virtual methods
.method build()Lcom/android/server/wm/ActivityRecord;
    .locals 28

    .line 8988
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 8989
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    .line 8991
    :cond_0
    new-instance v1, Lcom/android/server/wm/ActivityRecord;

    move-object v2, v1

    iget-object v15, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v3, v15

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    iget v5, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPid:I

    iget v6, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromUid:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromFeature:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mIntent:Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mResolvedType:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v13, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultWho:Ljava/lang/String;

    move-object/from16 v16, v15

    iget v15, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mRequestCode:I

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v27, v2

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mComponentSpecified:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mRootVoiceInteraction:Z

    move/from16 v17, v2

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mPersistentState:Landroid/os/PersistableBundle;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v22, v1

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mCreateTime:J

    move-wide/from16 v23, v1

    const/16 v25, 0x0

    move-object/from16 v2, v27

    invoke-direct/range {v2 .. v25}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;JLcom/android/server/wm/ActivityRecord$1;)V

    return-object v26
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 8928
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 8929
    return-object p0
.end method

.method setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 8958
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mOptions:Landroid/app/ActivityOptions;

    .line 8959
    return-object p0
.end method

.method setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "caller"    # Lcom/android/server/wm/WindowProcessController;

    .line 8893
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 8894
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "componentSpecified"    # Z

    .line 8948
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mComponentSpecified:Z

    .line 8949
    return-object p0
.end method

.method setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 8963
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    .line 8964
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 8918
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mIntent:Landroid/content/Intent;

    .line 8919
    return-object p0
.end method

.method setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "fromFeature"    # Ljava/lang/String;

    .line 8913
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromFeature:Ljava/lang/String;

    .line 8914
    return-object p0
.end method

.method setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "fromPackage"    # Ljava/lang/String;

    .line 8908
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPackage:Ljava/lang/String;

    .line 8909
    return-object p0
.end method

.method setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "pid"    # I

    .line 8898
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPid:I

    .line 8899
    return-object p0
.end method

.method setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "uid"    # I

    .line 8903
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromUid:I

    .line 8904
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "reqCode"    # I

    .line 8943
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mRequestCode:I

    .line 8944
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "resolvedType"    # Ljava/lang/String;

    .line 8923
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mResolvedType:Ljava/lang/String;

    .line 8924
    return-object p0
.end method

.method setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "resultTo"    # Lcom/android/server/wm/ActivityRecord;

    .line 8933
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultTo:Lcom/android/server/wm/ActivityRecord;

    .line 8934
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 8938
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultWho:Ljava/lang/String;

    .line 8939
    return-object p0
.end method

.method setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "rootVoiceInteraction"    # Z

    .line 8953
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mRootVoiceInteraction:Z

    .line 8954
    return-object p0
.end method

.method setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 8968
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 8969
    return-object p0
.end method
