.class Lcom/android/server/display/DisplayPowerState$5;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .line 394
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$902(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 399
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1000(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1100(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 401
    const-wide/32 v0, 0x20000

    .line 402
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$1200()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 401
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$1302(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$5;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$800(Lcom/android/server/display/DisplayPowerState;)V

    .line 407
    return-void
.end method
