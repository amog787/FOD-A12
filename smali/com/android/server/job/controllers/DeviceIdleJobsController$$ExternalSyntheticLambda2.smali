.class public final synthetic Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->lambda$new$0$DeviceIdleJobsController(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    return p1
.end method
