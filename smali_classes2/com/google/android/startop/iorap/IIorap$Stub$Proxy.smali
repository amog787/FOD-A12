.class Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIorap.java"

# interfaces
.implements Lcom/google/android/startop/iorap/IIorap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IIorap$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 317
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 324
    const-string v0, "com.google.android.startop.iorap.IIorap"

    return-object v0
.end method

.method public onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/AppIntentEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    :goto_0
    if-eqz p2, :cond_1

    .line 546
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/AppIntentEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 550
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 553
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 554
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 555
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    return-void

    .line 561
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    nop

    .line 563
    return-void

    .line 561
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    throw v1
.end method

.method public onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/AppLaunchEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 414
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    :goto_0
    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 426
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 429
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 430
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 431
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    return-void

    .line 437
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    nop

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw v1
.end method

.method public onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/DexOptEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    :goto_0
    if-eqz p2, :cond_1

    .line 453
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/DexOptEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 457
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 460
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 461
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 462
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    return-void

    .line 468
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw v1
.end method

.method public onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/JobScheduledEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 475
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    :goto_0
    if-eqz p2, :cond_1

    .line 484
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/JobScheduledEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 488
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 491
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 492
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 493
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    return-void

    .line 499
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    nop

    .line 501
    return-void

    .line 499
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw v1
.end method

.method public onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/PackageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    :goto_0
    if-eqz p2, :cond_1

    .line 515
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/PackageEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 519
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 522
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 523
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 524
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    return-void

    .line 530
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    nop

    .line 532
    return-void

    .line 530
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw v1
.end method

.method public onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/SystemServiceEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    :goto_0
    if-eqz p2, :cond_1

    .line 577
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/SystemServiceEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 581
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 584
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 585
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 586
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    return-void

    .line 592
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    nop

    .line 594
    return-void

    .line 592
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw v1
.end method

.method public onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    .locals 5
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 600
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    invoke-virtual {p1, v0, v2}, Lcom/google/android/startop/iorap/RequestId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    :goto_0
    if-eqz p2, :cond_1

    .line 608
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    invoke-virtual {p2, v0, v2}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 612
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    :goto_1
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 615
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 616
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 617
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/startop/iorap/IIorap;->onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    return-void

    .line 623
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 624
    nop

    .line 625
    return-void

    .line 623
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 624
    throw v1
.end method

.method public setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/startop/iorap/ITaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/startop/iorap/ITaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 391
    iget-object v2, p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 392
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 393
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 394
    invoke-static {}, Lcom/google/android/startop/iorap/IIorap$Stub;->getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/startop/iorap/IIorap;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    return-void

    .line 400
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v1
.end method
