.class public Lcom/android/server/display/BrightnessSetting;
.super Ljava/lang/Object;
.source "BrightnessSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    }
.end annotation


# static fields
.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BrightnessSetting"


# instance fields
.field private mBrightness:F

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method constructor <init>(Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V
    .locals 2
    .param p1, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;
    .param p2, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;
    .param p3, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/server/display/BrightnessSetting$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessSetting$1;-><init>(Lcom/android/server/display/BrightnessSetting;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 62
    iput-object p1, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 63
    iput-object p2, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 64
    nop

    .line 65
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/server/display/PersistentDataStore;->getBrightness(Lcom/android/server/display/DisplayDevice;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 66
    iput-object p3, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/BrightnessSetting;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessSetting;
    .param p1, "x1"    # F

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessSetting;->notifyListeners(F)V

    return-void
.end method

.method private notifyListeners(F)V
    .locals 2
    .param p1, "brightness"    # F

    .line 119
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 120
    .local v1, "l":Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    invoke-interface {v1, p1}, Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;->onBrightnessChanged(F)V

    .line 121
    .end local v1    # "l":Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 76
    :try_start_0
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    monitor-exit v0

    return v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 84
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "BrightnessSetting"

    const-string v1, "Duplicate Listener added"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method setBrightness(F)V
    .locals 5
    .param p1, "brightness"    # F

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "BrightnessSetting"

    const-string v1, "Attempting to set invalid brightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 105
    :try_start_0
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 106
    monitor-exit v0

    return-void

    .line 109
    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 110
    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v2, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;F)Z

    .line 112
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 113
    .local v1, "toSend":I
    iget-object v2, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 114
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    nop

    .end local v1    # "toSend":I
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 96
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
