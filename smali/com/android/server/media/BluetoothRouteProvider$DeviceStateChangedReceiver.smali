.class Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p2, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$1;

    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method

.method private handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "profile"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 504
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 505
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 506
    .local v1, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 507
    if-nez v1, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v2, p3}, Lcom/android/server/media/BluetoothRouteProvider;->access$500(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v1

    .line 509
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 510
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v2, v2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v2}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 516
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    .line 518
    :cond_2
    if-eqz v1, :cond_3

    .line 519
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 520
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 521
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-static {v2, v3}, Lcom/android/server/media/BluetoothRouteProvider;->access$1200(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 522
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v2}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 526
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 497
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 494
    :pswitch_1
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 495
    goto :goto_2

    .line 487
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$1000(Lcom/android/server/media/BluetoothRouteProvider;I)V

    .line 488
    if-eqz p3, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0, p3}, Lcom/android/server/media/BluetoothRouteProvider;->access$1100(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 492
    goto :goto_2

    .line 480
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$1000(Lcom/android/server/media/BluetoothRouteProvider;I)V

    .line 481
    if-eqz p3, :cond_2

    .line 482
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$600(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 485
    nop

    .line 500
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2486726f -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
