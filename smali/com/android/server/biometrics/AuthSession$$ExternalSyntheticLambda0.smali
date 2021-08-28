.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthSession;->lambda$cancelAllSensors$2(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
