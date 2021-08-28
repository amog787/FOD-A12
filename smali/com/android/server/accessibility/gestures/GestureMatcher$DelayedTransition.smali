.class public final Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;
.super Ljava/lang/Object;
.source "GestureMatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/GestureMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DelayedTransition"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GestureMatcher.DelayedTransition"


# instance fields
.field mEvent:Landroid/view/MotionEvent;

.field mPolicyFlags:I

.field mRawEvent:Landroid/view/MotionEvent;

.field mTargetState:I

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;


# direct methods
.method protected constructor <init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 313
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->access$000(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->run()V

    .line 356
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 358
    :cond_0
    return-void
.end method

.method public isPending()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->access$000(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "delay"    # J
    .param p4, "event"    # Landroid/view/MotionEvent;
    .param p5, "rawEvent"    # Landroid/view/MotionEvent;
    .param p6, "policyFlags"    # I

    .line 335
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    .line 336
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    .line 337
    iput-object p5, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    .line 338
    iput p6, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mPolicyFlags:I

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->access$000(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void
.end method

.method public run()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->this$0:Lcom/android/server/accessibility/gestures/GestureMatcher;

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mTargetState:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mRawEvent:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->mPolicyFlags:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->access$100(Lcom/android/server/accessibility/gestures/GestureMatcher;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 370
    return-void
.end method
