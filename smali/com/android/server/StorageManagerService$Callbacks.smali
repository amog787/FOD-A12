.class Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/storage/IStorageEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 4450
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4446
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 4451
    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 4438
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;

    .line 4438
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;
    .param p2, "x2"    # I

    .line 4438
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 4438
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Landroid/os/storage/VolumeRecord;

    .line 4438
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService$Callbacks;
    .param p1, "x1"    # Ljava/lang/String;

    .line 4438
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method private invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/storage/IStorageEventListener;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4478
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4501
    :pswitch_0
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    goto :goto_0

    .line 4497
    :pswitch_1
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p1, v0, v1}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 4498
    goto :goto_0

    .line 4493
    :pswitch_2
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 4494
    goto :goto_0

    .line 4489
    :pswitch_3
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 4490
    goto :goto_0

    .line 4485
    :pswitch_4
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 4486
    goto :goto_0

    .line 4480
    :pswitch_5
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4482
    nop

    .line 4505
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 4543
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4544
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4545
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4546
    return-void
.end method

.method private notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 4536
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4537
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4538
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4539
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4540
    return-void
.end method

.method private notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 4508
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4509
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4510
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4511
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4512
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4513
    return-void
.end method

.method private notifyVolumeForgotten(Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 4530
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4531
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4532
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4533
    return-void
.end method

.method private notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 4524
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4525
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4526
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4527
    return-void
.end method

.method private notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 4516
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4517
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4518
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4519
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4520
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4521
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 4463
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4464
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 4465
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4466
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/storage/IStorageEventListener;

    .line 4468
    .local v3, "callback":Landroid/os/storage/IStorageEventListener;
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4470
    goto :goto_1

    .line 4469
    :catch_0
    move-exception v4

    .line 4465
    .end local v3    # "callback":Landroid/os/storage/IStorageEventListener;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4472
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4473
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4474
    return-void
.end method

.method public register(Landroid/os/storage/IStorageEventListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/storage/IStorageEventListener;

    .line 4454
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4455
    return-void
.end method

.method public unregister(Landroid/os/storage/IStorageEventListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/storage/IStorageEventListener;

    .line 4458
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4459
    return-void
.end method
