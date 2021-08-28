.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$1:Landroid/content/pm/ShortcutInfo;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$4:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$1:Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$4:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->lambda$createShortcutResultIntent$11$ShortcutService(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
