.class public Lcom/android/server/location/injector/SystemAppForegroundHelper;
.super Lcom/android/server/location/injector/AppForegroundHelper;
.source "SystemAppForegroundHelper.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$Yq4Uol0cKBkywoHPg9SHJHpQCjk(Lcom/android/server/location/injector/SystemAppForegroundHelper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onAppForegroundChanged(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/android/server/location/injector/AppForegroundHelper;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private onAppForegroundChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 58
    invoke-static {p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->isForeground(I)Z

    move-result v0

    .line 59
    .local v0, "foreground":Z
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public isAppForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 68
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->isForeground(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return v2

    .line 70
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    throw v2
.end method

.method public synthetic lambda$onAppForegroundChanged$0$SystemAppForegroundHelper(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->notifyAppForeground(IZ)V

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 52
    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 54
    return-void
.end method
