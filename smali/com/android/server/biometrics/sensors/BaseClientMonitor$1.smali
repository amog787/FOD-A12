.class Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;
.super Ljava/lang/Object;
.source "BaseClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 112
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 121
    const-string v0, "Biometrics/ClientMonitor"

    const-string/jumbo v1, "mCallback onClientFinished: called before set (should not happen)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 115
    const-string v0, "Biometrics/ClientMonitor"

    const-string/jumbo v1, "mCallback onClientStarted: called before set (should not happen)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
