.class Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HardKeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 290
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleHardKeyboardStatusChange(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 301
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$200(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$300(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$400(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 303
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$300(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$400(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/view/View;

    move-result-object v1

    const v2, 0x10202ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 306
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 305
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_1
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHardKeyboardStatusChange(Z)V
    .locals 4
    .param p1, "available"    # Z

    .line 293
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$100(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->access$100(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/os/Handler;

    move-result-object v1

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 293
    const/16 v3, 0xfa0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method
