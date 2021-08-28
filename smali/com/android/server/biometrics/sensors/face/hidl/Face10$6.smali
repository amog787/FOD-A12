.class Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field final synthetic val$targetUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 871
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->val$targetUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 875
    if-eqz p2, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->val$targetUserId:I

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->access$302(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)I

    .line 878
    :cond_0
    return-void
.end method
