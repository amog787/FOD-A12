.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderStationaryThrottledEvent"
.end annotation


# instance fields
.field private final mRequest:Landroid/location/provider/ProviderRequest;

.field private final mStationaryThrottled:Z


# direct methods
.method constructor <init>(JLjava/lang/String;ZLandroid/location/provider/ProviderRequest;)V
    .locals 0
    .param p1, "timeDelta"    # J
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "stationaryThrottled"    # Z
    .param p5, "request"    # Landroid/location/provider/ProviderRequest;

    .line 445
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(JLjava/lang/String;)V

    .line 446
    iput-boolean p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mStationaryThrottled:Z

    .line 447
    iput-object p5, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 448
    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider stationary/idle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mStationaryThrottled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "throttled"

    goto :goto_0

    .line 453
    :cond_0
    const-string/jumbo v1, "unthrottled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    return-object v0
.end method
