.class final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationPowerSaveModeEvent"
.end annotation


# instance fields
.field private final mLocationPowerSaveMode:I


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .param p1, "timeDelta"    # J
    .param p3, "locationPowerSaveMode"    # I

    .line 464
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;-><init>(J)V

    .line 465
    iput p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    .line 466
    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 3

    .line 471
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    packed-switch v0, :pswitch_data_0

    .line 488
    const-string v0, "UNKNOWN"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_0

    .line 485
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_0
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    .line 486
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 482
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v0, "FOREGROUND_ONLY"

    .line 483
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 479
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    .line 480
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 476
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_3
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    .line 477
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 473
    .end local v0    # "mode":Ljava/lang/String;
    :pswitch_4
    const-string v0, "NO_CHANGE"

    .line 474
    .restart local v0    # "mode":Ljava/lang/String;
    nop

    .line 491
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location power save mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
