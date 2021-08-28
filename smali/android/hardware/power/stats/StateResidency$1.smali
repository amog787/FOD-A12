.class Landroid/hardware/power/stats/StateResidency$1;
.super Ljava/lang/Object;
.source "StateResidency.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/stats/StateResidency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/power/stats/StateResidency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/StateResidency;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 16
    new-instance v0, Landroid/hardware/power/stats/StateResidency;

    invoke-direct {v0}, Landroid/hardware/power/stats/StateResidency;-><init>()V

    .line 17
    .local v0, "_aidl_out":Landroid/hardware/power/stats/StateResidency;
    invoke-virtual {v0, p1}, Landroid/hardware/power/stats/StateResidency;->readFromParcel(Landroid/os/Parcel;)V

    .line 18
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/StateResidency$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/StateResidency;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/power/stats/StateResidency;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 22
    new-array v0, p1, [Landroid/hardware/power/stats/StateResidency;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/StateResidency$1;->newArray(I)[Landroid/hardware/power/stats/StateResidency;

    move-result-object p1

    return-object p1
.end method
