.class public Lcom/android/server/app/GameManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "GameManagerShellCommand.java"


# static fields
.field private static final DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Long;

    .line 62
    const-wide/32 v2, 0xa09e1d7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 63
    const-wide/32 v2, 0xae57a6b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 64
    const-wide/32 v2, 0xb52b546

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 65
    const-wide/32 v2, 0xa8bb021

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 66
    const-wide/32 v2, 0xb52b573

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 67
    const-wide/32 v2, 0xa8bb06d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 68
    const-wide/32 v2, 0xb52b550

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 69
    const-wide/32 v2, 0xa8bb033

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 70
    const-wide/32 v2, 0xb52b674

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 71
    const-wide/32 v2, 0xa8bb015

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 72
    const-wide/32 v2, 0xb52b576

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 73
    const-wide/32 v2, 0xb52b676

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 74
    const-wide/32 v2, 0xb52b555

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 75
    const-wide/32 v2, 0xb52b678

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/app/GameManagerShellCommand;->DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCommand$0(JLjava/lang/Long;)Z
    .locals 4
    .param p0, "changeId"    # J
    .param p2, "it"    # Ljava/lang/Long;

    .line 104
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xa09e1d7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private runGameMode(Ljava/io/PrintWriter;)I
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "option":Ljava/lang/String;
    const/4 v2, 0x0

    .line 147
    .local v2, "userIdStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "--user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "gameMode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 154
    const-string v5, "game"

    invoke-static {v5}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 153
    invoke-static {v5}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v5

    .line 155
    .local v5, "service":Landroid/app/IGameManagerService;
    const/4 v6, 0x0

    .line 156
    .local v6, "batteryModeSupported":Z
    const/4 v7, 0x0

    .line 157
    .local v7, "perfModeSupported":Z
    invoke-interface {v5, v4}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v8

    .line 158
    .local v8, "modes":[I
    array-length v9, v8

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ge v11, v9, :cond_3

    aget v14, v8, v11

    .line 159
    .local v14, "mode":I
    if-ne v14, v13, :cond_1

    .line 160
    const/4 v7, 0x1

    goto :goto_1

    .line 161
    :cond_1
    if-ne v14, v12, :cond_2

    .line 162
    const/4 v6, 0x1

    .line 158
    .end local v14    # "mode":I
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 165
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    .line 166
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    :goto_2
    nop

    .line 167
    .local v9, "userId":I
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, -0x1

    sparse-switch v14, :sswitch_data_0

    :cond_5
    goto :goto_3

    :sswitch_0
    const-string/jumbo v14, "standard"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v15

    goto :goto_4

    :sswitch_1
    const-string v14, "3"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x4

    goto :goto_4

    :sswitch_2
    const-string v14, "2"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v13

    goto :goto_4

    :sswitch_3
    const-string v14, "1"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :sswitch_4
    const-string v14, "battery"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x5

    goto :goto_4

    :sswitch_5
    const-string/jumbo v14, "performance"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v12

    goto :goto_4

    :goto_3
    move/from16 v11, v16

    :goto_4
    const-string v14, " not supported by "

    const-string v10, "Game mode: "

    packed-switch v11, :pswitch_data_0

    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid game mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    return v16

    .line 193
    :pswitch_0
    if-eqz v6, :cond_6

    .line 194
    invoke-interface {v5, v4, v12, v9}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_6

    .line 197
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    return v16

    .line 182
    :pswitch_1
    if-eqz v7, :cond_7

    .line 183
    invoke-interface {v5, v4, v13, v9}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_6

    .line 186
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    return v16

    .line 171
    :pswitch_2
    if-nez v6, :cond_9

    if-eqz v7, :cond_8

    goto :goto_5

    .line 175
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    return v16

    .line 172
    :cond_9
    :goto_5
    invoke-interface {v5, v4, v15, v9}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 206
    :goto_6
    const/4 v10, 0x0

    return v10

    :sswitch_data_0
    .sparse-switch
        -0x583cefd0 -> :sswitch_5
        -0x13be51f3 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 14
    .param p1, "cmd"    # Ljava/lang/String;

    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 85
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "downscale"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    .line 133
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runGameMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "ratio":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->getCompatChangeId(Ljava/lang/String;)J

    move-result-wide v5

    .line 91
    .local v5, "changeId":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const-string v9, "disable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid scaling ratio \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    nop

    .line 140
    .end local v2    # "ratio":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "changeId":J
    goto/16 :goto_5

    .line 96
    .restart local v2    # "ratio":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "changeId":J
    :cond_2
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 98
    .local v9, "enabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    cmp-long v10, v5, v7

    if-nez v10, :cond_3

    .line 99
    sget-object v10, Lcom/android/server/app/GameManagerShellCommand;->DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;

    .local v10, "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto :goto_2

    .line 101
    .end local v10    # "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_3
    const-wide/32 v10, 0xa09e1d7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v10, Lcom/android/server/app/GameManagerShellCommand;->DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/server/app/GameManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v11, v5, v6}, Lcom/android/server/app/GameManagerShellCommand$$ExternalSyntheticLambda0;-><init>(J)V

    .line 104
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 105
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 108
    .restart local v10    # "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_2
    const-string/jumbo v11, "platform_compat"

    .line 109
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Lcom/android/server/compat/PlatformCompat;

    .line 110
    .local v11, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    new-instance v12, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v13, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v13, v9, v10}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v12, v13}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 114
    .local v12, "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {v11, v12, v4}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 115
    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disable downscaling for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 118
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enable downscaling ratio for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_3
    return v3

    .line 136
    .end local v2    # "ratio":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "changeId":J
    .end local v9    # "enabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v10    # "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v11    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v12    # "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :goto_4
    return v1

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3339a3 -> :sswitch_1
        0x4e9b79e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 213
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Game manager (game) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v1, "  downscale [0.3|0.35|0.4|0.45|0.5|0.55|0.6|0.65|0.7|0.75|0.8|0.85|0.9|disable] <PACKAGE_NAME>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v1, "      Force app to run at the specified scaling ratio."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const-string v1, "  mode [--user <USER_ID>] [1|2|3|standard|performance|battery] <PACKAGE_NAME>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v1, "      Force app to run in the specified game mode, if supported."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string v1, "      --user <USER_ID>: apply for the given user, the current user is used when unspecified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    return-void
.end method
