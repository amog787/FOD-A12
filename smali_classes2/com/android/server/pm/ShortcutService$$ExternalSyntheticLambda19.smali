.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:I

.field public final synthetic f$6:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/List;ILjava/lang/String;Ljava/lang/CharSequence;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$4:Ljava/lang/CharSequence;

    iput p6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$5:I

    iput-object p7, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$6:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$4:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$5:I

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$6:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->lambda$disableShortcuts$12$ShortcutService(Ljava/util/List;ILjava/lang/String;Ljava/lang/CharSequence;ILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
