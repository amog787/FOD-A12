.class Lcom/android/server/wm/DisplayPolicy$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAppTransitionCancelled:Ljava/lang/Runnable;

.field private mAppTransitionFinished:Ljava/lang/Runnable;

.field private mAppTransitionPending:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 564
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$2;->val$displayId:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 566
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Ljava/lang/Runnable;

    .line 573
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Ljava/lang/Runnable;

    .line 580
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$$0$DisplayPolicy$2(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 567
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 568
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 569
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending(I)V

    .line 571
    :cond_0
    return-void
.end method

.method public synthetic lambda$$1$DisplayPolicy$2(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 575
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 576
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled(I)V

    .line 578
    :cond_0
    return-void
.end method

.method public synthetic lambda$$2$DisplayPolicy$2(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 582
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 583
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished(I)V

    .line 585
    :cond_0
    return-void
.end method

.method public synthetic lambda$onAppTransitionStartingLocked$3$DisplayPolicy$2(JJ)V
    .locals 7
    .param p1, "statusBarAnimationStartTime"    # J
    .param p3, "statusBarAnimationDuration"    # J

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 597
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    move-object v1, v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(IJJ)V

    .line 601
    :cond_0
    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .locals 2
    .param p1, "keyguardGoingAway"    # Z

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    return-void
.end method

.method public onAppTransitionStartingLocked(ZJJJ)I
    .locals 8
    .param p1, "keyguardGoingAway"    # Z
    .param p2, "duration"    # J
    .param p4, "statusBarAnimationStartTime"    # J
    .param p6, "statusBarAnimationDuration"    # J

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy$2;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 602
    const/4 v0, 0x0

    return v0
.end method
