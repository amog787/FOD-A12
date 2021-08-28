.class public final synthetic Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Landroid/os/Bundle;

    check-cast p1, Landroid/os/IRemoteCallback;

    invoke-static {v0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->lambda$notifyClientsTranslationCapability$1(Landroid/os/Bundle;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method
