.class public Landroid/net/UidRangeParcel;
.super Ljava/lang/Object;
.source "UidRangeParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UidRangeParcel$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/UidRangeParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/net/UidRangeParcel$1;

    invoke-direct {v0}, Landroid/net/UidRangeParcel$1;-><init>()V

    sput-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/net/UidRangeParcel;->start:I

    .line 50
    iput p2, p0, Landroid/net/UidRangeParcel;->stop:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 6
    invoke-static {p0}, Landroid/net/UidRangeParcel;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;

    move-result-object v0

    return-object v0
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .locals 7
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 54
    new-instance v0, Landroid/net/UidRangeParcel$Builder;

    invoke-direct {v0}, Landroid/net/UidRangeParcel$Builder;-><init>()V

    .line 55
    .local v0, "_aidl_parcelable_builder":Landroid/net/UidRangeParcel$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 56
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, "_aidl_parcelable_size":I
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-gez v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_0

    .line 71
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    move-result-object v3

    return-object v3

    .line 69
    :cond_0
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    sub-int/2addr v5, v1

    if-lt v5, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_2

    .line 71
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    move-result-object v3

    return-object v3

    .line 69
    :cond_2
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 62
    .local v5, "_aidl_temp_start":I
    invoke-virtual {v0, v5}, Landroid/net/UidRangeParcel$Builder;->setStart(I)Landroid/net/UidRangeParcel$Builder;

    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_5

    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_4

    .line 71
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    move-result-object v3

    return-object v3

    .line 69
    :cond_4
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .local v6, "_aidl_temp_stop":I
    invoke-virtual {v0, v6}, Landroid/net/UidRangeParcel$Builder;->setStop(I)Landroid/net/UidRangeParcel$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    nop

    .end local v5    # "_aidl_temp_start":I
    .end local v6    # "_aidl_temp_stop":I
    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_6

    .line 71
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    move-result-object v3

    return-object v3

    .line 69
    :cond_6
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :catchall_0
    move-exception v5

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_7

    .line 71
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    move-result-object v3

    return-object v3

    .line 69
    :cond_7
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "_mask":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 86
    :cond_1
    instance-of v2, p1, Landroid/net/UidRangeParcel;

    if-nez v2, :cond_2

    return v1

    .line 87
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/net/UidRangeParcel;

    .line 88
    .local v2, "that":Landroid/net/UidRangeParcel;
    iget v3, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 89
    :cond_3
    iget v3, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 90
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iget v1, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 77
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 78
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.UidRangeParcel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 43
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
