.class final Lcom/android/server/wm/RootWindowContainer$SleepToken;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SleepToken"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mDisplayId:I

.field final mHashKey:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 3660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3661
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    .line 3662
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    .line 3663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    .line 3664
    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->access$400(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    .line 3665
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 3654
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 3654
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 3669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    .line 3670
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3669
    return-object v0
.end method
