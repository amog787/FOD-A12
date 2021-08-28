.class interface abstract Lcom/android/server/display/DisplayModeDirector$Injector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Injector"
.end annotation


# static fields
.field public static final DISPLAY_BRIGHTNESS_URI:Landroid/net/Uri;

.field public static final PEAK_REFRESH_RATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2395
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayModeDirector$Injector;->DISPLAY_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 2396
    const-string/jumbo v0, "peak_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
.end method

.method public abstract getDeviceConfig()Lcom/android/server/utils/DeviceConfigInterface;
.end method

.method public abstract registerBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method

.method public abstract registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
.end method

.method public abstract registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method

.method public abstract unregisterBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method
