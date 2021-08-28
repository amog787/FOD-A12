.class public abstract Landroid/hardware/biometrics/face/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x5

.field static final TRANSACTION_close:I = 0xe

.field static final TRANSACTION_detectInteraction:I = 0x6

.field static final TRANSACTION_enroll:I = 0x4

.field static final TRANSACTION_enumerateEnrollments:I = 0x7

.field static final TRANSACTION_generateChallenge:I = 0x1

.field static final TRANSACTION_getAuthenticatorId:I = 0xb

.field static final TRANSACTION_getEnrollmentConfig:I = 0x3

.field static final TRANSACTION_getFeatures:I = 0x9

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0xc

.field static final TRANSACTION_removeEnrollments:I = 0x8

.field static final TRANSACTION_resetLockout:I = 0xd

.field static final TRANSACTION_revokeChallenge:I = 0x2

.field static final TRANSACTION_setFeature:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->markVintfStability()V

    .line 84
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/face/ISession;

    if-eqz v1, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/ISession;

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/biometrics/face/ISession;
    .locals 1

    .line 743
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/face/ISession;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/biometrics/face/ISession;)Z
    .locals 2
    .param p0, "impl"    # Landroid/hardware/biometrics/face/ISession;

    .line 733
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/face/ISession;

    if-nez v0, :cond_1

    .line 736
    if-eqz p0, :cond_0

    .line 737
    sput-object p0, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/face/ISession;

    .line 738
    const/4 v0, 0x1

    return v0

    .line 740
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 103
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    sget-object v0, Landroid/hardware/biometrics/face/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 130
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 117
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v1

    .line 124
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 273
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->close()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    return v1

    .line 259
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    sget-object v2, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/keymaster/HardwareAuthToken;

    .local v2, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    goto :goto_0

    .line 265
    .end local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :cond_0
    const/4 v2, 0x0

    .line 267
    .restart local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :goto_0
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    return v1

    .line 252
    .end local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->invalidateAuthenticatorId()V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    return v1

    .line 245
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getAuthenticatorId()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v1

    .line 227
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    sget-object v2, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/keymaster/HardwareAuthToken;

    .restart local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    goto :goto_1

    .line 233
    .end local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :cond_1
    const/4 v2, 0x0

    .line 236
    .restart local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 238
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 239
    .local v4, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/face/ISession$Stub;->setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    return v1

    .line 220
    .end local v2    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->getFeatures()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    return v1

    .line 211
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 214
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISession$Stub;->removeEnrollments([I)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    return v1

    .line 204
    .end local v2    # "_arg0":[I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->enumerateEnrollments()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    return v1

    .line 196
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 198
    .local v3, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/hardware/biometrics/common/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 200
    return v1

    .line 186
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 189
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/face/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v5

    .line 190
    .local v5, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/hardware/biometrics/common/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 192
    return v1

    .line 160
    .end local v3    # "_arg0":J
    .end local v5    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    sget-object v3, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/keymaster/HardwareAuthToken;

    .local v3, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    goto :goto_3

    .line 166
    .end local v3    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :cond_5
    const/4 v3, 0x0

    .line 169
    .restart local v3    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 171
    .local v4, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 173
    .local v5, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    sget-object v6, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/common/NativeHandle;

    .local v6, "_arg3":Landroid/hardware/common/NativeHandle;
    goto :goto_4

    .line 177
    .end local v6    # "_arg3":Landroid/hardware/common/NativeHandle;
    :cond_6
    const/4 v6, 0x0

    .line 179
    .restart local v6    # "_arg3":Landroid/hardware/common/NativeHandle;
    :goto_4
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/hardware/biometrics/face/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v7

    .line 180
    .local v7, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/hardware/biometrics/common/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 182
    return v1

    .line 150
    .end local v3    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v4    # "_arg1":B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":Landroid/hardware/common/NativeHandle;
    .end local v7    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 153
    .local v2, "_arg0":B
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/face/ISession$Stub;->getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    move-result-object v3

    .line 154
    .local v3, "_result":[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 156
    return v1

    .line 141
    .end local v2    # "_arg0":B
    .end local v3    # "_result":[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/face/ISession$Stub;->revokeChallenge(J)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v1

    .line 134
    .end local v2    # "_arg0":J
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISession$Stub;->generateChallenge()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
