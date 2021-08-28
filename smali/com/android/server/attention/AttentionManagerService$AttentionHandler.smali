.class public Lcom/android/server/attention/AttentionManagerService$AttentionHandler;
.super Landroid/os/Handler;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AttentionHandler"
.end annotation


# static fields
.field private static final ATTENTION_CHECK_TIMEOUT:I = 0x2

.field private static final CHECK_CONNECTION_EXPIRATION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 603
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 604
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 605
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 609
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 618
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$1300(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 620
    monitor-exit v0

    .line 622
    goto :goto_0

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 612
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$1600(Lcom/android/server/attention/AttentionManagerService;)V

    .line 614
    nop

    .line 627
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
