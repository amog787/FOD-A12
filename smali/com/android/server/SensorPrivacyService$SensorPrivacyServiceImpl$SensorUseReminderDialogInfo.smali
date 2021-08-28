.class Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorUseReminderDialogInfo"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mTaskId:I

.field private mUser:Landroid/os/UserHandle;

.field final synthetic this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p2, "taskId"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    .line 305
    iput-object p3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mUser:Landroid/os/UserHandle;

    .line 306
    iput-object p4, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mPackageName:Ljava/lang/String;

    .line 307
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 298
    iget v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 298
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 298
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 311
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    if-nez v2, :cond_1

    goto :goto_1

    .line 313
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 314
    .local v2, "that":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
    iget v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    iget v4, v2, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mUser:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mUser:Landroid/os/UserHandle;

    .line 315
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mPackageName:Ljava/lang/String;

    .line 316
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 314
    :goto_0
    return v0

    .line 312
    .end local v2    # "that":Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 321
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mUser:Landroid/os/UserHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
