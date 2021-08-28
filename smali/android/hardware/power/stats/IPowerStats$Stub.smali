.class public abstract Landroid/hardware/power/stats/IPowerStats$Stub;
.super Landroid/os/Binder;
.source "IPowerStats.java"

# interfaces
.implements Landroid/hardware/power/stats/IPowerStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/stats/IPowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getEnergyConsumed:I = 0x4

.field static final TRANSACTION_getEnergyConsumerInfo:I = 0x3

.field static final TRANSACTION_getEnergyMeterInfo:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPowerEntityInfo:I = 0x1

.field static final TRANSACTION_getStateResidency:I = 0x2

.field static final TRANSACTION_readEnergyMeter:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/stats/IPowerStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/stats/IPowerStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/power/stats/IPowerStats;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/power/stats/IPowerStats;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/power/stats/IPowerStats;
    .locals 1

    .line 408
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->sDefaultImpl:Landroid/hardware/power/stats/IPowerStats;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/power/stats/IPowerStats;)Z
    .locals 2
    .param p0, "impl"    # Landroid/hardware/power/stats/IPowerStats;

    .line 398
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->sDefaultImpl:Landroid/hardware/power/stats/IPowerStats;

    if-nez v0, :cond_1

    .line 401
    if-eqz p0, :cond_0

    .line 402
    sput-object p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->sDefaultImpl:Landroid/hardware/power/stats/IPowerStats;

    .line 403
    const/4 v0, 0x1

    return v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    sget-object v0, Landroid/hardware/power/stats/IPowerStats$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 95
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v1

    .line 102
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 156
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 159
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/hardware/power/stats/IPowerStats$Stub;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v3

    .line 160
    .local v3, "_result":[Landroid/hardware/power/stats/EnergyMeasurement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 162
    return v1

    .line 148
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/power/stats/EnergyMeasurement;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v2

    .line 150
    .local v2, "_result":[Landroid/hardware/power/stats/Channel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 152
    return v1

    .line 138
    .end local v2    # "_result":[Landroid/hardware/power/stats/Channel;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 141
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/hardware/power/stats/IPowerStats$Stub;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v3

    .line 142
    .local v3, "_result":[Landroid/hardware/power/stats/EnergyConsumerResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 144
    return v1

    .line 130
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v2

    .line 132
    .local v2, "_result":[Landroid/hardware/power/stats/EnergyConsumer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    return v1

    .line 120
    .end local v2    # "_result":[Landroid/hardware/power/stats/EnergyConsumer;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 123
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/hardware/power/stats/IPowerStats$Stub;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v3

    .line 124
    .local v3, "_result":[Landroid/hardware/power/stats/StateResidencyResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 126
    return v1

    .line 112
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/power/stats/StateResidencyResult;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v2

    .line 114
    .local v2, "_result":[Landroid/hardware/power/stats/PowerEntity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 116
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

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
