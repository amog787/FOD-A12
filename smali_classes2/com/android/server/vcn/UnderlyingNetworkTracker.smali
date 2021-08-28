.class public Lcom/android/server/vcn/UnderlyingNetworkTracker;
.super Ljava/lang/Object;
.source "UnderlyingNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;,
        Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;
    }
.end annotation


# static fields
.field static final PRIORITY_ANY:I = 0x7fffffff

.field static final PRIORITY_MACRO_CELLULAR:I = 0x3

.field static final PRIORITY_OPPORTUNISTIC_CELLULAR:I = 0x0

.field private static final PRIORITY_TO_STRING_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PRIORITY_WIFI_IN_USE:I = 0x1

.field static final PRIORITY_WIFI_PROSPECTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field static final WIFI_ENTRY_RSSI_THRESHOLD_DEFAULT:I = -0x46

.field static final WIFI_EXIT_RSSI_THRESHOLD_DEFAULT:I = -0x4a


# instance fields
.field private final mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private final mCb:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

.field private final mCellBringupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

.field private final mDeps:Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mIsQuitting:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private mRecordInProgress:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

.field private mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    const-class v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->TAG:Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->PRIORITY_TO_STRING_MAP:Landroid/util/SparseArray;

    .line 115
    const/4 v1, 0x0

    const-string v2, "PRIORITY_OPPORTUNISTIC_CELLULAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    const/4 v1, 0x1

    const-string v2, "PRIORITY_WIFI_IN_USE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    const/4 v1, 0x2

    const-string v2, "PRIORITY_WIFI_PROSPECTIVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const/4 v1, 0x3

    const-string v2, "PRIORITY_MACRO_CELLULAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    const v1, 0x7fffffff

    const-string v2, "PRIORITY_ANY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;)V
    .locals 6
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "cb"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    .line 150
    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/UnderlyingNetworkTracker;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;)V

    .line 156
    return-void
.end method

