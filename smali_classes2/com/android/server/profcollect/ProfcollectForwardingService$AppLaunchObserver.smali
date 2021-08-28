.class Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;
.super Ljava/lang/Object;
.source "ProfcollectForwardingService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLaunchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method private constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/profcollect/ProfcollectForwardingService;
    .param p2, "x1"    # Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 0
    .param p1, "abortingActivity"    # [B

    .line 271
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 0
    .param p1, "finalActivity"    # [B
    .param p2, "timestampNanos"    # J

    .line 276
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 0
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 266
    return-void
.end method

.method public onIntentFailed()V
    .locals 0

    .line 261
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNanos"    # J

    .line 255
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->access$800(Lcom/android/server/profcollect/ProfcollectForwardingService;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 0
    .param p1, "activity"    # [B
    .param p2, "timestampNanos"    # J

    .line 281
    return-void
.end method
