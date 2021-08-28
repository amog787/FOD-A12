.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic f$1:Lcom/android/server/display/color/TintController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/DisplayTransformManager;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/color/TintController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/color/TintController;

    invoke-static {v0, v1, p1}, Lcom/android/server/display/color/ColorDisplayService;->lambda$applyTint$0(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V

    return-void
.end method
