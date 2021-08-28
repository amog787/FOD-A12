.class Lcom/android/server/accessibility/AccessibilityTraceManager;
.super Ljava/lang/Object;
.source "AccessibilityTraceManager.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityTrace;


# instance fields
.field private final mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

.field private final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "a11yController"    # Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 36
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 37
    return-void
.end method


# virtual methods
.method public isA11yTracingEnabled()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v0

    return v0
.end method

.method public logTrace(JLjava/lang/String;Ljava/lang/String;IJI[Ljava/lang/StackTraceElement;)V
    .locals 13
    .param p1, "timestamp"    # J
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "processId"    # I
    .param p6, "threadId"    # J
    .param p8, "callingUid"    # I
    .param p9, "callStack"    # [Ljava/lang/StackTraceElement;

    .line 74
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-wide v8, p1

    move/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-interface/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJ)V

    .line 78
    :cond_0
    return-void
.end method

.method public logTrace(Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;

    .line 62
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public logTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "callingParams"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 67
    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V

    .line 69
    return-void
.end method

.method onHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 95
    const-string v0, "  start-trace"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v0, "    Start the debug tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v0, "  stop-trace"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "    Stop the debug tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method onShellCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "stop-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start-trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 91
    return v1

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->stopTrace()V

    .line 88
    return v2

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->startTrace()V

    .line 84
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4fec781a -> :sswitch_1
        0x6ebe83ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTrace()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->startTrace()V

    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 50
    :cond_0
    return-void
.end method

.method public stopTrace()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->isAccessibilityTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;->stopTrace()V

    .line 56
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 58
    :cond_0
    return-void
.end method
