.class Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V
    .locals 0
    .param p2, "eventType"    # I
    .param p3, "delay"    # I

    .line 1405
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    .line 1407
    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 1408
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1412
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->run()V

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1427
    :cond_0
    return-void
.end method

.method public isPending()Z
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post()V
    .locals 3

    .line 1415
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1416
    return-void
.end method

.method public run()V
    .locals 2

    .line 1431
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$400(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 1432
    return-void
.end method
