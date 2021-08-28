.class public final synthetic Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;->f$1:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setSensorPrivacy$0$SensorPrivacyService$SensorPrivacyServiceImpl(ZLjava/lang/Integer;)V

    return-void
.end method
