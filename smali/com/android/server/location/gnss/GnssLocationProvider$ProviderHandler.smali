.class final Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1368
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 1369
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1370
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1374
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1375
    .local v0, "message":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1389
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/GnssStatus;

    invoke-static {v1, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1100(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V

    goto :goto_0

    .line 1386
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-static {v3, v1, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1000(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    .line 1387
    goto :goto_0

    .line 1380
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$800(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    .line 1381
    goto :goto_0

    .line 1383
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 1384
    goto :goto_0

    .line 1377
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$700(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/NtpTimeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/gnss/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    .line 1378
    nop

    .line 1392
    :goto_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_2

    .line 1394
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1200(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1395
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock released by handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1300(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
