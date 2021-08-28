.class Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private mPreviousLocation:Landroid/location/Location;

.field final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 848
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public test(Landroid/location/Location;)Z
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .line 853
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 856
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 857
    .local v0, "deltaMs":J
    const v2, 0x3dcccccd    # 0.1f

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 858
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-long v2, v3

    const-wide/16 v4, 0x7530

    .line 857
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 860
    .local v2, "maxJitterMs":J
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 861
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 862
    return v5

    .line 866
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 867
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v4

    float-to-double v6, v4

    .line 868
    .local v6, "smallestDisplacementM":D
    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    invoke-virtual {p1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v8, v4

    cmpg-double v4, v8, v6

    if-gtz v4, :cond_1

    .line 871
    return v5

    .line 875
    .end local v0    # "deltaMs":J
    .end local v2    # "maxJitterMs":J
    .end local v6    # "smallestDisplacementM":D
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 876
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 848
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->test(Landroid/location/Location;)Z

    move-result p1

    return p1
.end method
