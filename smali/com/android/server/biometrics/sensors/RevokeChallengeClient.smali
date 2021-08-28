.class public abstract Lcom/android/server/biometrics/sensors/RevokeChallengeClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "RevokeChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userId"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .param p6, "sensorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/android/server/biometrics/sensors/RevokeChallengeClient;, "Lcom/android/server/biometrics/sensors/RevokeChallengeClient<TT;>;"
    .local p2, "lazyDaemon":Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<TT;>;"
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    .line 33
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    .line 49
    .local p0, "this":Lcom/android/server/biometrics/sensors/RevokeChallengeClient;, "Lcom/android/server/biometrics/sensors/RevokeChallengeClient<TT;>;"
    const/16 v0, 0xb

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 42
    .local p0, "this":Lcom/android/server/biometrics/sensors/RevokeChallengeClient;, "Lcom/android/server/biometrics/sensors/RevokeChallengeClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/RevokeChallengeClient;->startHalOperation()V

    .line 45
    return-void
.end method

.method public unableToStart()V
    .locals 0

    .line 38
    .local p0, "this":Lcom/android/server/biometrics/sensors/RevokeChallengeClient;, "Lcom/android/server/biometrics/sensors/RevokeChallengeClient<TT;>;"
    return-void
.end method
