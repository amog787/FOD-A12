.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderEnabledEvent"
.end annotation


# instance fields
.field private final mEnabled:Z

.field private final mUserId:I


# direct methods
.method constructor <init>(JLjava/lang/String;IZ)V
    .locals 0
    .param p1, "timeDelta"    # J
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "enabled"    # Z

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(JLjava/lang/String;)V

    .line 296
    iput p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mUserId:I

    .line 297
    iput-boolean p5, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mEnabled:Z

    .line 298
    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    .line 303
    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0
.end method
