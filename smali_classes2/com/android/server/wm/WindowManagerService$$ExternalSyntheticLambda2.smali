.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/policy/WindowManagerPolicy;

.field public final synthetic f$5:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

.field public final synthetic f$7:Ljava/util/function/Supplier;

.field public final synthetic f$8:Ljava/util/function/Supplier;

.field public final synthetic f$9:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/input/InputManagerService;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iput-object p8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$7:Ljava/util/function/Supplier;

    iput-object p9, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$8:Ljava/util/function/Supplier;

    iput-object p10, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$9:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/input/InputManagerService;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$7:Ljava/util/function/Supplier;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$8:Ljava/util/function/Supplier;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$9:Ljava/util/function/Function;

    invoke-static/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;->lambda$main$1(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method
