.class Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;
.super Ljava/lang/Object;
.source "BinderLocationTimeZoneProvider.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    .line 56
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderBound()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->access$000(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V

    .line 66
    return-void
.end method

.method public onProviderUnbound()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    const-string v1, "onProviderUnbound()"

    invoke-static {v0, v1}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->access$100(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onReportTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V
    .locals 1
    .param p1, "timeZoneProviderEvent"    # Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    .line 60
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->handleTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 61
    return-void
.end method
