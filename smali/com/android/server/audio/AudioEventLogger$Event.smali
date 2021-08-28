.class public abstract Lcom/android/server/audio/AudioEventLogger$Event;
.super Ljava/lang/Object;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Event"
.end annotation


# static fields
.field public static final ALOGE:I = 0x1

.field public static final ALOGI:I = 0x0

.field public static final ALOGV:I = 0x3

.field public static final ALOGW:I = 0x2

.field private static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioEventLogger$Event;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/audio/AudioEventLogger$Event;->mTimestamp:J

    .line 44
    return-void
.end method


# virtual methods
.method public abstract eventToString()Ljava/lang/String;
.end method

.method public printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;
    .locals 1
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    nop

    .line 93
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioEventLogger$Event;->sFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/audio/AudioEventLogger$Event;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method
