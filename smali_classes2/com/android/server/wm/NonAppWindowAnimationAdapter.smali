.class Lcom/android/server/wm/NonAppWindowAnimationAdapter;
.super Ljava/lang/Object;
.source "NonAppWindowAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mDurationHint:J

.field private mLastAnimationType:I

.field private mStatusBarTransitionDelay:J

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field private final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;JJ)V
    .locals 0
    .param p1, "w"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "durationHint"    # J
    .param p4, "statusBarTransitionDelay"    # J

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 62
    iput-wide p2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    .line 63
    iput-wide p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 64
    return-void
.end method

.method static synthetic lambda$startNonAppWindowAnimationsForKeyguardExit$0(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "durationHint"    # J
    .param p4, "statusBarTransitionDelay"    # J
    .param p6, "adaptersOut"    # Ljava/util/ArrayList;
    .param p7, "targets"    # Ljava/util/ArrayList;
    .param p8, "nonAppWindow"    # Lcom/android/server/wm/WindowState;

    .line 103
    iget-object v0, p8, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    invoke-interface {p0, p8}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p8, v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    move-object v1, v0

    move-object v2, p8

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    .line 108
    .local v0, "nonAppAdapter":Lcom/android/server/wm/NonAppWindowAnimationAdapter;
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p8, v1, v0, v2, v3}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 111
    invoke-virtual {v0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "nonAppAdapter":Lcom/android/server/wm/NonAppWindowAnimationAdapter;
    :cond_0
    return-void
.end method

.method private static startNavigationBarWindowAnimation(Lcom/android/server/wm/DisplayContent;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "durationHint"    # J
    .param p3, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    .local p6, "adaptersOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/NonAppWindowAnimationAdapter;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 126
    .local v0, "navWindow":Lcom/android/server/wm/WindowState;
    new-instance v7, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object v1, v7

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    .line 128
    .local v1, "nonAppAdapter":Lcom/android/server/wm/NonAppWindowAnimationAdapter;
    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 131
    invoke-virtual {v1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method static startNonAppWindowAnimations(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;IJJLjava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .locals 10
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "transit"    # I
    .param p3, "durationHint"    # J
    .param p5, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "IJJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 70
    .local p7, "adaptersOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/NonAppWindowAnimationAdapter;>;"
    move v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 77
    :cond_1
    nop

    .line 78
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    if-nez v2, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getFadeRotationAnimationController()Lcom/android/server/wm/FadeRotationAnimationController;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    .line 81
    .local v9, "shouldAttachNavBarToApp":Z
    if-eqz v9, :cond_4

    .line 82
    move-object v2, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, v1

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNavigationBarWindowAnimation(Lcom/android/server/wm/DisplayContent;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 73
    .end local v9    # "shouldAttachNavBarToApp":Z
    :cond_3
    :goto_1
    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, v1

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNonAppWindowAnimationsForKeyguardExit(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 87
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    return-object v2
.end method

.method private static startNonAppWindowAnimationsForKeyguardExit(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "durationHint"    # J
    .param p3, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    .local p6, "adaptersOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/NonAppWindowAnimationAdapter;>;"
    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 101
    .local v10, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-object v11, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v12, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 114
    return-void
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 19

    .line 138
    move-object/from16 v0, p0

    new-instance v15, Landroid/view/RemoteAnimationTarget;

    move-object v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    new-instance v2, Landroid/graphics/Rect;

    move-object v6, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 139
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v8

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 140
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastSurfacePosition()Landroid/graphics/Point;

    move-result-object v9

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 141
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 142
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v17

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 143
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 199
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    const-string v0, "windowContainer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 214
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 215
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_0

    .line 216
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 218
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 219
    return-void
.end method

.method public getDurationHint()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    return-wide v0
.end method

.method getLastAnimationType()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    return v0
.end method

.method getLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 4

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getWindowContainer()Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 5
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 194
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x44c5d0ec

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 5
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 149
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x772f64fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 151
    iput-object p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 152
    iput p3, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    .line 153
    return-void
.end method
