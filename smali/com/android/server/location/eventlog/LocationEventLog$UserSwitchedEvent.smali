.class final Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;
.super Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSwitchedEvent"
.end annotation


# instance fields
.field private final mUserIdFrom:I

.field private final mUserIdTo:I


# direct methods
.method constructor <init>(JII)V
    .locals 0
    .param p1, "timeDelta"    # J
    .param p3, "userIdFrom"    # I
    .param p4, "userIdTo"    # I

    .line 501
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;-><init>(J)V

    .line 502
    iput p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdFrom:I

    .line 503
    iput p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdTo:I

    .line 504
    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current user switched from u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdTo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
