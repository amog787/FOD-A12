.class Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 330
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method

.method private getNeedCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;II)Z
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "taskInfo"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p4, "sensorOrientation"    # I
    .param p5, "lensFacing"    # I

    .line 346
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 347
    return v0

    .line 351
    :cond_0
    const-string v1, "CameraService_proxy"

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    if-eq p5, v2, :cond_1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lensFacing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Crop-rotate-scale is disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v0

    .line 359
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/camera/CameraServiceProxy$2;->isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$500(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    const-string v2, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v0

    .line 366
    :cond_2
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 367
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$600(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 368
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 369
    .local v5, "rotation":I
    const/4 v6, 0x0

    .line 370
    .local v6, "rotationDegree":I
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 381
    :pswitch_0
    const/16 v6, 0x10e

    goto :goto_0

    .line 378
    :pswitch_1
    const/16 v6, 0xb4

    .line 379
    goto :goto_0

    .line 375
    :pswitch_2
    const/16 v6, 0x5a

    .line 376
    goto :goto_0

    .line 372
    :pswitch_3
    const/4 v6, 0x0

    .line 373
    nop

    .line 388
    :goto_0
    add-int v7, v6, p4

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v0

    .line 389
    .local v7, "landscapeCamera":Z
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display.getRotation()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " CameraCharacteristics.SENSOR_ORIENTATION="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isFixedOrientationPortrait="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$800(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isFixedOrientationLandscape="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$700(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$800(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v7, :cond_5

    .line 398
    :cond_4
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$700(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v7, :cond_6

    :cond_5
    move v0, v2

    .line 397
    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraService_proxy"

    const-string v3, "Package name not found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method


# virtual methods
.method public isRotateAndCropOverrideNeeded(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sensorOrientation"    # I
    .param p3, "lensFacing"    # I

    .line 404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x0

    return v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->access$1300(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 415
    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->access$1400(Lcom/android/server/camera/CameraServiceProxy;)Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->getFrontTaskInfo(Ljava/lang/String;)Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    move-result-object v4

    .line 414
    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/camera/CameraServiceProxy$2;->getNeedCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;II)Z

    move-result v0

    return v0
.end method

.method public notifyCameraState(Landroid/hardware/CameraSessionStats;)V
    .locals 3
    .param p1, "cameraState"    # Landroid/hardware/CameraSessionStats;

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 437
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->access$1700(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->access$1800(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "facingStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2, p1}, Lcom/android/server/camera/CameraServiceProxy;->access$1900(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraSessionStats;)V

    .line 447
    return-void
.end method

.method public pingForUserUpdate()V
    .locals 2

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->access$1500(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 427
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->access$1600(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 428
    return-void
.end method
