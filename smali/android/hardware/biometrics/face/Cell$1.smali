.class Landroid/hardware/biometrics/face/Cell$1;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/face/Cell;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/face/Cell;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 15
    new-instance v0, Landroid/hardware/biometrics/face/Cell;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/Cell;-><init>()V

    .line 16
    .local v0, "_aidl_out":Landroid/hardware/biometrics/face/Cell;
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/face/Cell;->readFromParcel(Landroid/os/Parcel;)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/Cell$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/face/Cell;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/biometrics/face/Cell;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 21
    new-array v0, p1, [Landroid/hardware/biometrics/face/Cell;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/Cell$1;->newArray(I)[Landroid/hardware/biometrics/face/Cell;

    move-result-object p1

    return-object p1
.end method