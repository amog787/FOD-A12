.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderUpdateEvent"
.end annotation


# instance fields
.field private final mRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .locals 0
    .param p1, "timeDelta"    # J
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "request"    # Landroid/location/provider/ProviderRequest;

    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(JLjava/lang/String;)V

    .line 395
    iput-object p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 396
    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
