.class public final synthetic Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/infra/AbstractMasterSystemService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->lambda$new$1$AbstractMasterSystemService(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
