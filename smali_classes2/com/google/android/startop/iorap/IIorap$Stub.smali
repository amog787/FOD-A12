.class public abstract Lcom/google/android/startop/iorap/IIorap$Stub;
.super Landroid/os/Binder;
.source "IIorap.java"

# interfaces
.implements Lcom/google/android/startop/iorap/IIorap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IIorap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAppIntentEvent:I = 0x6

.field static final TRANSACTION_onAppLaunchEvent:I = 0x2

.field static final TRANSACTION_onDexOptEvent:I = 0x3

.field static final TRANSACTION_onJobScheduledEvent:I = 0x4

.field static final TRANSACTION_onPackageEvent:I = 0x5

.field static final TRANSACTION_onSystemServiceEvent:I = 0x7

.field static final TRANSACTION_onSystemServiceUserEvent:I = 0x8

.field static final TRANSACTION_setTaskListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/IIorap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    const-string v0, "com.google.android.startop.iorap.IIorap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/startop/iorap/IIorap;

    if-eqz v1, :cond_1

    .line 136
    move-object v1, v0

    check-cast v1, Lcom/google/android/startop/iorap/IIorap;

    return-object v1

    .line 138
    :cond_1
    new-instance v1, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;
    .locals 1

    .line 650
    sget-object v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/startop/iorap/IIorap;)Z
    .locals 2
    .param p0, "impl"    # Lcom/google/android/startop/iorap/IIorap;

    .line 640
    sget-object v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    if-nez v0, :cond_1

    .line 643
    if-eqz p0, :cond_0

    .line 644
    sput-object p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    .line 645
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 641
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 142
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

    .line 146
    const-string v0, "com.google.android.startop.iorap.IIorap"

    .line 147
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 155
    packed-switch p1, :pswitch_data_1

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 287
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .local v2, "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_0

    .line 293
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_0
    const/4 v2, 0x0

    .line 296
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    sget-object v3, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/SystemServiceUserEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    goto :goto_1

    .line 300
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    :cond_1
    const/4 v3, 0x0

    .line 302
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V

    .line 303
    return v1

    .line 267
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_2

    .line 273
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_2
    const/4 v2, 0x0

    .line 276
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    sget-object v3, Lcom/google/android/startop/iorap/SystemServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/SystemServiceEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    goto :goto_3

    .line 280
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    :cond_3
    const/4 v3, 0x0

    .line 282
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V

    .line 283
    return v1

    .line 247
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_4

    .line 253
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_4
    const/4 v2, 0x0

    .line 256
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    sget-object v3, Lcom/google/android/startop/iorap/AppIntentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/AppIntentEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    goto :goto_5

    .line 260
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    :cond_5
    const/4 v3, 0x0

    .line 262
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V

    .line 263
    return v1

    .line 227
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_6

    .line 233
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_6
    const/4 v2, 0x0

    .line 236
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 237
    sget-object v3, Lcom/google/android/startop/iorap/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/PackageEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    goto :goto_7

    .line 240
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    :cond_7
    const/4 v3, 0x0

    .line 242
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    :goto_7
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V

    .line 243
    return v1

    .line 207
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 210
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_8

    .line 213
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_8
    const/4 v2, 0x0

    .line 216
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 217
    sget-object v3, Lcom/google/android/startop/iorap/JobScheduledEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/JobScheduledEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/JobScheduledEvent;
    goto :goto_9

    .line 220
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/JobScheduledEvent;
    :cond_9
    const/4 v3, 0x0

    .line 222
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/JobScheduledEvent;
    :goto_9
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V

    .line 223
    return v1

    .line 187
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/JobScheduledEvent;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 190
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_a

    .line 193
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_a
    const/4 v2, 0x0

    .line 196
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 197
    sget-object v3, Lcom/google/android/startop/iorap/DexOptEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/DexOptEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/DexOptEvent;
    goto :goto_b

    .line 200
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/DexOptEvent;
    :cond_b
    const/4 v3, 0x0

    .line 202
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/DexOptEvent;
    :goto_b
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V

    .line 203
    return v1

    .line 167
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/DexOptEvent;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 170
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_c

    .line 173
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_c
    const/4 v2, 0x0

    .line 176
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 177
    sget-object v3, Lcom/google/android/startop/iorap/AppLaunchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/AppLaunchEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    goto :goto_d

    .line 180
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    :cond_d
    const/4 v3, 0x0

    .line 182
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    :goto_d
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    .line 183
    return v1

    .line 159
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Lcom/google/android/startop/iorap/ITaskListener;
    invoke-virtual {p0, v2}, Lcom/google/android/startop/iorap/IIorap$Stub;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V

    .line 163
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
