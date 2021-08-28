.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderClientPermittedEvent"
.end annotation


# instance fields
.field private final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field private final mPermitted:Z


# direct methods
.method constructor <init>(JLjava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V
    .locals 0
    .param p1, "timeDelta"    # J
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "permitted"    # Z
    .param p5, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(JLjava/lang/String;)V

    .line 378
    iput-boolean p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    .line 379
    iput-object p5, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 380
    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;->mPermitted:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "permitted"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unpermitted"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    return-object v0
.end method
