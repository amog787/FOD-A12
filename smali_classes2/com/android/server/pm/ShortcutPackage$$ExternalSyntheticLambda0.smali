.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$saveToAppSearch$39(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchBatchResult;)V

    return-void
.end method
