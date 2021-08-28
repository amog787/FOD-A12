.class Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;
.super Landroid/os/FileObserver;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/NativeTombstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TombstoneWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method constructor <init>(Lcom/android/server/os/NativeTombstoneManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/os/NativeTombstoneManager;

    .line 543
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 547
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$300()Ljava/io/File;

    move-result-object v0

    const/16 v1, 0x180

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 548
    return-void
.end method


# virtual methods
.method public synthetic lambda$onEvent$0$NativeTombstoneManager$TombstoneWatcher(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->access$300()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/os/NativeTombstoneManager;->access$500(Lcom/android/server/os/NativeTombstoneManager;Ljava/io/File;)V

    .line 554
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v0}, Lcom/android/server/os/NativeTombstoneManager;->access$400(Lcom/android/server/os/NativeTombstoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void
.end method