.method private constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;)V
    .locals 6
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "cb"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;
    .param p5, "deps"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    .line 164
    const-string v1, "Missing vcnContext"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/vcn/VcnContext;

    iput-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 165
    const-string v2, "Missing subscriptionGroup"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Landroid/os/ParcelUuid;

    iput-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 166
    const-string v3, "Missing snapshot"

    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 167
    const-string v3, "Missing cb"

    invoke-static {p4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p4

    check-cast v3, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCb:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    .line 168
    const-string v3, "Missing deps"

    invoke-static {p5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p5

    check-cast v3, Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mDeps:Lcom/android/server/vcn/UnderlyingNetworkTracker$Dependencies;

    .line 170
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    .line 172
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 173
    nop

    .line 174
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/telephony/TelephonyManager;

    .line 175
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v4, Landroid/os/HandlerExecutor;

    invoke-direct {v4, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 176
    invoke-virtual {v1, v4, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 180
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 182
    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/CarrierConfigManager;

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 184
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 186
    .local v2, "config":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    .line 187
    iput-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 192
    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    goto :goto_1

    .line 196
    .end local v1    # "subId":I
    .end local v2    # "config":Landroid/os/PersistableBundle;
    :cond_0
    goto :goto_0

    .line 198
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->registerOrUpdateNetworkRequests()V

    .line 199
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 70
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->reevaluateNetworks()V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p1, "x1"    # Ljava/util/Set;

    .line 70
    invoke-static {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/os/PersistableBundle;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/PersistableBundle;

    .line 70
    invoke-static {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/os/PersistableBundle;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/PersistableBundle;

    .line 70
    invoke-static {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900()Landroid/util/SparseArray;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->PRIORITY_TO_STRING_MAP:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Landroid/os/ParcelUuid;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 70
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 70
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 70
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 70
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method private getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .locals 2

    .line 359
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 360
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 361
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 362
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 363
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 359
    return-object v0
.end method

.method private getCellNetworkRequestForSubId(I)Landroid/net/NetworkRequest;
    .locals 2
    .param p1, "subId"    # I

    .line 349
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    new-instance v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-direct {v1, p1}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    .line 351
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 349
    return-object v0
.end method

.method private getRouteSelectionRequest()Landroid/net/NetworkRequest;
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 283
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x15

    .line 284
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 285
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 282
    return-object v0
.end method

.method private getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkRequest;"
        }
    .end annotation

    .line 368
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 369
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 370
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 368
    return-object v0
.end method

.method private static getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I
    .locals 2
    .param p0, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 548
    const/16 v0, -0x46

    if-eqz p0, :cond_0

    .line 549
    const-string v1, "vcn_network_selection_wifi_entry_rssi_threshold"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 554
    :cond_0
    return v0
.end method

.method private getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    .line 313
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 315
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 317
    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 313
    return-object v0
.end method

.method private static getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I
    .locals 2
    .param p0, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 558
    const/16 v0, -0x4a

    if-eqz p0, :cond_0

    .line 559
    const-string v1, "vcn_network_selection_wifi_exit_rssi_threshold"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 564
    :cond_0
    return v0
.end method

.method private getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    .line 329
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 330
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 331
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 333
    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method private getWifiNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    .line 299
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 301
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 299
    return-object v0
.end method

.method private static isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z
    .locals 4
    .param p0, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 429
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 430
    const-string v1, "Got null snapshot"

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->logWtf(Ljava/lang/String;)V

    .line 431
    return v0

    .line 434
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 435
    .local v2, "subId":I
    invoke-virtual {p0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->isOpportunistic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    const/4 v0, 0x1

    return v0

    .line 438
    .end local v2    # "subId":I
    :cond_1
    goto :goto_0

    .line 440
    :cond_2
    return v0
.end method

.method private static logWtf(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 772
    sget-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method private static logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 777
    sget-object v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WTF: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private reevaluateNetworks()V
    .locals 3

    .line 412
    iget-boolean v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    nop

    .line 417
    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->access$200(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    .line 418
    .local v0, "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 419
    .local v1, "candidate":Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    :goto_0
    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    return-void

    .line 423
    :cond_2
    iput-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 424
    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCb:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    invoke-interface {v2, v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;->onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)V

    .line 425
    return-void

    .line 413
    .end local v0    # "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;>;"
    .end local v1    # "candidate":Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    :cond_3
    :goto_1
    return-void
.end method

.method private registerOrUpdateNetworkRequests()V
    .locals 11

    .line 202
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    .line 203
    .local v0, "oldRouteSelectionCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 204
    .local v1, "oldWifiCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 205
    .local v2, "oldWifiEntryRssiThresholdCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 206
    .local v3, "oldWifiExitRssiThresholdCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v4, "oldCellCallbacks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 211
    iget-boolean v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    if-nez v5, :cond_1

    .line 212
    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    .line 213
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 214
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getRouteSelectionRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    .line 213
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 216
    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 217
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 218
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    .line 217
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 222
    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 223
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 224
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    .line 223
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 228
    new-instance v5, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 229
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 230
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    .line 229
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 232
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v6, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 233
    .local v6, "subId":I
    new-instance v7, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;

    invoke-direct {v7, p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    .line 234
    .local v7, "cb":Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;
    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v8, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 237
    invoke-direct {p0, v6}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getCellNetworkRequestForSubId(I)Landroid/net/NetworkRequest;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mHandler:Landroid/os/Handler;

    .line 236
    invoke-virtual {v8, v9, v7, v10}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 238
    .end local v6    # "subId":I
    .end local v7    # "cb":Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 240
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    .line 241
    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 242
    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 243
    iput-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 248
    :goto_1
    if-eqz v0, :cond_2

    .line 249
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 251
    :cond_2
    if-eqz v1, :cond_3

    .line 252
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 254
    :cond_3
    if-eqz v2, :cond_4

    .line 255
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 257
    :cond_4
    if-eqz v3, :cond_5

    .line 258
    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 260
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 261
    .local v6, "cellBringupCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 262
    .end local v6    # "cellBringupCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_2

    .line 263
    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 783
    const-string v0, "UnderlyingNetworkTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Entry Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiEntryRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Exit Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->getWifiExitRssiThreshold(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 791
    const-string v0, "Underlying networks:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 793
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mRouteSelectionCallback:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;

    if-eqz v0, :cond_1

    .line 795
    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->access$200(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 796
    .local v1, "record":Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    iget-object v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v6, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCurrentRecord:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v7, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    move-object v2, v1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->access$2000(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V

    .line 797
    .end local v1    # "record":Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    goto :goto_1

    .line 799
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 800
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 802
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 803
    return-void
.end method

.method public teardown()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mIsQuitting:Z

    .line 403
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->registerOrUpdateNetworkRequests()V

    .line 405
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 406
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    .line 408
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 409
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 3
    .param p1, "newSnapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 383
    const-string v0, "Missing newSnapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 386
    .local v0, "oldSnapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 389
    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 391
    invoke-virtual {p1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->registerOrUpdateNetworkRequests()V

    .line 395
    return-void
.end method
