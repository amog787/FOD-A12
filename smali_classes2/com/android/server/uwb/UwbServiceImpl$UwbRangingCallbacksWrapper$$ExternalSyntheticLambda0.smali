.class public final synthetic Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;

    invoke-virtual {v0}, Lcom/android/server/uwb/UwbServiceImpl$UwbRangingCallbacksWrapper;->lambda$onRangingResult$0$UwbServiceImpl$UwbRangingCallbacksWrapper()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
