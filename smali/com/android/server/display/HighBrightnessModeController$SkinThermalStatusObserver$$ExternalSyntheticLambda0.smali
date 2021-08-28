.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

.field public final synthetic f$1:Landroid/os/Temperature;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;Landroid/os/Temperature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:Landroid/os/Temperature;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:Landroid/os/Temperature;

    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->lambda$notifyThrottling$0$HighBrightnessModeController$SkinThermalStatusObserver(Landroid/os/Temperature;)V

    return-void
.end method
