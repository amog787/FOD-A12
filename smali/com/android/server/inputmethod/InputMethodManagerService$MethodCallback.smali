.class final Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mChannel:Landroid/view/InputChannel;

.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 1453
    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    .line 1454
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1455
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    .line 1456
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    .line 1457
    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 7
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    .line 1461
    const-wide/16 v0, 0x20

    const-string v2, "IMMS.sessionCreated"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1464
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1467
    nop

    .line 1468
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1469
    return-void

    .line 1466
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1467
    throw v0
.end method
