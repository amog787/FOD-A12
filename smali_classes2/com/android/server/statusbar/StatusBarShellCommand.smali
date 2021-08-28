.class public Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "StatusBarShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;
    }
.end annotation


# static fields
.field private static final sToken:Landroid/os/IBinder;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterface:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;-><init>(Lcom/android/server/statusbar/StatusBarShellCommand$1;)V

    sput-object v0, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private runAddTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->addTile(Landroid/content/ComponentName;)V

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method private runClickTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->clickTile(Landroid/content/ComponentName;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method private runCollapse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->collapsePanels()V

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method private runDisableForSetup()I
    .locals 7

    .line 137
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "arg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 141
    .local v2, "disable":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/high16 v5, 0x3a50000

    sget-object v6, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v5, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 149
    :goto_0
    return v3
.end method

.method private runExpandNotifications()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandNotificationsPanel()V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method private runExpandSettings()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method private runGc()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->runGcForTest()V

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method private runGetStatusIcons()I
    .locals 6

    .line 129
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 130
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getStatusBarIcons()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 131
    .local v5, "icon":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .end local v5    # "icon":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return v3
.end method

.method private runPassArgsToStatusBar()I
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method private runRemoveTile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method private runSendDisableFlag()I
    .locals 10

    .line 153
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "disable1":I
    const/4 v2, 0x0

    .line 157
    .local v2, "disable2":I
    new-instance v3, Landroid/app/StatusBarManager$DisableInfo;

    invoke-direct {v3}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    .line 159
    .local v3, "info":Landroid/app/StatusBarManager$DisableInfo;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "arg":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 161
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "notification-icons"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_1
    const-string v5, "recents"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    const-string v5, "statusbar-expansion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_3
    const-string v5, "clock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_4
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_2

    :sswitch_5
    const-string v5, "notification-alerts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_6
    const-string v7, "search"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :sswitch_7
    const-string v5, "system-icons"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 184
    :pswitch_0
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationIconsDisabled(Z)V

    .line 185
    goto :goto_3

    .line 181
    :pswitch_1
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setClockDisabled(Z)V

    .line 182
    goto :goto_3

    .line 178
    :pswitch_2
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setSystemIconsDisabled(Z)V

    .line 179
    goto :goto_3

    .line 175
    :pswitch_3
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    .line 176
    goto :goto_3

    .line 172
    :pswitch_4
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    .line 173
    goto :goto_3

    .line 169
    :pswitch_5
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    .line 170
    goto :goto_3

    .line 166
    :pswitch_6
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    .line 167
    goto :goto_3

    .line 163
    :pswitch_7
    invoke-virtual {v3, v8}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    .line 164
    nop

    .line 190
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 193
    :cond_1
    invoke-virtual {v3}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    move-result-object v6

    .line 195
    .local v6, "flagPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 198
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a7bc604 -> :sswitch_7
        -0x36059a58 -> :sswitch_6
        -0x2d0f4a47 -> :sswitch_5
        0x30f4df -> :sswitch_4
        0x5a5dc0e -> :sswitch_3
        0x3c4c98d3 -> :sswitch_2
        0x40828578 -> :sswitch_1
        0x518d53b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runTracing()I
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->stopTracing()V

    goto :goto_2

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->startTracing()V

    .line 210
    nop

    .line 215
    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    .line 50
    return v0

    .line 53
    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "expand-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "expand-notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "check-support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "disable-for-setup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "dump"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_6
    const-string v0, "-h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_7
    const-string v0, "remove-tile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "collapse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "click-tile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v0, "run-gc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "send-disable-flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_c
    const-string v0, "tracing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_d
    const-string v0, "get-status-icons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_e
    const-string v0, "add-tile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runPassArgsToStatusBar()I

    move-result v0

    goto :goto_2

    .line 87
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 84
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    .line 85
    return v3

    .line 79
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGc()I

    move-result v0

    return v0

    .line 77
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runTracing()I

    move-result v0

    return v0

    .line 75
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()I

    move-result v0

    return v0

    .line 73
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runDisableForSetup()I

    move-result v0

    return v0

    .line 71
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runGetStatusIcons()I

    move-result v0

    return v0

    .line 67
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 68
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    return v3

    .line 65
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runClickTile()I

    move-result v0

    return v0

    .line 63
    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runRemoveTile()I

    move-result v0

    return v0

    .line 61
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runAddTile()I

    move-result v0

    return v0

    .line 59
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runCollapse()I

    move-result v0

    return v0

    .line 57
    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandSettings()I

    move-result v0

    return v0

    .line 55
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runExpandNotifications()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 89
    :goto_2
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 93
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c69c7a6 -> :sswitch_e
        -0x49dc556a -> :sswitch_d
        -0x3f9f2f3e -> :sswitch_c
        -0x3ebc9eaa -> :sswitch_b
        -0x36d414a2 -> :sswitch_a
        -0x310f1c2d -> :sswitch_9
        -0x25acdc53 -> :sswitch_8
        -0x143fd1a9 -> :sswitch_7
        0x5db -> :sswitch_6
        0x2f39f4 -> :sswitch_5
        0x30cf41 -> :sswitch_4
        0x35c1e3d4 -> :sswitch_3
        0x6019c00a -> :sswitch_2
        0x611d4ef5 -> :sswitch_1
        0x63a92df6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 226
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v2, "  expand-notifications"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v2, "    Open the notifications panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v2, "  expand-settings"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v2, "    Open the notifications panel and expand quick settings if present."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v2, "  collapse"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v2, "    Collapse the notifications and settings panel."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v2, "  add-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v2, "    Add a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v2, "  remove-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v2, "    Remove a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const-string v2, "  click-tile COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const-string v2, "    Click on a TileService of the specified component"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const-string v2, "  check-support"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    const-string v2, "    Check if this device supports QS + APIs"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    const-string v2, "  get-status-icons"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v2, "    Print the list of status bar icons and the order they appear in"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const-string v2, "  disable-for-setup DISABLE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    const-string v2, "  send-disable-flag FLAG..."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const-string v2, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    const-string v2, "    Valid options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    const-string v2, "        <blank>             - equivalent to \"none\""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    const-string v2, "        none                - re-enables all components"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const-string v2, "        search              - disable search"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    const-string v2, "        home                - disable naviagation home"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    const-string v2, "        recents             - disable recents/overview"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const-string v2, "        notification-peek   - disable notification peeking"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const-string v2, "        statusbar-expansion - disable status bar expansion"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v2, "        system-icons        - disable system icons appearing in status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    const-string v2, "        clock               - disable clock appearing in status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    const-string v2, "        notification-icons  - disable notification icons from status bar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    const-string v2, "  tracing (start | stop)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    const-string v2, "    Start or stop SystemUI tracing"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const-string v2, "  NOTE: any command not listed here will be passed through to IStatusBar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    const-string v1, "  Commands implemented in SystemUI:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 279
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 280
    return-void
.end method
