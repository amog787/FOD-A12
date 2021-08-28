.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleRequestLocation$1(Landroid/location/Location;)V

    return-void
.end method
