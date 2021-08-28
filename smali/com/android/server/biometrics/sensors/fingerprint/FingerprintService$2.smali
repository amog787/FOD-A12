.class Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;
.super Landroid/os/FileObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

.field final synthetic val$xiaomiFodReadyPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "path",
            "mask",
            "val$xiaomiFodReadyPath"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->val$xiaomiFodReadyPath:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "path"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->val$xiaomiFodReadyPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$8000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "currentUiReady":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New fod ready is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amog787"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$8004(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;->show()V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$8004(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;->hide()V

    .line 31
    :goto_0
    return-void
.end method
