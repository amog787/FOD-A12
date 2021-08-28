.class Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
.super Landroid/service/timezone/ITimeZoneProviderManager$Stub;
.source "RealLocationTimeZoneProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-direct {p0}, Landroid/service/timezone/ITimeZoneProviderManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;
    .param p2, "x1"    # Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$1;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;-><init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V

    return-void
.end method

.method private onTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    .line 210
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->access$100(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 214
    monitor-exit v0

    return-void

    .line 216
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->handleTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onTimeZoneProviderPermanentFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "failureReason"    # Ljava/lang/String;

    .line 205
    nop

    .line 206
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createPermanentFailureEvent(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->onTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 207
    return-void
.end method

.method public onTimeZoneProviderSuggestion(Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .locals 1
    .param p1, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 192
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createSuggestionEvent(Landroid/service/timezone/TimeZoneProviderSuggestion;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->onTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 193
    return-void
.end method

.method public onTimeZoneProviderUncertain()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createUncertainEvent()Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->onTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 200
    return-void
.end method
