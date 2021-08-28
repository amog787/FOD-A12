.class public final synthetic Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy;

.field public final synthetic f$1:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowManagerService;

    iput-wide p3, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$3:J

    iput-object p7, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$3:J

    iget-object v6, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    move-object v8, p1

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->lambda$startNonAppWindowAnimationsForKeyguardExit$0(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
