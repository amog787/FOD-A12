.class public Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.super Lcom/android/server/wm/LocalAnimationAdapter;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FadeAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FadeAnimationAdapter"
.end annotation


# instance fields
.field protected final mShow:Z

.field private final mToken:Lcom/android/server/wm/WindowToken;

.field final synthetic this$0:Lcom/android/server/wm/FadeAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FadeAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/FadeAnimationController;
    .param p2, "windowAnimationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p3, "surfaceAnimationRunner"    # Lcom/android/server/wm/SurfaceAnimationRunner;
    .param p4, "show"    # Z
    .param p5, "token"    # Lcom/android/server/wm/WindowToken;

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->this$0:Lcom/android/server/wm/FadeAnimationController;

    .line 148
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 149
    iput-boolean p4, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    .line 150
    iput-object p5, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mToken:Lcom/android/server/wm/WindowToken;

    .line 151
    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->this$0:Lcom/android/server/wm/FadeAnimationController;

    iget-object v0, v0, Lcom/android/server/wm/FadeAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
