.class Lcom/android/server/am/AppProfiler$CpuBinder$1;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler$CpuBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppProfiler$CpuBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppProfiler$CpuBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 1960
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 1964
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->access$200(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cpuinfo"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1965
    return-void

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->access$700(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v0

    monitor-enter v0

    .line 1968
    if-eqz p4, :cond_1

    .line 1969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->access$700(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 1970
    monitor-exit v0

    return-void

    .line 1972
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->access$700(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1973
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object v1, v1, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->access$700(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    .line 1974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1973
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1975
    monitor-exit v0

    .line 1976
    return-void

    .line 1975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
