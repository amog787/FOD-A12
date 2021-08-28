.class Lcom/android/server/am/PhantomProcessRecord$1;
.super Ljava/lang/Object;
.source "PhantomProcessRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PhantomProcessRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PhantomProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PhantomProcessRecord;

    .line 135
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is still alive after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    .line 144
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
