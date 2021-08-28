.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static authenticatorStatusToBiometricConstant(I)I
    .locals 1
    .param p0, "status"    # I

    .line 320
    packed-switch p0, :pswitch_data_0

    .line 347
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 341
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 338
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 335
    :pswitch_3
    const/16 v0, 0xe

    return v0

    .line 332
    :pswitch_4
    const/16 v0, 0xb

    return v0

    .line 329
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 323
    :pswitch_6
    const/16 v0, 0xc

    return v0

    .line 326
    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static authenticatorStrengthToPropertyStrength(I)I
    .locals 3
    .param p0, "strength"    # I

    .line 519
    sparse-switch p0, :sswitch_data_0

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 523
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 525
    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0xff -> :sswitch_1
        0xfff -> :sswitch_0
    .end sparse-switch
.end method

.method static biometricConstantsToBiometricManager(I)I
    .locals 2
    .param p0, "biometricConstantsCode"    # I

    .line 262
    sparse-switch p0, :sswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x1

    .local v0, "biometricManagerCode":I
    goto :goto_0

    .line 277
    .end local v0    # "biometricManagerCode":I
    :sswitch_0
    const/16 v0, 0xf

    .line 278
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 274
    .end local v0    # "biometricManagerCode":I
    :sswitch_1
    const/16 v0, 0xc

    .line 275
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 268
    .end local v0    # "biometricManagerCode":I
    :sswitch_2
    const/16 v0, 0xb

    .line 269
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 281
    .end local v0    # "biometricManagerCode":I
    :sswitch_3
    const/4 v0, 0x0

    .line 282
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 271
    .end local v0    # "biometricManagerCode":I
    :sswitch_4
    const/4 v0, 0x1

    .line 272
    .restart local v0    # "biometricManagerCode":I
    goto :goto_0

    .line 264
    .end local v0    # "biometricManagerCode":I
    :sswitch_5
    const/4 v0, 0x0

    .line 265
    .restart local v0    # "biometricManagerCode":I
    nop

    .line 288
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x7 -> :sswitch_3
        0x9 -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method static combineAuthenticatorBundles(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 2
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 97
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v0

    .line 98
    .local v0, "deviceCredentialAllowed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 101
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    .local v1, "authenticators":I
    goto :goto_1

    .line 106
    .end local v1    # "authenticators":I
    :cond_0
    if-eqz v0, :cond_1

    .line 107
    const v1, 0x80ff

    goto :goto_0

    .line 108
    :cond_1
    const/16 v1, 0xff

    :goto_0
    nop

    .line 111
    .restart local v1    # "authenticators":I
    :goto_1
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 112
    return-void
.end method

.method private static containsFlag(II)Z
    .locals 1
    .param p0, "haystack"    # I
    .param p1, "needle"    # I

    .line 479
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static getAuthenticationTypeForResult(I)I
    .locals 3
    .param p0, "reason"    # I

    .line 304
    sparse-switch p0, :sswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dismissal reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 310
    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 475
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    return-object v0
.end method

.method public static getCurrentStrength(I)I
    .locals 4
    .param p0, "sensorId"    # I

    .line 420
    nop

    .line 421
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 423
    .local v0, "service":Landroid/hardware/biometrics/IBiometricService;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricUtils"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    const/4 v2, 0x0

    return v2
.end method

.method static getPublicBiometricStrength(I)I
    .locals 1
    .param p0, "authenticators"    # I

    .line 139
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I
    .locals 1
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 150
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    return v0
.end method

.method public static getUdfpsAuthReason(Lcom/android/server/biometrics/sensors/AuthenticationClient;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)I"
        }
    .end annotation

    .line 546
    .local p0, "client":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x4

    return v0

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    const/4 v0, 0x3

    return v0

    .line 551
    :cond_1
    const/4 v0, 0x5

    return v0
.end method

.method private static hasInternalPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 470
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAtLeastStrength(II)Z
    .locals 4
    .param p0, "sensorStrength"    # I
    .param p1, "requestedStrength"    # I

    .line 182
    and-int/lit16 p0, p0, 0x7fff

    .line 185
    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    return v1

    .line 189
    :cond_0
    const/4 v0, 0x1

    .line 190
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 191
    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    .line 192
    return v2

    .line 190
    :cond_1
    shl-int/lit8 v3, v0, 0x1

    or-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensorStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestedStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1
