.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/List;ILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$4:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;->f$4:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->lambda$removeLongLivedShortcuts$17$ShortcutService(Ljava/util/List;ILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
