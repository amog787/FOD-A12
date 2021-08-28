.class public interface abstract Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;
.super Ljava/lang/Object;
.source "UserAwareBiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserSwitchCallback"
.end annotation


# virtual methods
.method public abstract getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/StartUserClient<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/StopUserClient<",
            "*>;"
        }
    .end annotation
.end method
