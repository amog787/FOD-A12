.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/biometrics/PromptInfo;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/hardware/biometrics/IBiometricServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/BiometricService;

    iput p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$2:Landroid/hardware/biometrics/PromptInfo;

    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$4:Landroid/os/IBinder;

    iput-wide p6, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$5:J

    iput-object p8, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$6:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$2:Landroid/hardware/biometrics/PromptInfo;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$4:Landroid/os/IBinder;

    iget-wide v5, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$5:J

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$6:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricService;->lambda$handleAuthenticate$1$BiometricService(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-void
.end method
