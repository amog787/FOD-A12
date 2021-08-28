.class Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.source "SimulatedLocationTimeZoneProviderProxy.java"


# instance fields
.field private final mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;


# direct methods
.method public static synthetic $r8$lambda$YoMOCHoPjFXNb7jtCRdvM3AqgfQ(Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->onUnbindOnHandlerThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$ld4zGREJK7ezWXEbXW-SKuSzkT0(Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->onBindOnHandlerThread()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    .line 53
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 59
    invoke-static {}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->createStopUpdatesRequest()Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 60
    return-void
.end method

.method private static createTimeZoneProviderEventFromTestCommand(Lcom/android/server/timezonedetector/location/TestCommand;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    .locals 6
    .param p0, "testCommand"    # Lcom/android/server/timezonedetector/location/TestCommand;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/TestCommand;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "perm_fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "uncertain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 206
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v2, "Error: Unknown command name %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/TestCommand;->getArgs()Landroid/os/Bundle;

    move-result-object v1

    .line 193
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "tz"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "timeZoneIds":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 199
    new-instance v3, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;

    invoke-direct {v3}, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;-><init>()V

    .line 200
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->setTimeZoneIds(Ljava/util/List;)Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;

    move-result-object v3

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->setElapsedRealtimeMillis(J)Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;->build()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v3

    .line 203
    .local v3, "suggestion":Landroid/service/timezone/TimeZoneProviderSuggestion;
    invoke-static {v3}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createSuggestionEvent(Landroid/service/timezone/TimeZoneProviderSuggestion;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v4

    return-object v4

    .line 196
    .end local v3    # "suggestion":Landroid/service/timezone/TimeZoneProviderSuggestion;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No tz arg found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "timeZoneIds":[Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createUncertainEvent()Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v1

    return-object v1

    .line 186
    :pswitch_2
    const-string v1, "Simulated failure"

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->createPermanentFailureEvent(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7218f017 -> :sswitch_2
        -0x6f4abffd -> :sswitch_1
        0x27b8730d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onBindOnHandlerThread()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 128
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onProviderBound()V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUnbindOnHandlerThread()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 136
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onProviderUnbound()V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static printTestCommandShellHelp(Ljava/io/PrintWriter;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 171
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "on_bind"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 172
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "on_unbind"

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 173
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "perm_fail"

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 174
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "uncertain"

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "success"

    aput-object v2, v1, v3

    const-string v2, "tz"

    aput-object v2, v1, v0

    const-string v0, "%s %s=string_array:<time zone id>[&<time zone id>]+\n"

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 178
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    const-string v1, "{SimulatedLocationTimeZoneProviderProxy}"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 160
    const-string v1, "Last event history:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 162
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleTestCommand(Lcom/android/server/timezonedetector/location/TestCommand;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p1, "testCommand"    # Lcom/android/server/timezonedetector/location/TestCommand;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 73
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v1, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/TestCommand;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v4, "on_unbind"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v6

    goto :goto_0

    :sswitch_1
    const-string v4, "perm_fail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v4, "on_bind"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_3
    const-string v4, "success"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v4, "uncertain"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 95
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->sendUpdates()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCommand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is testing an invalid case: updates are off. mRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v3, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v3, "SUCCESS"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    const-string v3, "ERROR"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    goto/16 :goto_2

    .line 104
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulating TimeZoneProviderEvent, testCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    nop

    .line 106
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->createTimeZoneProviderEventFromTestCommand(Lcom/android/server/timezonedetector/location/TestCommand;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    move-result-object v2

    .line 107
    .local v2, "timeZoneProviderEvent":Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    invoke-virtual {p0, v2}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->handleTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    .line 108
    const-string v3, "SUCCESS"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    goto :goto_2

    .line 87
    .end local v2    # "timeZoneProviderEvent":Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulating onProviderUnbound(), testCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v3, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;)V

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 89
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    goto :goto_2

    .line 81
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulating onProviderBound(), testCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v3, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;)V

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 83
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    goto :goto_2

    .line 112
    :goto_1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown test event type. testCommand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v3, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v3, "SUCCESS"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    const-string v3, "ERROR"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    nop

    .line 119
    .end local v2    # "errorMsg":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 122
    .end local v1    # "resultBundle":Landroid/os/Bundle;
    :cond_2
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7218f017 -> :sswitch_4
        -0x6f4abffd -> :sswitch_3
        -0x4f0e5d63 -> :sswitch_2
        0x27b8730d -> :sswitch_1
        0x5bc0a4b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onDestroy()V
    .locals 0

    .line 70
    return-void
.end method

.method onInitialize()V
    .locals 0

    .line 65
    return-void
.end method

.method final setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 143
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mLastEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/SimulatedLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
