.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    return-void
.end method


# virtual methods
.method public final onClientDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->lambda$new$0$BiometricService()V

    return-void
.end method
