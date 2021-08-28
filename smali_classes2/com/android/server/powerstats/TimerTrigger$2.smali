.class Lcom/android/server/powerstats/TimerTrigger$2;
.super Ljava/lang/Object;
.source "TimerTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/TimerTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/powerstats/TimerTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/powerstats/TimerTrigger;

    .line 48
    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger$2;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$2;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v0}, Lcom/android/server/powerstats/TimerTrigger;->access$100(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/powerstats/TimerTrigger$2;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v1}, Lcom/android/server/powerstats/TimerTrigger;->access$200(Lcom/android/server/powerstats/TimerTrigger;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$2;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/powerstats/TimerTrigger;->logPowerStatsData(I)V

    .line 56
    return-void
.end method
