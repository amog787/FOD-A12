.class Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;
.super Ljava/lang/Object;
.source "GnssTimeUpdateService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/GnssTimeUpdateService$1;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/timedetector/GnssTimeUpdateService$1;


# direct methods
.method constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/timedetector/GnssTimeUpdateService$1;

    .line 142
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;->this$1:Lcom/android/server/timedetector/GnssTimeUpdateService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "GnssTimeUpdateService"

    const-string v1, "onAlarm()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;->this$1:Lcom/android/server/timedetector/GnssTimeUpdateService$1;

    iget-object v0, v0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->access$502(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)Landroid/app/AlarmManager$OnAlarmListener;

    .line 149
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;->this$1:Lcom/android/server/timedetector/GnssTimeUpdateService$1;

    iget-object v0, v0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->requestGnssTimeUpdates()V

    .line 150
    return-void
.end method
