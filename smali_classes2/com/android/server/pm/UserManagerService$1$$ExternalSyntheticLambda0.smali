.class public final synthetic Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService$1;->lambda$onReceive$0$UserManagerService$1(ILandroid/content/IntentSender;)V

    return-void
.end method
