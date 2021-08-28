.class final Lcom/android/server/hdmi/DeviceDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;,
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;
    }
.end annotation


# static fields
.field private static final STATE_WAITING_FOR_DEVICES:I = 0x5

.field private static final STATE_WAITING_FOR_DEVICE_POLLING:I = 0x1

.field private static final STATE_WAITING_FOR_OSD_NAME:I = 0x3

.field private static final STATE_WAITING_FOR_PHYSICAL_ADDRESS:I = 0x2

.field private static final STATE_WAITING_FOR_POWER:I = 0x6

.field private static final STATE_WAITING_FOR_VENDOR_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DeviceDiscoveryAction"


# instance fields
.field private final mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

.field private final mDelayPeriod:I

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTvDevice:Z

.field private mProcessedDeviceCount:I

.field private mTimeoutRetry:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;I)V

    .line 121
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;I)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;
    .param p3, "delay"    # I

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 98
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    .line 110
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 111
    iput p3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 45
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/DeviceDiscoveryAction;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 45
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 45
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startToDelayAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 45
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    return-void
.end method

.method private allocateDevices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 152
    .local v1, "i":Ljava/lang/Integer;
    new-instance v2, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$1;)V

    .line 153
    .local v2, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private checkAndProceedStage()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 447
    return-void

    .line 451
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 453
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 467
    :pswitch_0
    return-void

    .line 464
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 465
    return-void

    .line 461
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPowerStatusStage()V

    .line 462
    return-void

    .line 458
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startVendorIdStage()V

    .line 459
    return-void

    .line 455
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startOsdNameStage()V

    .line 456
    return-void

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 472
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private delayActionWithTimePeriod(I)V
    .locals 1
    .param p1, "timeDelay"    # I

    .line 193
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 194
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 195
    return-void
.end method

.method private getPortId(I)I
    .locals 1
    .param p1, "physicalAddress"    # I

    .line 351
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getPortId(I)I

    move-result v0

    .line 351
    :goto_0
    return v0
.end method

.method private handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 324
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 327
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    const-string v2, "DeviceDiscoveryAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 333
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 334
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$702(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 335
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$700(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getPortId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$802(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 336
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$902(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 338
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$1002(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-boolean v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v2, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    .line 343
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$900(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v4

    .line 344
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$700(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v5

    .line 342
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 347
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 348
    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 399
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 402
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    const-string v2, "DeviceDiscoveryAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 410
    .local v1, "params":[B
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 411
    .local v2, "powerStatus":I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$1202(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 414
    .end local v1    # "params":[B
    .end local v2    # "powerStatus":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 415
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 416
    return-void
.end method

.method private handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 356
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 359
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const-string v3, "DeviceDiscoveryAction"

    if-eq v1, v2, :cond_1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 365
    :cond_1
    const-string v1, ""

    .line 367
    .local v1, "displayName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    const-string v5, "US-ASCII"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 372
    :cond_2
    goto :goto_1

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode display name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$1002(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 376
    return-void
.end method

.method private handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 379
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 382
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    const-string v2, "DeviceDiscoveryAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 388
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 390
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v2

    .line 391
    .local v2, "vendorId":I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$1102(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I

    .line 394
    .end local v1    # "params":[B
    .end local v2    # "vendorId":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 395
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 396
    return-void
.end method

.method private increaseProcessedDeviceCount()V
    .locals 1

    .line 419
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 421
    return-void
.end method

.method private mayProcessMessageIfCached(II)Z
    .locals 2
    .param p1, "address"    # I
    .param p2, "opcode"    # I

    .line 269
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 270
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 272
    const/4 v1, 0x1

    return v1

    .line 274
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private queryOsdName(I)V
    .locals 2
    .param p1, "address"    # I

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 208
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 213
    const/16 v0, 0x47

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 217
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 218
    return-void
.end method

.method private queryPhysicalAddress(I)V
    .locals 2
    .param p1, "address"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 179
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 185
    const/16 v0, 0x84

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 189
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 190
    return-void
.end method

.method private queryPowerStatus(I)V
    .locals 2
    .param p1, "address"    # I

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 256
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 261
    const/16 v0, 0x90

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 265
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 266
    return-void
.end method

.method private queryVendorId(I)V
    .locals 2
    .param p1, "address"    # I

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 237
    const/16 v0, 0x87

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    return-void

    .line 240
    :cond_1
    nop

    .line 241
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 242
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 243
    return-void
.end method

.method private removeDevice(I)V
    .locals 1
    .param p1, "index"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method private sendQueryCommand()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$600(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    .line 476
    .local v0, "address":I
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 493
    return-void

    .line 490
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPowerStatus(I)V

    .line 491
    return-void

    .line 478
    :pswitch_1
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->delayActionWithTimePeriod(I)V

    .line 479
    return-void

    .line 487
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryVendorId(I)V

    .line 488
    return-void

    .line 484
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryOsdName(I)V

    .line 485
    return-void

    .line 481
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPhysicalAddress(I)V

    .line 482
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startOsdNameStage()V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Osd Name Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 202
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 203
    return-void
.end method

.method private startPhysicalAddressStage()V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Physical Address Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 169
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 170
    return-void
.end method

.method private startPowerStatusStage()V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Power Status Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 248
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 250
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 251
    return-void
.end method

.method private startToDelayAction()V
    .locals 2

    .line 158
    const-string v0, "DeviceDiscoveryAction"

    const-string v1, "Waiting for connected devices to be ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 161
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 162
    return-void
.end method

.method private startVendorIdStage()V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Vendor Id Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 224
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 226
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 227
    return-void
.end method

.method private verifyValidLogicalAddress(I)Z
    .locals 1
    .param p1, "address"    # I

    .line 173
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private wrapUpAndFinish()V
    .locals 7

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------Wrap up Device Discovery:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]---------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 431
    .local v3, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v3}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->access$1300(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    .line 432
    .local v4, "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " DeviceInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v3    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .end local v4    # "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_0

    .line 435
    :cond_0
    const-string v2, "--------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    invoke-interface {v1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;->onDeviceDiscoveryDone(Ljava/util/List;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->finish()V

    .line 439
    iget-boolean v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processAllDelayedMessages()V

    .line 442
    :cond_1
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .line 499
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    .line 505
    return-void

    .line 507
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    if-ge v0, v1, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 509
    return-void

    .line 511
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout[State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Processed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 517
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->removeDevice(I)V

    goto :goto_0

    .line 519
    :cond_3
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 521
    :goto_0
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 522
    return-void

    .line 500
    :cond_4
    :goto_1
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 279
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 319
    :pswitch_0
    return v2

    .line 307
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 309
    return v1

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_1

    .line 312
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 313
    return v1

    .line 315
    :cond_1
    return v2

    .line 297
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x87

    if-ne v0, v3, :cond_2

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 299
    return v1

    .line 300
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_3

    .line 301
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x8c

    if-ne v0, v3, :cond_3

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 303
    return v1

    .line 305
    :cond_3
    return v2

    .line 287
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_4

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 289
    return v1

    .line 290
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_5

    .line 291
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x46

    if-ne v0, v3, :cond_5

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 293
    return v1

    .line 295
    :cond_5
    return v2

    .line 281
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_6

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 283
    return v1

    .line 285
    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method start()Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 128
    new-instance v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;-><init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    const v2, 0x20001

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 147
    return v0
.end method
