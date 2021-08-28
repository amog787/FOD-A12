.class public final Lcom/android/server/power/ShutdownCheckPoints;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;,
        Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$Injector;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

.field private static final MAX_CHECK_POINTS:I = 0x64

.field private static final MAX_DUMP_FILES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ShutdownCheckPoints"


# instance fields
.field private final mCheckPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    .line 89
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "printWriter"    # Ljava/io/PrintWriter;

    .line 110
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 111
    return-void
.end method

.method public static newDumpThread(Ljava/io/File;)Ljava/lang/Thread;
    .locals 1
    .param p0, "baseFile"    # Ljava/io/File;

    .line 119
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static recordCheckPoint(ILjava/lang/String;)V
    .locals 1
    .param p0, "callerProcessId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "intentName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V
    .locals 3
    .param p1, "checkPoint"    # Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 146
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v2}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxCheckPoints()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 149
    :cond_0
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dumpInternal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 155
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    monitor-enter v0

    .line 156
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 159
    .local v2, "record":Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
    invoke-virtual {v2, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dump(Ljava/io/PrintWriter;)V

    .line 160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 161
    .end local v2    # "record":Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
    goto :goto_0

    .line 162
    :cond_0
    return-void

    .line 157
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;
    .locals 2
    .param p1, "baseFile"    # Ljava/io/File;

    .line 166
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxDumpFiles()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;-><init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V

    return-object v0
.end method

.method recordCheckPointInternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "callerProcessId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;ILjava/lang/String;)V

    .line 130
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder shutdown checkpoint recorded with pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCheckPoints"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method recordCheckPointInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 125
    const-string v0, "ShutdownCheckPoints"

    const-string v1, "System server shutdown checkpoint recorded"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 138
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Shutdown intent checkpoint recorded intent=%s from package=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCheckPoints"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
