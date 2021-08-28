.class Lcom/android/server/NsdService$NsdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NsdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdStateMachine$EnabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$DisabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

.field private final mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

.field private final mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 88
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    .line 89
    new-instance v1, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    .line 90
    new-instance v2, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 137
    invoke-virtual {p0, v1, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 138
    invoke-virtual {p0, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 139
    invoke-static {p1}, Lcom/android/server/NsdService;->access$300(Lcom/android/server/NsdService;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, v2

    :cond_0
    move-object p1, v1

    .line 140
    .local p1, "initialState":Lcom/android/internal/util/State;
    invoke-virtual {p0, p1}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 141
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setLogRecSize(I)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V

    .line 143
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 86
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 86
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->cancelStop()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 86
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->maybeScheduleStop()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 86
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 86
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->maybeStartDaemon()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 86
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->scheduleStop()V

    return-void
.end method

.method private cancelStop()V
    .locals 1

    .line 116
    const v0, 0x60015

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->removeMessages(I)V

    .line 117
    return-void
.end method

.method private isAnyRequestActive()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$100(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeScheduleStop()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->isAnyRequestActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->scheduleStop()V

    .line 113
    :cond_0
    return-void
.end method

.method private maybeStartDaemon()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$000(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->maybeStart()V

    .line 99
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->maybeScheduleStop()V

    .line 100
    return-void
.end method

.method private registerForNsdSetting()V
    .locals 3

    .line 123
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$1;

    invoke-virtual {p0}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine$1;-><init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V

    .line 130
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    const-string/jumbo v1, "nsd_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/server/NsdService$NsdSettings;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 132
    return-void
.end method

.method private scheduleStop()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$200(Lcom/android/server/NsdService;)J

    move-result-wide v0

    const v2, 0x60015

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessageDelayed(IJ)V

    .line 108
    return-void
.end method


# virtual methods
.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .line 94
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
