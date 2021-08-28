.class Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 261
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    .line 262
    return-void
.end method


# virtual methods
.method public connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    .locals 2

    .line 297
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    invoke-direct {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;-><init>()V

    .line 298
    .local v0, "socket":Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->connectService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 300
    const/4 v1, 0x0

    return-object v1

    .line 302
    :cond_0
    return-object v0
.end method

.method public getBootControl()Landroid/hardware/boot/V1_2/IBootControl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/boot/V1_0/IBootControl;->getService(Z)Landroid/hardware/boot/V1_0/IBootControl;

    move-result-object v0

    .line 311
    .local v0, "bootControlV10":Landroid/hardware/boot/V1_0/IBootControl;
    if-eqz v0, :cond_1

    .line 315
    nop

    .line 316
    invoke-static {v0}, Landroid/hardware/boot/V1_2/IBootControl;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/boot/V1_2/IBootControl;

    move-result-object v1

    .line 317
    .local v1, "bootControlV12":Landroid/hardware/boot/V1_2/IBootControl;
    if-nez v1, :cond_0

    .line 318
    const-string v2, "RecoverySystemService"

    const-string v3, "Device doesn\'t implement boot control HAL V1_2."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x0

    return-object v2

    .line 321
    :cond_0
    return-object v1

    .line 312
    .end local v1    # "bootControlV12":Landroid/hardware/boot/V1_2/IBootControl;
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to get boot control HAL V1_0."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;
    .locals 1

    .line 269
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    return-object v0
.end method

.method public getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    return-object v0
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find uid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecoverySystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, -0x1

    return v0
.end method

.method public getUncryptPackageFileName()Ljava/lang/String;
    .locals 1

    .line 289
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUncryptPackageFileWriter()Ljava/io/FileWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public reportRebootEscrowLskfCapturedMetrics(III)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "requestedClientCount"    # I
    .param p3, "requestedToLskfCapturedDurationInSeconds"    # I

    .line 353
    const/16 v0, 0x154

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 355
    return-void
.end method

.method public reportRebootEscrowPreparationMetrics(III)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "requestResult"    # I
    .param p3, "requestedClientCount"    # I

    .line 347
    const/16 v0, 0x153

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 349
    return-void
.end method

.method public reportRebootEscrowRebootMetrics(IIIIZZII)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "uid"    # I
    .param p3, "preparedClientCount"    # I
    .param p4, "requestCount"    # I
    .param p5, "slotSwitch"    # Z
    .param p6, "serverBased"    # Z
    .param p7, "lskfCapturedToRebootDurationInSeconds"    # I
    .param p8, "lskfCapturedCounts"    # I

    .line 360
    const/16 v0, 0x155

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZII)V

    .line 363
    return-void
.end method

.method public systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 277
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 281
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public threadSleep(J)V
    .locals 0
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 325
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 326
    return-void
.end method

.method public uncryptPackageFileDelete()Z
    .locals 1

    .line 285
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
