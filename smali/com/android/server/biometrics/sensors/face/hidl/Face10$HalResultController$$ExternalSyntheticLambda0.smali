.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onAcquired$2$Face10$HalResultController(II)V

    return-void
.end method
