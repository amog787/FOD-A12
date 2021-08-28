.class public final synthetic Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/RequestId;

.field public final synthetic f$1:Landroid/app/job/JobParameters;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/startop/iorap/RequestId;

    iput-object p2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iput-object p3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/startop/iorap/RequestId;

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->lambda$run$0(Lcom/google/android/startop/iorap/RequestId;Landroid/app/job/JobParameters;Ljava/lang/String;ZLcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
