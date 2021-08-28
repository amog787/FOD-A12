.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/IntentFilter;

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;ILandroid/content/IntentFilter;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$2:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$2:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->lambda$getShareTargets$21$ShortcutService(ILandroid/content/IntentFilter;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
