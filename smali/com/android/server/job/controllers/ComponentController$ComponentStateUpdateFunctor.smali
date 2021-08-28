.class final Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;
.super Ljava/lang/Object;
.source "ComponentController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ComponentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ComponentStateUpdateFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field mChanged:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ComponentController;

    .line 228
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    .line 228
    invoke-direct {p0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChanged:Z

    .line 241
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 235
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChanged:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {v1, p1}, Lcom/android/server/job/controllers/ComponentController;->access$300(Lcom/android/server/job/controllers/ComponentController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChanged:Z

    .line 236
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
