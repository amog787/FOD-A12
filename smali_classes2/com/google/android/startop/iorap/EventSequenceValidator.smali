.class public Lcom/google/android/startop/iorap/EventSequenceValidator;
.super Ljava/lang/Object;
.source "EventSequenceValidator.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "EventSequenceValidator"


# instance fields
.field private accIntentStartedEvents:J

.field private state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    const-string v0, "EventSequenceValidator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    return-void
.end method

.method private decAccIntentStartedEvents()V
    .locals 4

    .line 247
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 250
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 253
    :cond_0
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    .line 254
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "dec AccIntentStartedEvents to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The number of unknowns cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private incAccIntentStartedEvents()V
    .locals 5

    .line 235
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 238
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 241
    :cond_0
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    .line 242
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 243
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "inc AccIntentStartedEvents to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The number of unknowns cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private logWarningWithStackTrace(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 259
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 261
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 262
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "EventSequenceValidator#getStackTrace"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 263
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "%s\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventSequenceValidator"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 5
    .param p1, "activity"    # [B

    .line 166
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 167
    const-string v0, "onActivityLaunchCancelled during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 169
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 172
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 173
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 175
    return-void

    .line 178
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 180
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 185
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 186
    const-string v0, "onActivityLaunchFinished during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 192
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 193
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 195
    return-void

    .line 198
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 200
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 149
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 150
    const-string v0, "onActivityLaunched during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 154
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 155
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 157
    return-void

    .line 160
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 162
    return-void
.end method

.method public onIntentFailed()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 131
    const-string v0, "onIntentFailed during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 136
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 137
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 139
    return-void

    .line 142
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 144
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 106
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentStarted during UNKNOWN. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 109
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    .line 117
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 118
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 120
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 121
    return-void

    .line 124
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 126
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 205
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 206
    const-string v0, "onReportFullyDrawn during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_1

    .line 210
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2

    .line 214
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 215
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 216
    return-void

    .line 219
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 221
    return-void
.end method
