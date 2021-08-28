.class final Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;
.super Ljava/lang/Object;
.source "LocalEventLog.java"

# interfaces
.implements Lcom/android/server/location/eventlog/LocalEventLog$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FillerEvent"
.end annotation


# static fields
.field static final MAX_TIME_DELTA:J = 0xffffffffL


# instance fields
.field private final mTimeDelta:I


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "timeDelta"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 50
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;->mTimeDelta:I

    .line 51
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getTimeDeltaMs()J
    .locals 2

    .line 60
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;->mTimeDelta:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isFiller()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method
