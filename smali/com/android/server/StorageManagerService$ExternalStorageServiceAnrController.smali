.class Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/app/AnrController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalStorageServiceAnrController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/StorageManagerService;
    .param p2, "x1"    # Lcom/android/server/StorageManagerService$1;

    .line 976
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public getAnrDelayMillis(Ljava/lang/String;I)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 979
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p2}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    const-wide/16 v0, 0x0

    return-wide v0

    .line 983
    :cond_0
    const/16 v0, 0x1388

    const-string/jumbo v1, "storage_native_boot"

    const-string v2, "anr_delay_millis"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 985
    .local v0, "delay":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnrDelayMillis for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    int-to-long v1, v0

    return-wide v1
.end method

.method public onAnrDelayCompleted(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1014
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p2}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;I)Z

    move-result v0

    const-string/jumbo v1, "onAnrDelayCompleted for "

    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Showing ANR dialog..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v0, 0x1

    return v0

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping ANR dialog..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v0, 0x0

    return v0
.end method

.method public onAnrDelayStarted(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 991
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p2}, Lcom/android/server/StorageManagerService;->access$3100(Lcom/android/server/StorageManagerService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    return-void

    .line 995
    :cond_0
    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "anr_delay_notify_external_storage_service"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 998
    .local v0, "notifyExternalStorageService":Z
    if-eqz v0, :cond_1

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnrDelayStarted for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Notifying external storage service"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StorageManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$3200(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, p2, v4, v2}, Lcom/android/server/storage/StorageSessionController;->notifyAnrDelayStarted(Ljava/lang/String;III)V
    :try_end_0
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    goto :goto_0

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notify ANR delay started for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    .end local v1    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :cond_1
    :goto_0
    return-void
.end method
