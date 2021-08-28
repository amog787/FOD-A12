.class public Landroid/hardware/biometrics/fingerprint/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public halControlsIllumination:Z

.field public halHandlesDisplayTouches:Z

.field public sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

.field public sensorType:B

.field public supportsDetectInteraction:Z

.field public supportsNavigationGestures:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/hardware/biometrics/fingerprint/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 10
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 11
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 13
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 7
    .param p1, "_v"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "_clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "_mask":I
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 95
    .local v5, "o":Ljava/lang/Object;
    invoke-direct {p0, v5}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v6

    or-int/2addr v2, v6

    .line 94
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    return v2

    .line 99
    .end local v2    # "_mask":I
    :cond_2
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 102
    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 77
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 77
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    sget-object v4, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    goto :goto_0

    .line 61
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_6

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_5

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 77
    :cond_5
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    iput-byte v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_8

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_7

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 77
    :cond_7
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_8
    :try_start_3
    sget-object v4, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_a

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_9

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 77
    :cond_9
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_a
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_b

    move v4, v5

    goto :goto_1

    :cond_b
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_d

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 77
    :cond_c
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_d
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    goto :goto_2

    :cond_e
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_10

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_f

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 77
    :cond_f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_10
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    goto :goto_3

    :cond_11
    move v4, v6

    :goto_3
    iput-boolean v4, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_13

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_12

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 77
    :cond_12
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_13
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_4

    :cond_14
    move v5, v6

    :goto_4
    iput-boolean v5, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 76
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_15

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    nop

    .line 81
    return-void

    .line 77
    :cond_15
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_16

    .line 77
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_16
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    if-eqz v2, :cond_0

    .line 33
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/biometrics/common/CommonProps;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    :goto_0
    iget-byte v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 41
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 46
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
