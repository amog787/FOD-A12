.class public abstract Landroid/os/IInputConstants$Stub;
.super Landroid/os/Binder;
.source "IInputConstants.java"

# interfaces
.implements Landroid/os/IInputConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInputConstants$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.os.IInputConstants"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInputConstants$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInputConstants;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "android.os.IInputConstants"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInputConstants;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/os/IInputConstants;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Landroid/os/IInputConstants$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInputConstants$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IInputConstants;
    .locals 1

    .line 93
    sget-object v0, Landroid/os/IInputConstants$Stub$Proxy;->sDefaultImpl:Landroid/os/IInputConstants;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IInputConstants;)Z
    .locals 2
    .param p0, "impl"    # Landroid/os/IInputConstants;

    .line 83
    sget-object v0, Landroid/os/IInputConstants$Stub$Proxy;->sDefaultImpl:Landroid/os/IInputConstants;

    if-nez v0, :cond_1

    .line 86
    if-eqz p0, :cond_0

    .line 87
    sput-object p0, Landroid/os/IInputConstants$Stub$Proxy;->sDefaultImpl:Landroid/os/IInputConstants;

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "android.os.IInputConstants"

    .line 46
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 54
    goto :goto_0

    .line 50
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    return v1

    .line 58
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
