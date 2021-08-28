.class Lcom/android/server/am/ActivityManagerService$2;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 991
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 0
    .param p1, "abortingActivity"    # [B

    .line 1008
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 0
    .param p1, "finalActivity"    # [B
    .param p2, "timestampNs"    # J

    .line 1012
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 1
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 994
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    .line 995
    return-void
.end method

.method public onIntentFailed()V
    .locals 0

    .line 1004
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 1000
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 0
    .param p1, "finalActivity"    # [B
    .param p2, "timestampNs"    # J

    .line 1016
    return-void
.end method
