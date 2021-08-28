.class public final synthetic Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;

.field public final synthetic f$1:Lcom/google/android/startop/iorap/RequestId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;Lcom/google/android/startop/iorap/RequestId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;

    iput-object p2, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/startop/iorap/RequestId;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/startop/iorap/RequestId;

    invoke-virtual {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService$1;->lambda$run$1$IorapForwardingService$IorapdJobService$1(Lcom/google/android/startop/iorap/RequestId;)Z

    move-result v0

    return v0
.end method
