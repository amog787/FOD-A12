.class public final synthetic Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelUuid;

.field public final synthetic f$1:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final synthetic f$2:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

.field public final synthetic f$3:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object p3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iput-object p4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$3:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelUuid;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$3:Landroid/os/PersistableBundle;

    move-object v4, p1

    check-cast v4, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-object v5, p2

    check-cast v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static/range {v0 .. v5}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->lambda$getComparator$0(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)I

    move-result p1

    return p1
.end method
