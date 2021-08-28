.class public Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "UserAwareBiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;,
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;,
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "UaBiometricScheduler"


# instance fields
.field private final mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

.field private mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/StopUserClient<",
            "*>;"
        }
    .end annotation
.end field

.field private final mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .param p3, "biometricService"    # Landroid/hardware/biometrics/IBiometricService;
    .param p4, "currentUserRetriever"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    .param p5, "userSwitchCallback"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 91
    const/16 v0, 0x32

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;I)V

    .line 93
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    .line 94
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .param p3, "currentUserRetriever"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    .param p4, "userSwitchCallback"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 101
    nop

    .line 102
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaBiometricScheduler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mBiometricTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUserStopped()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected onUserStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnUserStopped]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/StopUserClient;->onUserStopped()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 164
    return-void
.end method

.method protected startNextOperationIfIdle()V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No operations, returning to idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;->getCurrentUserId()I

    move-result v0

    .line 123
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 125
    .local v1, "nextUserId":I
    if-ne v1, v0, :cond_2

    .line 126
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    goto/16 :goto_0

    .line 127
    :cond_2
    const/16 v2, -0x2710

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 129
    invoke-interface {v2, v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;

    move-result-object v2

    .line 130
    .local v2, "startClient":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 133
    .local v4, "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Starting User] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v5, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 136
    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 137
    .end local v2    # "startClient":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .end local v4    # "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    goto :goto_0

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Waiting for StopUser] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 142
    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 143
    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    move-object v2, v4

    .line 146
    .local v2, "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Stopping User] current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v4, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    .line 150
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/sensors/StopUserClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 153
    .end local v2    # "finishedCallback":Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
    :goto_0
    return-void
.end method
