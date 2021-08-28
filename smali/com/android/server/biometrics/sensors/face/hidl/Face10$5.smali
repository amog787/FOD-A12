.class Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGetFeature$13$Face10(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

.field final synthetic val$feature:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 723
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$feature:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    iput p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 4
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 727
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$feature:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getValue()Z

    move-result v0

    .line 729
    .local v0, "settingsValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating attention value for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->access$200(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$userId:I

    const-string v3, "face_unlock_attention_required"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 735
    .end local v0    # "settingsValue":I
    :cond_0
    return-void
.end method
