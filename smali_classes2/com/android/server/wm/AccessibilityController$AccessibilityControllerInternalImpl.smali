.class final Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityControllerInternalImpl"
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;


# instance fields
.field private final mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 1959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1960
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 1961
    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
    .locals 2
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 1950
    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->access$1900()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1951
    :try_start_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    if-nez v1, :cond_0

    .line 1952
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 1954
    :cond_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    monitor-exit v0

    return-object v1

    .line 1955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isAccessibilityTracingEnabled()Z
    .locals 1

    .line 1975
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V
    .locals 6
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "callingParams"    # Ljava/lang/String;
    .param p3, "a11yDump"    # [B
    .param p4, "callingUid"    # I
    .param p5, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 1982
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;)V

    .line 1983
    return-void
.end method

.method public logTrace(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJ)V
    .locals 12
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "callingParams"    # Ljava/lang/String;
    .param p3, "a11yDump"    # [B
    .param p4, "callingUid"    # I
    .param p5, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p6, "timeStamp"    # J
    .param p8, "processId"    # I
    .param p9, "threadId"    # J

    .line 1989
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;Ljava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJ)V

    .line 1991
    return-void
.end method

.method public startTrace()V
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->startTrace()V

    .line 1966
    return-void
.end method

.method public stopTrace()V
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->stopTrace()V

    .line 1971
    return-void
.end method
