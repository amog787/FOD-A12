.class Landroid/net/NativeNetworkConfig$1;
.super Ljava/lang/Object;
.source "NativeNetworkConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NativeNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NativeNetworkConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 47
    invoke-static {p1}, Landroid/net/NativeNetworkConfig;->access$000(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/NativeNetworkConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/NativeNetworkConfig;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 51
    new-array v0, p1, [Landroid/net/NativeNetworkConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Landroid/net/NativeNetworkConfig$1;->newArray(I)[Landroid/net/NativeNetworkConfig;

    move-result-object p1

    return-object p1
.end method
