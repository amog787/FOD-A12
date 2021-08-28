.class Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorState"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mLastChange:J

.field final synthetic this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V
    .locals 2
    .param p2, "enabled"    # Z

    .line 274
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-boolean p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mEnabled:Z

    .line 276
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mLastChange:J

    .line 277
    return-void
.end method

.method constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;ZJ)V
    .locals 2
    .param p2, "enabled"    # Z
    .param p3, "lastChange"    # J

    .line 279
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->this$1:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-boolean p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mEnabled:Z

    .line 281
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-gez p1, :cond_0

    .line 282
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mLastChange:J

    goto :goto_0

    .line 284
    :cond_0
    iput-wide p3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mLastChange:J

    .line 286
    :goto_0
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    .line 270
    iget-wide v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mLastChange:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;

    .line 270
    iget-boolean v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mEnabled:Z

    return v0
.end method


# virtual methods
.method setEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 289
    iget-boolean v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 290
    iput-boolean p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mEnabled:Z

    .line 291
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$SensorState;->mLastChange:J

    .line 292
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
