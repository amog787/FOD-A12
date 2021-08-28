.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$errorId:Ljava/util/UUID;

.field final synthetic val$report:Ljava/lang/StringBuilder;

.field final synthetic val$stack:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "name"    # Ljava/lang/String;

    .line 713
    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$report:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/Watchdog$1;->val$stack:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/Watchdog$1;->val$errorId:Ljava/util/UUID;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 717
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->access$200(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->access$200(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$report:Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/Watchdog$1;->val$stack:Ljava/io/File;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/Watchdog$1;->val$errorId:Ljava/util/UUID;

    .line 718
    const-string/jumbo v2, "watchdog"

    const-string/jumbo v4, "system_server"

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 723
    :cond_0
    return-void
.end method
