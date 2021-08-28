.class final Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
.implements Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VibrationCompleteListener"
.end annotation


# instance fields
.field private mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/vibrator/VibratorManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1051
    return-void
.end method


# virtual methods
.method public onComplete(IJ)V
    .locals 1
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J

    .line 1063
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 1064
    .local v0, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v0, :cond_0

    .line 1065
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->access$1200(Lcom/android/server/vibrator/VibratorManagerService;IJ)V

    .line 1067
    :cond_0
    return-void
.end method

.method public onComplete(J)V
    .locals 1
    .param p1, "vibrationId"    # J

    .line 1055
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 1056
    .local v0, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v0, :cond_0

    .line 1057
    invoke-static {v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1100(Lcom/android/server/vibrator/VibratorManagerService;J)V

    .line 1059
    :cond_0
    return-void
.end method
