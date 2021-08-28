.class Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.super Ljava/lang/Object;
.source "SystemSettingsHelper.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceConfigSetting"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mName:Ljava/lang/String;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    .line 628
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 629
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 646
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    return-void
.end method

.method protected declared-synchronized isRegistered()Z
    .locals 1

    monitor-enter p0

    .line 632
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 632
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPropertiesChanged()V
    .locals 3

    .line 663
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location device config setting changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 668
    .local v1, "listener":Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 669
    .end local v1    # "listener":Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;
    goto :goto_0

    .line 670
    :cond_1
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 655
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    .line 660
    return-void
.end method

.method protected declared-synchronized register()V
    .locals 2

    monitor-enter p0

    .line 636
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 637
    monitor-exit p0

    return-void

    .line 640
    :cond_0
    :try_start_1
    const-string/jumbo v0, "location"

    .line 641
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 640
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 635
    .end local p0    # "this":Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 650
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method
