.class final Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.super Ljava/lang/Object;
.source "SmartspacePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartspace/SmartspacePerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmartspaceSessionInfo"
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field private final mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

.field final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1
    .param p1, "id"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "context"    # Landroid/app/smartspace/SmartspaceConfig;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)V

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 358
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 359
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    .line 360
    iput-object p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 361
    iput-object p4, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 326
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method addCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 369
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 370
    return-void
.end method

.method destroy()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 402
    return-void
.end method

.method public synthetic lambda$resurrectSessionLocked$0$SmartspacePerUserService$SmartspaceSessionInfo(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/smartspace/SmartspacePerUserService;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 413
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method linkToDeath()Z
    .locals 3

    .line 382
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    nop

    .line 390
    const/4 v0, 0x1

    return v0

    .line 383
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method removeCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 377
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 378
    return-void
.end method

.method resurrectSessionLocked(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/smartspace/SmartspacePerUserService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 405
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 411
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 412
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 414
    return-void
.end method
