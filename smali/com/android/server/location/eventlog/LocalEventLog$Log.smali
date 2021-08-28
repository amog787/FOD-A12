.class interface abstract Lcom/android/server/location/eventlog/LocalEventLog$Log;
.super Ljava/lang/Object;
.source "LocalEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Log"
.end annotation


# virtual methods
.method public abstract filter(Ljava/lang/String;)Z
.end method

.method public abstract getLogString()Ljava/lang/String;
.end method

.method public abstract getTimeDeltaMs()J
.end method

.method public abstract isFiller()Z
.end method
