.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/IStopUserCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/IStopUserCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;->f$0:Landroid/app/IStopUserCallback;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;->f$0:Landroid/app/IStopUserCallback;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$5(Landroid/app/IStopUserCallback;I)V

    return-void
.end method
