.class Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCallbackId:I

.field final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

.field final synthetic val$reportedRotation:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 1194
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    invoke-static {p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->access$300(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    return-void
.end method

.method private finalizeRotationIfFresh(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 1208
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->access$300(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->access$400(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->access$500(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    goto :goto_0

    .line 1212
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    .line 1215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-static {v2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->access$300(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1212
    const-string v1, "An outdated callback received [%s vs. %s]. Ignoring it."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrientationListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "error"    # I

    .line 1203
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    .line 1204
    return-void
.end method

.method public onSuccess(I)V
    .locals 0
    .param p1, "result"    # I

    .line 1198
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    .line 1199
    return-void
.end method
