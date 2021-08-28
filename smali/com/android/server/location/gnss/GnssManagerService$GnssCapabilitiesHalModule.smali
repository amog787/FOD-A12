.class Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;
.super Ljava/lang/Object;
.source "GnssManagerService.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssCapabilitiesHalModule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0
    .param p2, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 324
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .locals 5
    .param p1, "oldCapabilities"    # Landroid/location/GnssCapabilities;
    .param p2, "newCapabilities"    # Landroid/location/GnssCapabilities;

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 336
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.action.GNSS_CAPABILITIES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.location.extra.GNSS_CAPABILITIES"

    .line 337
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 338
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 339
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 340
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssCapabilitiesHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v3, v3, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    nop

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    throw v2
.end method

.method public onHalRestarted()V
    .locals 0

    .line 329
    return-void
.end method
