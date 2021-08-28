.class public final synthetic Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    iput-boolean p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->lambda$dispatch$1(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V

    return-void
.end method
