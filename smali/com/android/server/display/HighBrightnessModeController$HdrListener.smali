.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/HighBrightnessModeController;
    .param p2, "x1"    # Lcom/android/server/display/HighBrightnessModeController$1;

    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onHdrInfoChanged$0$HighBrightnessModeController$HdrListener(III)V
    .locals 4
    .param p1, "numberOfHdrLayers"    # I
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I

    .line 495
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    if-lez p1, :cond_0

    mul-int v1, p2, p3

    int-to-float v1, v1

    .line 497
    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->access$300(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v3}, Lcom/android/server/display/HighBrightnessModeController;->access$400(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 495
    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->access$202(Lcom/android/server/display/HighBrightnessModeController;Z)Z

    .line 500
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->access$500(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(F)V

    .line 501
    return-void
.end method

.method public onHdrInfoChanged(Landroid/os/IBinder;IIII)V
    .locals 2
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "numberOfHdrLayers"    # I
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .param p5, "flags"    # I

    .line 494
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->access$100(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method
