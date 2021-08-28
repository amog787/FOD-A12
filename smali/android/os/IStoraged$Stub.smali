.class public abstract Landroid/os/IStoraged$Stub;
.super Landroid/os/Binder;
.source "IStoraged.java"

# interfaces
.implements Landroid/os/IStoraged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStoraged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStoraged$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStoraged"

.field static final TRANSACTION_getRecentPerf:I = 0x3

.field static final TRANSACTION_onUserStarted:I = 0x1

.field static final TRANSACTION_onUserStopped:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.os.IStoraged"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStoraged$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    const-string v0, "android.os.IStoraged"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IStoraged;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/os/IStoraged;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Landroid/os/IStoraged$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IStoraged$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IStoraged;
    .locals 1

    .line 197
    sget-object v0, Landroid/os/IStoraged$Stub$Proxy;->sDefaultImpl:Landroid/os/IStoraged;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IStoraged;)Z
    .locals 2
    .param p0, "impl"    # Landroid/os/IStoraged;

    .line 187
    sget-object v0, Landroid/os/IStoraged$Stub$Proxy;->sDefaultImpl:Landroid/os/IStoraged;

    if-nez v0, :cond_1

    .line 190
    if-eqz p0, :cond_0

    .line 191
    sput-object p0, Landroid/os/IStoraged$Stub$Proxy;->sDefaultImpl:Landroid/os/IStoraged;

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 51
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "android.os.IStoraged"

    .line 56
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 64
    packed-switch p1, :pswitch_data_1

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 86
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/IStoraged$Stub;->getRecentPerf()I

    move-result v2

    .line 88
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v1

    .line 77
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/IStoraged$Stub;->onUserStopped(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v1

    .line 68
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/IStoraged$Stub;->onUserStarted(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
