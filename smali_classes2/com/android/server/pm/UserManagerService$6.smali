.class Lcom/android/server/pm/UserManagerService$6;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 4219
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 0
    .param p1, "userIdParam"    # I

    .line 4226
    return-void
.end method

.method public userStopped(I)V
    .locals 1
    .param p1, "userIdParam"    # I

    .line 4222
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    .line 4223
    return-void
.end method
