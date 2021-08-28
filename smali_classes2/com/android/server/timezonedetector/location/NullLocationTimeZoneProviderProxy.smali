.class Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.source "NullLocationTimeZoneProviderProxy.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    const-string v1, "{NullLocationTimeZoneProviderProxy}"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleTestCommand(Lcom/android/server/timezonedetector/location/TestCommand;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "testCommand"    # Lcom/android/server/timezonedetector/location/TestCommand;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string v1, "ERROR"

    const-string v2, "Provider is disabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 78
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method onDestroy()V
    .locals 0

    .line 58
    return-void
.end method

.method onInitialize()V
    .locals 0

    .line 53
    return-void
.end method

.method setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->sendUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Provider is disabled"

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createPermanentFailureEvent(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v0

    .line 65
    .local v0, "event":Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;->handleTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 67
    .end local v0    # "event":Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    :cond_0
    return-void
.end method
