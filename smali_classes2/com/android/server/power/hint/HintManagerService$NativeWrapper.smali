.class public Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCloseHintSession(J)V
.end method

.method private static native nativeCreateHintSession(II[IJ)J
.end method

.method private static native nativeGetHintSessionPreferredRate()J
.end method

.method private native nativeInit()V
.end method

.method private static native nativePauseHintSession(J)V
.end method

.method private static native nativeReportActualWorkDuration(J[J[J)V
.end method

.method private static native nativeResumeHintSession(J)V
.end method

.method private static native nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public halCloseHintSession(J)V
    .locals 0
    .param p1, "halPtr"    # J

    .line 168
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCloseHintSession(J)V

    .line 169
    return-void
.end method

.method public halCreateHintSession(II[IJ)J
    .locals 2
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "tids"    # [I
    .param p4, "durationNanos"    # J

    .line 153
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSession(II[IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public halGetHintSessionPreferredRate()J
    .locals 2

    .line 185
    invoke-static {}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeGetHintSessionPreferredRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public halInit()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeInit()V

    .line 149
    return-void
.end method

.method public halPauseHintSession(J)V
    .locals 0
    .param p1, "halPtr"    # J

    .line 158
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativePauseHintSession(J)V

    .line 159
    return-void
.end method

.method public halReportActualWorkDuration(J[J[J)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "actualDurationNanos"    # [J
    .param p4, "timeStampNanos"    # [J

    .line 179
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[J[J)V

    .line 181
    return-void
.end method

.method public halResumeHintSession(J)V
    .locals 0
    .param p1, "halPtr"    # J

    .line 163
    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeResumeHintSession(J)V

    .line 164
    return-void
.end method

.method public halUpdateTargetWorkDuration(JJ)V
    .locals 0
    .param p1, "halPtr"    # J
    .param p3, "targetDurationNanos"    # J

    .line 173
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeUpdateTargetWorkDuration(JJ)V

    .line 174
    return-void
.end method
