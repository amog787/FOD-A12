.class Lcom/android/server/timedetector/GnssTimeUpdateService$1;
.super Ljava/lang/Object;
.source "GnssTimeUpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/GnssTimeUpdateService;->requestGnssTimeUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 121
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .line 124
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$000()Z

    move-result v0

    const-string v1, "GnssTimeUpdateService"

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "onLocationChanged()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$100(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    .line 131
    .local v0, "locationTime":Landroid/location/LocationTime;
    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$200(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationTime;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const-string v2, "getGnssTimeMillis() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$400(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v2}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$300(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 140
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$302(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationListener;)Landroid/location/LocationListener;

    .line 142
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    new-instance v2, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$502(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)Landroid/app/AlarmManager$OnAlarmListener;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 155
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$600()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 156
    .local v1, "next":J
    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v3}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$700(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 160
    invoke-static {v3}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$500(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v10

    .line 161
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 156
    const-string v9, "GnssTimeUpdateService"

    move-wide v7, v1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 162
    return-void
.end method
