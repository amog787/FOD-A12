.class final Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcStatsRunnable"
.end annotation


# instance fields
.field private final mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "mProcessStats"    # Lcom/android/server/am/ProcessStatsService;

    .line 14537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14538
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 14539
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 14540
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 14543
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->writeStateAsync()V

    .line 14544
    return-void
.end method
