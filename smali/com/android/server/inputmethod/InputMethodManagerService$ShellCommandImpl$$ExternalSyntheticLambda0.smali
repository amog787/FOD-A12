.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl(Ljava/lang/String;)V

    return-void
.end method
