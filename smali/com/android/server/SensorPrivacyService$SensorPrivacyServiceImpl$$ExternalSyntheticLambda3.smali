.class public final synthetic Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic f$1:Landroid/util/TypedXmlSerializer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/TypedXmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;->f$1:Landroid/util/TypedXmlSerializer;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;->f$1:Landroid/util/TypedXmlSerializer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$persistSensorPrivacyStateLocked$4$SensorPrivacyService$SensorPrivacyServiceImpl(Landroid/util/TypedXmlSerializer;Ljava/lang/Integer;)V

    return-void
.end method
