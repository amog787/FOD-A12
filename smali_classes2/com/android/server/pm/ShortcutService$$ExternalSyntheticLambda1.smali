.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;IILcom/android/internal/infra/AndroidFuture;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$3:Lcom/android/internal/infra/AndroidFuture;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$3:Lcom/android/internal/infra/AndroidFuture;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->lambda$getShortcuts$19$ShortcutService(IILcom/android/internal/infra/AndroidFuture;Ljava/lang/String;)V

    return-void
.end method
