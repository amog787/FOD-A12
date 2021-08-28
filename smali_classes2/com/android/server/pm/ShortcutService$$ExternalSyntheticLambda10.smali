.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ParceledListSlice;Ljava/lang/String;IZLcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$1:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$4:Z

    iput-object p6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$5:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$1:Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$3:I

    iget-boolean v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$4:Z

    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;->f$5:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService;->lambda$setDynamicShortcuts$5$ShortcutService(Landroid/content/pm/ParceledListSlice;Ljava/lang/String;IZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