.end method

.method static isBiometricRequested(I)Z
    .locals 1
    .param p0, "authenticators"    # I

    .line 160
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 1
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 171
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isConfirmationSupported(I)Z
    .locals 1
    .param p0, "modality"    # I

    .line 352
    sparse-switch p0, :sswitch_data_0

    .line 357
    const/4 v0, 0x0

    return v0

    .line 355
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static isCredentialRequested(I)Z
    .locals 1
    .param p0, "authenticators"    # I

    .line 119
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 1
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 128
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v0

    return v0
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 380
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 381
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    const-string v2, "BiometricUtils"

    const-string v3, "Unable to get UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v1

    .line 386
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 389
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .local v7, "profileId":I
    if-ne v7, p1, :cond_1

    .line 391
    nop

    .line 395
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    const/4 v1, 0x1

    return v1

    .line 389
    .end local v7    # "profileId":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 395
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    nop

    .line 398
    return v1

    .line 395
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw v1
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetUserId"    # I

    .line 75
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_0

    .line 76
    return v0

    .line 79
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_1

    .line 80
    return v0

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometric_debug_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    .line 86
    return v0

    .line 88
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isForeground(II)Z
    .locals 7
    .param p0, "callingUid"    # I
    .param p1, "callingPid"    # I

    .line 494
    const-string v0, "BiometricUtils"

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 495
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 496
    const-string v3, "No running app processes found, defaulting to true"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v2

    .line 500
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 501
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 502
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p0, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_1

    .line 504
    return v2

    .line 500
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 438
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    .line 439
    .local v0, "hasPermission":Z
    nop

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 441
    .local v1, "keyguardComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 443
    .local v2, "keyguardPackage":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static isSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 466
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStrongBiometric(I)Z
    .locals 4
    .param p0, "sensorId"    # I

    .line 402
    nop

    .line 403
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 405
    .local v0, "service":Landroid/hardware/biometrics/IBiometricService;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricUtils"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v2, 0x0

    return v2
.end method

.method public static isSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 455
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->hasInternalPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 7
    .param p0, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "user"    # I

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    .line 484
    .local v0, "strongAuth":I
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v2

    .line 485
    .local v2, "isEncrypted":Z
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/16 v3, 0x20

    .line 486
    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 487
    .local v3, "isLockDown":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEncrypted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLockdown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiometricUtils"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :cond_3
    :goto_2
    return v1
.end method

.method static isValidAuthenticatorConfig(I)Z
    .locals 6
    .param p0, "authenticators"    # I

    .line 218
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 219
    return v0

    .line 224
    :cond_0
    const/high16 v1, -0x10000

    .line 226
    .local v1, "testBits":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    const/4 v3, 0x0

    const-string v4, "BiometricService"

    if-eqz v2, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v3

    .line 234
    :cond_1
    and-int/lit16 v2, p0, 0x7fff

    .line 235
    .local v2, "biometricBits":I
    if-nez v2, :cond_2

    .line 236
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    return v0

    .line 238
    :cond_2
    const/16 v5, 0xf

    if-ne v2, v5, :cond_3

    .line 239
    return v0

    .line 240
    :cond_3
    const/16 v5, 0xff

    if-ne v2, v5, :cond_4

    .line 241
    return v0

    .line 244
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v3
.end method

.method static isValidAuthenticatorConfig(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 2
    .param p0, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 207
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    .line 208
    .local v0, "authenticators":I
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v1

    return v1
.end method

.method public static listContains([II)Z
    .locals 2
    .param p0, "haystack"    # [I
    .param p1, "needle"    # I

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 367
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 368
    const/4 v1, 0x1

    return v1

    .line 366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static propertyStrengthToAuthenticatorStrength(I)I
    .locals 3
    .param p0, "strength"    # I

    .line 533
    packed-switch p0, :pswitch_data_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :pswitch_0
    const/16 v0, 0xf

    return v0

    .line 537
    :pswitch_1
    const/16 v0, 0xff

    return v0

    .line 535
    :pswitch_2
    const/16 v0, 0xfff

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static removeBiometricBits(I)I
    .locals 1
    .param p0, "authenticators"    # I

    .line 362
    and-int/lit16 v0, p0, -0x8000

    return v0
.end method
