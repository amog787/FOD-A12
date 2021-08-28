.class public abstract Lcom/google/android/startop/iorap/ITaskListener$Stub;
.super Landroid/os/Binder;
.source "ITaskListener.java"

# interfaces
.implements Lcom/google/android/startop/iorap/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/ITaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onComplete:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/ITaskListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/startop/iorap/ITaskListener;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/google/android/startop/iorap/ITaskListener;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;
    .locals 1

    .line 208
    sget-object v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/startop/iorap/ITaskListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/google/android/startop/iorap/ITaskListener;

    .line 198
    sget-object v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    if-nez v0, :cond_1

    .line 201
    if-eqz p0, :cond_0

    .line 202
    sput-object p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
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

    .line 56
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 65
    packed-switch p1, :pswitch_data_1

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 89
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .local v2, "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_0

    .line 95
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_0
    const/4 v2, 0x0

    .line 98
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    sget-object v3, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/TaskResult;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    goto :goto_1

    .line 102
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :cond_1
    const/4 v3, 0x0

    .line 104
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V

    .line 105
    return v1

    .line 69
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    sget-object v2, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/startop/iorap/RequestId;

    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_2

    .line 75
    .end local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_2
    const/4 v2, 0x0

    .line 78
    .restart local v2    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    sget-object v3, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/TaskResult;

    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    goto :goto_3

    .line 82
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :cond_3
    const/4 v3, 0x0

    .line 84
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/TaskResult;
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V

    .line 85
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
