.class final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SpeechRecognitionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;",
        "Lcom/android/server/speech/SpeechRecognitionManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CONCURRENT_CONNECTIONS_BY_CLIENT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRemoteServicesByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/speech/RemoteSpeechRecognitionService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "master"    # Lcom/android/server/speech/SpeechRecognitionManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 50
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 50
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .param p3, "x3"    # Z

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method private componentMapsToRecognitionService(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .line 258
    nop

    .line 259
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 262
    return v2

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 266
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 267
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    const/4 v1, 0x1

    return v1

    .line 270
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 272
    :cond_2
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceComponent is not RecognitionService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v2
.end method

.method private createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 211
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 215
    .local v1, "servicesForClient":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 217
    monitor-exit v0

    return-object v2

    .line 220
    :cond_0
    if-eqz v1, :cond_2

    .line 221
    nop

    .line 223
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;)V

    .line 224
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 226
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    .line 227
    .local v3, "existingService":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v2, v2, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v2, :cond_1

    .line 230
    sget-object v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reused existing connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    monitor-exit v0

    return-object v2

    .line 237
    .end local v3    # "existingService":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->componentMapsToRecognitionService(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    monitor-exit v0

    return-object v2

    .line 241
    :cond_3
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getUserId()I

    move-result v4

    invoke-direct {v2, v3, p2, v4, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    .line 245
    .local v2, "service":Lcom/android/server/speech/RemoteSpeechRecognitionService;
    iget-object v3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 247
    .local v3, "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v4, v4, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v4, :cond_4

    .line 250
    sget-object v4, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating a new connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_4
    monitor-exit v0

    return-object v2

    .line 254
    .end local v1    # "servicesForClient":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    .end local v2    # "service":Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .end local v3    # "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOnDeviceComponentNameLocked()Landroid/content/ComponentName;
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "serviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v1, v1, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    if-nez v0, :cond_2

    .line 201
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v1, v1, Lcom/android/server/speech/SpeechRecognitionManagerService;->verbose:Z

    if-eqz v1, :cond_1

    .line 202
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 206
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .param p3, "invokeCancel"    # Z

    .line 186
    if-eqz p3, :cond_0

    .line 187
    invoke-virtual {p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->shutdown()V

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    .line 190
    return-void
.end method

.method static synthetic lambda$createService$2(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z
    .locals 1
    .param p0, "serviceComponent"    # Landroid/content/ComponentName;
    .param p1, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 225
    invoke-virtual {p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createService$3(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1
    .param p0, "key"    # Ljava/lang/Integer;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 277
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 280
    .local v1, "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 283
    .end local v1    # "valuesByCaller":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/speech/RemoteSpeechRecognitionService;>;"
    :cond_0
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V
    .locals 3
    .param p0, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;
    .param p1, "errorCode"    # I

    .line 289
    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionServiceManagerCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to respond with error"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .locals 16
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "onDevice"    # Z
    .param p4, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;

    .line 95
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    iget-object v0, v8, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v0, v0, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 97
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    .line 96
    const-string v4, "#createSessionLocked, component=%s, onDevice=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    move-object/from16 v0, p1

    .line 101
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    if-eqz p3, :cond_1

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 101
    :cond_1
    move-object v10, v0

    .line 105
    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    .local v10, "serviceComponent":Landroid/content/ComponentName;
    :goto_0
    if-nez v10, :cond_3

    .line 106
    iget-object v0, v8, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v0, v0, Lcom/android/server/speech/SpeechRecognitionManagerService;->debug:Z

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Service component is undefined, responding with error."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 110
    return-void

    .line 113
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 114
    .local v11, "creatorCallingUid":I
    invoke-direct {v8, v11, v10}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;

    move-result-object v12

    .line 116
    .local v12, "service":Lcom/android/server/speech/RemoteSpeechRecognitionService;
    if-nez v12, :cond_4

    .line 117
    const/16 v0, 0xa

    invoke-static {v9, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 118
    return-void

    .line 121
    :cond_4
    new-instance v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8, v11, v12}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    move-object v13, v0

    .line 125
    .local v13, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    move-object/from16 v14, p2

    :try_start_0
    invoke-interface {v14, v13, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 132
    invoke-virtual {v12}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->connect()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v15, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v12

    move v5, v11

    move-object/from16 v6, p2

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {v0, v15}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 181
    return-void

    .line 126
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {v8, v11, v12, v1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    .line 129
    return-void
.end method

.method public synthetic lambda$createSessionLocked$0$SpeechRecognitionManagerServiceImpl(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 1
    .param p1, "creatorCallingUid"    # I
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method public synthetic lambda$createSessionLocked$1$SpeechRecognitionManagerServiceImpl(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
    .locals 8
    .param p1, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;
    .param p2, "service"    # Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .param p3, "creatorCallingUid"    # I
    .param p4, "clientToken"    # Landroid/os/IBinder;
    .param p5, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p6, "binderService"    # Landroid/speech/IRecognitionService;

    .line 133
    const/4 v0, 0x5

    if-eqz p6, :cond_0

    .line 135
    :try_start_0
    new-instance v7, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-interface {p1, v7}, Landroid/speech/IRecognitionServiceManagerCallback;->onSuccess(Landroid/speech/IRecognitionService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Error creating a speech recognition session"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-static {p1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 178
    :cond_0
    invoke-static {p1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    .line 180
    :goto_1
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateLocked(Z)Z
    .locals 1
    .param p1, "disabled"    # Z

    .line 86
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 87
    .local v0, "enabledChanged":Z
    return v0
.end method
