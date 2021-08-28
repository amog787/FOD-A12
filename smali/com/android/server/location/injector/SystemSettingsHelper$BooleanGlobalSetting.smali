.class Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanGlobalSetting"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 511
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 512
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    .line 513
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 514
    return-void
.end method


# virtual methods
.method public getValue(Z)Z
    .locals 7
    .param p1, "defaultValue"    # Z

    .line 521
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 523
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 524
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 523
    :goto_0
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    .line 526
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    return v4

    .line 526
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 527
    throw v2
.end method

.method public register()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    .line 518
    return-void
.end method
