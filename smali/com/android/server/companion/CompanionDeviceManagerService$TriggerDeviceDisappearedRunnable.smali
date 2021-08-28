.class Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerDeviceDisappearedRunnable"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "address"    # Ljava/lang/String;

    .line 1309
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->mAddress:Ljava/lang/String;

    .line 1311
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TriggerDeviceDisappearedRunnable.run(address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$3000(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->mAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$3100(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)V

    .line 1324
    :cond_0
    return-void
.end method

.method public schedule()V
    .locals 3

    .line 1314
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2300(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$TriggerDeviceDisappearedRunnable;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2300(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1316
    return-void
.end method
