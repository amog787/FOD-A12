.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorManagerService;

.field public final synthetic f$1:Lcom/android/server/vibrator/Vibration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/vibrator/Vibration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/vibrator/Vibration;

    check-cast p1, Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/vibrator/VibratorManagerService;->lambda$startVibrationLocked$1$VibratorManagerService(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
