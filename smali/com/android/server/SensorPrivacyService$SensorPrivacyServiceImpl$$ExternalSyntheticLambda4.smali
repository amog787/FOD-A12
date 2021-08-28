.class public final synthetic Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic f$1:Lcom/android/internal/util/dump/DualDumpOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    iput-object p2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/util/dump/DualDumpOutputStream;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/util/dump/DualDumpOutputStream;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$dump$5$SensorPrivacyService$SensorPrivacyServiceImpl(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/Integer;)V

    return-void
.end method
