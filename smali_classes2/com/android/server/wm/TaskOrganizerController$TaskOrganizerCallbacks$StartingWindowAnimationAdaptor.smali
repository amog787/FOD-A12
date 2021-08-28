.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingWindowAnimationAdaptor"
.end annotation


# instance fields
.field private mAnimationLeash:Landroid/view/SurfaceControl;

.field final synthetic this$1:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;->this$1:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/TaskOrganizerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    .param p2, "x1"    # Lcom/android/server/wm/TaskOrganizerController$1;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StartingWindowAnimationAdaptor mCapturedLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 180
    return-void
.end method

.method public getDurationHint()J
    .locals 2

    .line 163
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 2

    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    if-ne v0, p1, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 159
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 152
    return-void
.end method
