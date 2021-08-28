.class public final synthetic Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->lambda$onSensorPrivacyChanged$0(Ljava/lang/Object;)V

    return-void
.end method
