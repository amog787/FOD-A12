.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    return-void
.end method
