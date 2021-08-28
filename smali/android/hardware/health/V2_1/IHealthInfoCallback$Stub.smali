.class public abstract Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;
.super Landroid/os/HwBinder;
.source "IHealthInfoCallback.java"

# interfaces
.implements Landroid/hardware/health/V2_1/IHealthInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_1/IHealthInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 456
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 508
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 509
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 510
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 511
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 512
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x26t
        -0x10t
        0x45t
        0x10t
        -0x60t
        -0x4bt
        0x7at
        -0x46t
        0x51t
        0x67t
        -0x3bt
        -0x40t
        -0x59t
        -0x3et
        -0x10t
        0x77t
        -0x3et
        -0x54t
        -0x45t
        -0x68t
        -0x48t
        0x19t
        0x2t
        -0x60t
        0x72t
        0x51t
        0x78t
        0x29t
        -0x3t
        -0x61t
        -0x2at
        0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x4ct
        0x4ct
        0x32t
        -0x40t
        0xbt
        0xet
        0x54t
        -0x45t
        0x5t
        -0x1ct
        0xct
        0x79t
        0x50t
        0x32t
        0x8t
        -0x4ct
        0xft
        0x78t
        0x6at
        0x31t
        -0x80t
        0x29t
        -0x5et
        -0x5ct
        -0xat
        0x6et
        0x34t
        -0xft
        0xft
        0x2at
        0x76t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@2.1::IHealthInfoCallback"

    const-string v2, "android.hardware.health@2.0::IHealthInfoCallback"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 476
    const-string v0, "android.hardware.health@2.1::IHealthInfoCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 518
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 520
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 673
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->notifySyspropsChanged()V

    .line 676
    goto/16 :goto_1

    .line 662
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 665
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto/16 :goto_1

    .line 652
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->ping()V

    .line 655
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 657
    goto/16 :goto_1

    .line 647
    :sswitch_3
    goto/16 :goto_1

    .line 639
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->setHALInstrumentation()V

    .line 642
    goto/16 :goto_1

    .line 605
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 608
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 612
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 613
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 614
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 615
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 616
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 618
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 619
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 621
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 625
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 626
    nop

    .line 616
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 622
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 629
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 631
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 633
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto :goto_1

    .line 594
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto :goto_1

    .line 582
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 585
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 586
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 587
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto :goto_1

    .line 571
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 574
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto :goto_1

    .line 561
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    const-string v0, "android.hardware.health@2.1::IHealthInfoCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 564
    .local v0, "info":Landroid/hardware/health/V2_1/HealthInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/health/V2_1/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 565
    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V

    .line 566
    goto :goto_1

    .line 551
    .end local v0    # "info":Landroid/hardware/health/V2_1/HealthInfo;
    :sswitch_a
    const-string v0, "android.hardware.health@2.0::IHealthInfoCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    new-instance v0, Landroid/hardware/health/V2_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 554
    .local v0, "info":Landroid/hardware/health/V2_0/HealthInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/health/V2_0/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 555
    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V

    .line 556
    nop

    .line 685
    .end local v0    # "info":Landroid/hardware/health/V2_0/HealthInfo;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 502
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 530
    const-string v0, "android.hardware.health@2.1::IHealthInfoCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    return-object p0

    .line 533
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 492
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 524
    const/4 v0, 0x1

    return v0
.end method
