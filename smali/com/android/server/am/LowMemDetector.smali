.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LowMemDetector$LowMemThread;,
        Lcom/android/server/am/LowMemDetector$MemFactor;
    }
.end annotation


# static fields
.field public static final ADJ_MEM_FACTOR_NOTHING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LowMemDetector"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAvailable:Z

.field private final mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

.field private mPressureState:I

.field private final mPressureStateLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 62
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 63
    new-instance v1, Lcom/android/server/am/LowMemDetector$LowMemThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$1;)V

    iput-object v1, p0, Lcom/android/server/am/LowMemDetector;->mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

    .line 64
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 68
    invoke-virtual {v1}, Lcom/android/server/am/LowMemDetector$LowMemThread;->start()V

    .line 70
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/LowMemDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;

    .line 37
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/LowMemDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;

    .line 37
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/am/LowMemDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    return p1
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method


# virtual methods
.method public getMemFactor()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget v1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v0

    return v1

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return v0
.end method
