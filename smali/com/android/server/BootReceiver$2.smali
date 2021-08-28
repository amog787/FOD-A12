.class Lcom/android/server/BootReceiver$2;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mBufferSize:I

.field mTraceBuffer:[B

.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BootReceiver;

    .line 180
    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/16 p2, 0x400

    iput p2, p0, Lcom/android/server/BootReceiver$2;->mBufferSize:I

    .line 182
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 198
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    const/16 v2, 0x400

    invoke-static {p1, v1, v0, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 199
    .local v1, "nbytes":I
    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 200
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 201
    .local v3, "readStr":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 202
    return v2

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    iget-object v5, p0, Lcom/android/server/BootReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/BootReceiver;->access$200(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "nbytes":I
    .end local v3    # "readStr":Ljava/lang/String;
    :cond_1
    nop

    .line 210
    return v2

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BootReceiver"

    const-string v3, "Error processing dmesg output"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return v0
.end method
