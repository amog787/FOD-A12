.class public Lcom/android/server/tracing/TracingServiceProxy;
.super Lcom/android/server/SystemService;
.source "TracingServiceProxy.java"


# static fields
.field private static final INTENT_ACTION_NOTIFY_SESSION_STOLEN:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOLEN"

.field private static final INTENT_ACTION_NOTIFY_SESSION_STOPPED:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOPPED"

.field private static final TAG:Ljava/lang/String; = "TracingServiceProxy"

.field private static final TRACING_APP_ACTIVITY:Ljava/lang/String; = "com.android.traceur.StopTraceService"

.field private static final TRACING_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.traceur"

.field public static final TRACING_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "tracing.proxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/tracing/TracingServiceProxy$1;-><init>(Lcom/android/server/tracing/TracingServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    .line 69
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tracing/TracingServiceProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tracing/TracingServiceProxy;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->notifyTraceur(Z)V

    return-void
.end method

.method private notifyTraceur(Z)V
    .locals 7
    .param p1, "sessionStolen"    # Z

    .line 79
    const-string v0, "TracingServiceProxy"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.traceur"

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 86
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.traceur.StopTraceService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v3, "com.android.traceur.NOTIFY_SESSION_STOLEN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 90
    :cond_0
    const-string v3, "com.android.traceur.NOTIFY_SESSION_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_1
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 96
    :catch_0
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v6, "Failed to notifyTraceSessionEnded"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 104
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_2
    goto :goto_4

    .line 99
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "identity":J
    :goto_3
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/tracing/TracingServiceProxy;
    .end local p1    # "sessionStolen":Z
    throw v5
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/tracing/TracingServiceProxy;
    .restart local p1    # "sessionStolen":Z
    :catch_1
    move-exception v2

    .line 103
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Failed to locate Traceur"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    const-string v1, "tracing.proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tracing/TracingServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 76
    return-void
.end method
