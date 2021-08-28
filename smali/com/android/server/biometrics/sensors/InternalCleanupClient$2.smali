.class Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    .line 92
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 95
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove onClientFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-interface {v0, v1, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 97
    return-void
.end method
