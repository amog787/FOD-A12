.class public Lcom/android/server/power/WakeLockLog$Injector;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 1302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1306
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getLogSize()I
    .locals 1

    .line 1298
    const/16 v0, 0x2800

    return v0
.end method

.method public getTagDatabaseSize()I
    .locals 1

    .line 1294
    const/16 v0, 0x80

    return v0
.end method
