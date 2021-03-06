.class public final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mApiCallbacks:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;

.field private final mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$1;)V

    .line 165
    .local v0, "userIdToInputMethodInfoMapper":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;
    new-instance v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$1;)V

    move-object v1, v2

    .line 166
    .local v1, "userDataMap":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MultiClientInputMethodManagerService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mApiCallbacks:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;

    .line 169
    new-instance v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    new-instance v4, Landroid/os/Handler;

    .line 171
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    invoke-direct {v3, p1, v1, v0, v4}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 173
    const-class v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    new-instance v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;)V

    invoke-static {v3, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    .line 171
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 245
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mApiCallbacks:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;

    const-string v1, "input_method"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 258
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 258
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 274
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 276
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 274
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 266
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda4;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->mOnWorkerThreadCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 268
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 266
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method
