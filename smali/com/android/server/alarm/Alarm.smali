.class Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field public static final APP_STANDBY_POLICY_INDEX:I = 0x1

.field public static final BATTERY_SAVER_POLICY_INDEX:I = 0x3

.field public static final DEVICE_IDLE_POLICY_INDEX:I = 0x2

.field static final EXACT_ALLOW_REASON_ALLOW_LIST:I = 0x1

.field static final EXACT_ALLOW_REASON_COMPAT:I = 0x2

.field static final EXACT_ALLOW_REASON_NOT_APPLICABLE:I = -0x1

.field static final EXACT_ALLOW_REASON_PERMISSION:I = 0x0

.field public static final NUM_POLICIES:I = 0x4

.field public static final REQUESTER_POLICY_INDEX:I


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public mExactAllowReason:I

.field public mIdleOptions:Landroid/os/Bundle;

.field private mMaxWhenElapsed:J

.field private mPolicyWhenElapsed:[J

.field private mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 17
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "requestedWhenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "interval"    # J
    .param p10, "op"    # Landroid/app/PendingIntent;
    .param p11, "rec"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "ws"    # Landroid/os/WorkSource;
    .param p14, "flags"    # I
    .param p15, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "uid"    # I
    .param p17, "pkgName"    # Ljava/lang/String;
    .param p18, "idleOptions"    # Landroid/os/Bundle;
    .param p19, "exactAllowReason"    # I

    .line 120
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v1, v0, Lcom/android/server/alarm/Alarm;->type:I

    .line 122
    move-wide/from16 v8, p2

    iput-wide v8, v0, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 123
    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v1, v11, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v11, v10

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 125
    const/4 v11, 0x4

    new-array v11, v11, [J

    iput-object v11, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 126
    aput-wide v2, v11, v10

    .line 127
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 128
    iput-wide v4, v0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 129
    add-long v10, v2, v4

    invoke-static {v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 130
    move-wide/from16 v10, p8

    iput-wide v10, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 131
    iput-object v6, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 132
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 133
    iput-object v7, v0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 134
    invoke-static {v6, v7, v1}, Lcom/android/server/alarm/Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 135
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 136
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 137
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 138
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    .line 139
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 140
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 141
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    .line 142
    if-eqz v6, :cond_2

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2

    :cond_2
    move-object/from16 v1, p17

    :goto_2
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 143
    if-eqz v6, :cond_3

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    goto :goto_3

    :cond_3
    move/from16 v1, p16

    :goto_3
    iput v1, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 144
    return-void
.end method

.method private static exactReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 263
    packed-switch p0, :pswitch_data_0

    .line 273
    const-string v0, "--unknown--"

    return-object v0

    .line 267
    :pswitch_0
    const-string v0, "compat"

    return-object v0

    .line 265
    :pswitch_1
    const-string v0, "allow-listed"

    return-object v0

    .line 269
    :pswitch_2
    const-string/jumbo v0, "permission"

    return-object v0

    .line 271
    :pswitch_3
    const-string v0, "N/A"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 147
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    const-string v0, "*alarm*:"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "*walarm*:"

    .line 149
    .local v0, "alarmString":Ljava/lang/String;
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method private static policyIndexToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .line 248
    packed-switch p0, :pswitch_data_0

    .line 258
    const-string v0, "--unknown--"

    return-object v0

    .line 256
    :pswitch_0
    const-string v0, "battery_saver"

    return-object v0

    .line 254
    :pswitch_1
    const-string v0, "device_idle"

    return-object v0

    .line 252
    :pswitch_2
    const-string v0, "app_standby"

    return-object v0

    .line 250
    :pswitch_3
    const-string/jumbo v0, "requester"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 278
    packed-switch p0, :pswitch_data_0

    .line 288
    const-string v0, "--unknown--"

    return-object v0

    .line 284
    :pswitch_0
    const-string v0, "ELAPSED"

    return-object v0

    .line 286
    :pswitch_1
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 280
    :pswitch_2
    const-string v0, "RTC"

    return-object v0

    .line 282
    :pswitch_3
    const-string v0, "RTC_WAKEUP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWhenElapsed()Z
    .locals 12

    .line 215
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 216
    .local v0, "oldWhenElapsed":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 217
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 218
    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v5, v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_0
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 223
    .local v2, "oldMaxWhenElapsed":J
    iget-object v4, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v6

    .line 225
    .local v6, "maxRequestedElapsed":J
    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 227
    iget-wide v10, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v4, v0, v10

    if-nez v4, :cond_1

    cmp-long v4, v2, v8

    if-eqz v4, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 4
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 293
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v0, v1

    .line 294
    .local v0, "isRtc":Z
    const-string/jumbo v1, "tag="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 299
    const-string v1, " origWhen="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 300
    if-eqz v0, :cond_2

    .line 301
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_2
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 305
    :goto_1
    const-string v1, " window="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 307
    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 308
    const-string v1, " exactAllowReason="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->exactReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 311
    :cond_3
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 313
    const-string v1, " count="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget v1, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 315
    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget v1, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v1, "policyWhenElapsed:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 325
    const-string/jumbo v1, "whenElapsed="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 327
    const-string v1, " maxWhenElapsed="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 329
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 331
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_5

    .line 332
    const-string v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    const-string v1, "  triggerTime="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 335
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string v1, "  showIntent="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 340
    :cond_5
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    .line 341
    const-string/jumbo v1, "operation="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 344
    :cond_6
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v1, :cond_7

    .line 345
    const-string/jumbo v1, "listener="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 348
    :cond_7
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    .line 349
    const-string v1, "idle-options="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :cond_8
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "nowElapsed"    # J

    .line 355
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 357
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 358
    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 359
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    sub-long/2addr v2, p4

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 360
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 361
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 362
    iget v2, p0, Lcom/android/server/alarm/Alarm;->count:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 363
    iget v2, p0, Lcom/android/server/alarm/Alarm;->flags:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 364
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_0

    .line 365
    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 368
    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v2, :cond_2

    .line 371
    const-wide v3, 0x1090000000aL

    invoke-interface {v2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 374
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 375
    return-void
.end method

.method public getMaxWhenElapsed()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    return-wide v0
.end method

.method getPolicyElapsed(I)J
    .locals 2
    .param p1, "policyIndex"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getRequestedElapsed()J
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getWhenElapsed()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    return-wide v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .line 154
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 156
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPolicyElapsed(IJ)Z
    .locals 1
    .param p1, "policyIndex"    # I
    .param p2, "policyElapsed"    # J

    .line 206
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    .line 207
    invoke-direct {p0}, Lcom/android/server/alarm/Alarm;->updateWhenElapsed()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, " origWhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, " whenElapsed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
