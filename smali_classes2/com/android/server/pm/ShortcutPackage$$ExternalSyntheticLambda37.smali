.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;->f$1:Landroid/content/pm/ShortcutInfo;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$pushDynamicShortcut$2$ShortcutPackage(Landroid/content/pm/ShortcutInfo;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
