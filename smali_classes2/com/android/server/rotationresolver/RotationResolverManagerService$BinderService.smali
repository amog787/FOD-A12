.class final Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;
.super Landroid/os/Binder;
.source "RotationResolverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rotationresolver/RotationResolverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p2, "x1"    # Lcom/android/server/rotationresolver/RotationResolverManagerService$1;

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$700(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$800(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 204
    invoke-static {v1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$900(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 206
    .local v1, "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->dumpInternal(Landroid/util/IndentingPrintWriter;)V

    .line 207
    .end local v1    # "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 215
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$700(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$600()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "android.permission.MANAGE_ROTATION_RESOLVER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 217
    invoke-static {v0, v1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$1000(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 219
    .local v0, "service":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    new-instance v1, Lcom/android/server/rotationresolver/RotationResolverShellCommand;

    invoke-direct {v1, v0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 221
    return-void
.end method
