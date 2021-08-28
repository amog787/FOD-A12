.class public final synthetic Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iput p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget v1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;->f$2:[B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/BiometricDeferredQueue;->lambda$addPendingLockoutResetForUser$1$BiometricDeferredQueue(I[B)V

    return-void
.end method
