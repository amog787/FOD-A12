.class Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 337
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 342
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$400(Lcom/android/server/policy/SingleKeyGestureDetector;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 346
    .local v0, "keyCode":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 347
    .local v1, "eventTime":J
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 368
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$600(Lcom/android/server/policy/SingleKeyGestureDetector;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$400(Lcom/android/server/policy/SingleKeyGestureDetector;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onPress(J)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$400(Lcom/android/server/policy/SingleKeyGestureDetector;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$600(Lcom/android/server/policy/SingleKeyGestureDetector;)I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JI)V

    .line 373
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    goto :goto_1

    .line 360
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$502(Lcom/android/server/policy/SingleKeyGestureDetector;Z)Z

    .line 361
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$400(Lcom/android/server/policy/SingleKeyGestureDetector;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onVeryLongPress(J)V

    .line 362
    goto :goto_1

    .line 352
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$502(Lcom/android/server/policy/SingleKeyGestureDetector;Z)Z

    .line 353
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->access$400(Lcom/android/server/policy/SingleKeyGestureDetector;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(J)V

    .line 354
    nop

    .line 376
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
