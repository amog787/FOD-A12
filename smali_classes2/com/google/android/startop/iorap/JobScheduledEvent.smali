.class public Lcom/google/android/startop/iorap/JobScheduledEvent;
.super Ljava/lang/Object;
.source "JobScheduledEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/JobScheduledEvent$Sort;,
        Lcom/google/android/startop/iorap/JobScheduledEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/JobScheduledEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_IDLE_MAINTENANCE:I = 0x0

.field private static final SORT_MAX:I = 0x0

.field private static final TYPE_MAX:I = 0x1

.field public static final TYPE_START_JOB:I = 0x0

.field public static final TYPE_STOP_JOB:I = 0x1


# instance fields
.field public final jobId:I

.field public final packageName:Ljava/lang/String;

.field public final shouldUpdateVersions:Z

.field public final sort:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/google/android/startop/iorap/JobScheduledEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/JobScheduledEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/JobScheduledEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "jobId"    # I
    .param p3, "sort"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "shouldUpdateVersions"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    .line 96
    iput p2, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    .line 97
    iput p3, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    .line 98
    iput-object p4, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    .line 99
    iput-boolean p5, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    .line 101
    invoke-direct {p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->checkConstructorArguments()V

    .line 102
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->checkConstructorArguments()V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/JobScheduledEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/JobScheduledEvent$1;

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/JobScheduledEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    .line 105
    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    .line 107
    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    .line 108
    return-void
.end method

.method public static createIdleMaintenance(ILandroid/app/job/JobParameters;Ljava/lang/String;Z)Lcom/google/android/startop/iorap/JobScheduledEvent;
    .locals 7
    .param p0, "type"    # I
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shouldUpdateVersions"    # Z

    .line 86
    new-instance v6, Lcom/google/android/startop/iorap/JobScheduledEvent;

    .line 87
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/startop/iorap/JobScheduledEvent;-><init>(IIILjava/lang/String;Z)V

    .line 86
    return-object v6
.end method

.method private equals(Lcom/google/android/startop/iorap/JobScheduledEvent;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/android/startop/iorap/JobScheduledEvent;

    .line 121
    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    iget-boolean v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 112
    if-ne p0, p1, :cond_0

    .line 113
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;

    if-eqz v0, :cond_1

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/JobScheduledEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->equals(Lcom/google/android/startop/iorap/JobScheduledEvent;)Z

    move-result v0

    return v0

    .line 117
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 130
    const-string v1, "{type: %d, jobId: %d, sort: %d, packageName: %s, shouldUpdateVersions %b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    return-void
.end method
