.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final synthetic f$0:Landroid/os/IUserRestrictionsListener;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IUserRestrictionsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/os/IUserRestrictionsListener;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/os/IUserRestrictionsListener;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$addUserRestrictionsListener$1(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
