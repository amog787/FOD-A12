.class Lcom/android/server/am/BatteryExternalStatsWorker$4;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/telephony/ModemActivityInfo;",
        "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

.field final synthetic val$temp:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 561
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$4;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    iput-object p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$4;->val$temp:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .locals 2
    .param p1, "e"    # Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error reading modem stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$4;->val$temp:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 561
    check-cast p1, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$4;->onError(Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    return-void
.end method

.method public onResult(Landroid/telephony/ModemActivityInfo;)V
    .locals 1
    .param p1, "result"    # Landroid/telephony/ModemActivityInfo;

    .line 564
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$4;->val$temp:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 561
    check-cast p1, Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$4;->onResult(Landroid/telephony/ModemActivityInfo;)V

    return-void
.end method
