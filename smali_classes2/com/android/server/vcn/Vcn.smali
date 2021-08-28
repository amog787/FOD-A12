.class public Lcom/android/server/vcn/Vcn;
.super Landroid/os/Handler;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/Vcn$VcnContentResolver;,
        Lcom/android/server/vcn/Vcn$Dependencies;,
        Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;,
        Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;,
        Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;,
        Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;
    }
.end annotation


# static fields
.field private static final CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_CMD_BASE:I = 0x64

.field private static final MSG_CMD_TEARDOWN:I = 0x64

.field private static final MSG_EVENT_BASE:I = 0x0

.field private static final MSG_EVENT_CONFIG_UPDATED:I = 0x0

.field private static final MSG_EVENT_GATEWAY_CONNECTION_QUIT:I = 0x3

.field private static final MSG_EVENT_MOBILE_DATA_TOGGLED:I = 0x5

.field private static final MSG_EVENT_NETWORK_REQUESTED:I = 0x1

.field private static final MSG_EVENT_SAFE_MODE_STATE_CHANGED:I = 0x4

.field private static final MSG_EVENT_SUBSCRIPTIONS_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final VCN_LEGACY_SCORE_INT:I = 0x34


# instance fields
.field private mConfig:Landroid/net/vcn/VcnConfig;

.field private final mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

.field private volatile mCurrentStatus:I

.field private final mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

.field private mIsMobileDataEnabled:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private final mMobileDataSettingsObserver:Landroid/database/ContentObserver;

.field private final mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private final mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private final mVcnGatewayConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    const-class v0, Lcom/android/server/vcn/Vcn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    .line 80
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)V
    .locals 7
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "config"    # Landroid/net/vcn/VcnConfig;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "vcnCallback"    # Lcom/android/server/VcnManagementService$VcnCallback;

    .line 194
    new-instance v6, Lcom/android/server/vcn/Vcn$Dependencies;

    invoke-direct {v6}, Lcom/android/server/vcn/Vcn$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V
    .locals 5
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "config"    # Landroid/net/vcn/VcnConfig;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "vcnCallback"    # Lcom/android/server/VcnManagementService$VcnCallback;
    .param p6, "deps"    # Lcom/android/server/vcn/Vcn$Dependencies;

    .line 205
    const-string v0, "Missing vcnContext"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 206
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 207
    const-string v0, "Missing subscriptionGroup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 208
    const-string v0, "Missing vcnCallback"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Lcom/android/server/VcnManagementService$VcnCallback;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    .line 209
    const-string v0, "Missing deps"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Lcom/android/server/vcn/Vcn$Dependencies;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    .line 210
    new-instance v1, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;Lcom/android/server/vcn/Vcn$1;)V

    iput-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnContentResolver(Lcom/android/server/vcn/VcnContext;)Lcom/android/server/vcn/Vcn$VcnContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

    .line 212
    new-instance v3, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;

    invoke-direct {v3, p0, p0, v2}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$1;)V

    iput-object v3, p0, Lcom/android/server/vcn/Vcn;->mMobileDataSettingsObserver:Landroid/database/ContentObserver;

    .line 214
    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 215
    .local v2, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/vcn/Vcn$VcnContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    const-string v0, "Missing config"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/net/vcn/VcnConfig;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 219
    const-string v0, "Missing snapshot"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 222
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 225
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 226
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vcn/Vcn;)Lcom/android/server/VcnManagementService$VcnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/Vcn;

    .line 74
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    return-object v0
.end method

.method private getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;
    .locals 2
    .param p1, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 429
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 434
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v0, "exposedCapsWithoutMobileData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 437
    return-object v0
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 522
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    return-object v0
.end method

.method private getMobileDataStatus()Z
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 497
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 499
    .local v0, "genericTelMan":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 500
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    const/4 v1, 0x1

    return v1

    .line 503
    .end local v2    # "subId":I
    :cond_0
    goto :goto_0

    .line 505
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static getNetworkScore()Landroid/net/NetworkScore;
    .locals 2

    .line 602
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    return-object v0
.end method

.method private handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/vcn/VcnConfig;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config updated: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 318
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 323
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 325
    .local v2, "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 329
    .local v3, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v4}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 330
    if-nez v3, :cond_0

    .line 331
    const-string v4, "Found gatewayConnectionConfig without GatewayConnection"

    invoke-direct {p0, v4}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 336
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    .end local v2    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    .end local v3    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    :cond_1
    :goto_1
    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 341
    return-void
.end method

.method private handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection quit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 448
    return-void
.end method

.method private handleMobileDataToggled()V
    .locals 7

    .line 463
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 464
    .local v0, "oldMobileDataEnabledStatus":Z
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 466
    if-eq v0, v1, :cond_5

    .line 471
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 472
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 473
    .local v3, "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 475
    .local v4, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    nop

    .line 476
    invoke-virtual {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v5

    .line 477
    .local v5, "exposedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x2

    .line 478
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 479
    :cond_0
    if-nez v4, :cond_1

    .line 480
    const-string v6, "Found gatewayConnectionConfig without GatewayConnection"

    invoke-direct {p0, v6}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_1

    .line 483
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 486
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    .end local v3    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    .end local v4    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    .end local v5    # "exposedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "enabled"

    goto :goto_2

    :cond_4
    const-string v2, "disabled"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 493
    :cond_5
    return-void
.end method

.method private handleNetworkRequested(Landroid/net/NetworkRequest;)V
    .locals 9
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 382
    .local v1, "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-direct {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request already satisfied by existing VcnGatewayConnection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 384
    return-void

    .line 386
    .end local v1    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_0
    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 392
    .restart local v1    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-direct {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bringing up new VcnGatewayConnection for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    goto :goto_1

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    const-string v0, "Attempted to bring up VcnGatewayConnection for config with existing VcnGatewayConnection"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    .line 407
    return-void

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    new-instance v7, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;

    invoke-direct {v7, p0, v1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;-><init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    iget-boolean v8, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 411
    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnGatewayConnection(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)Lcom/android/server/vcn/VcnGatewayConnection;

    move-result-object v0

    .line 418
    .local v0, "vcnGatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void

    .line 422
    .end local v0    # "vcnGatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    .end local v1    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_4
    goto :goto_1

    .line 424
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request could not be fulfilled by VCN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method private handleSafeModeStatusChanged()V
    .locals 5

    .line 355
    const-string v0, "VcnGatewayConnection safe mode status changed"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    .line 359
    .local v0, "hasSafeModeGatewayConnection":Z
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 360
    .local v2, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    invoke-virtual {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->isInSafeMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 362
    goto :goto_1

    .line 364
    .end local v2    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    :cond_0
    goto :goto_0

    .line 366
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 367
    .local v1, "oldStatus":I
    nop

    .line 368
    const/4 v2, 0x3

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    iput v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 369
    iget v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-eq v1, v3, :cond_4

    .line 370
    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    invoke-interface {v3, v0}, Lcom/android/server/VcnManagementService$VcnCallback;->onSafeModeStatusChanged(Z)V

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget v4, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-ne v4, v2, :cond_3

    const-string v2, "entered"

    goto :goto_3

    :cond_3
    const-string v2, "exited"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-direct {p0, v2}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 375
    :cond_4
    return-void
.end method

.method private handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 451
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 453
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 454
    .local v1, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 455
    .end local v1    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    .line 460
    return-void
.end method

.method private handleTeardown()V
    .locals 2

    .line 344
    const-string v0, "Tearing down"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 348
    .local v1, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 349
    .end local v1    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    goto :goto_0

    .line 351
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 352
    return-void
.end method

.method private isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "config"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 510
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 511
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 512
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 513
    invoke-direct {p0, p2}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 514
    .local v2, "cap":I
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 515
    .end local v2    # "cap":I
    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    return v1
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 536
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DBG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 541
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DBG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 546
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 551
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 533
    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 556
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 561
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 563
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vcn ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsMobileDataEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 578
    const-string v0, "mVcnGatewayConnections:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 580
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 581
    .local v1, "gw":Lcom/android/server/vcn/VcnGatewayConnection;
    invoke-virtual {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 582
    .end local v1    # "gw":Lcom/android/server/vcn/VcnGatewayConnection;
    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 584
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 586
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 587
    return-void
.end method

.method public getStatus()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return v0
.end method

.method public getVcnGatewayConnectionConfigMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getVcnGatewayConnections()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 282
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleTeardown()V

    .line 308
    goto :goto_0

    .line 304
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    .line 305
    goto :goto_0

    .line 301
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleSafeModeStatusChanged()V

    .line 302
    goto :goto_0

    .line 298
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    .line 299
    goto :goto_0

    .line 295
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 296
    goto :goto_0

    .line 292
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleNetworkRequested(Landroid/net/NetworkRequest;)V

    .line 293
    goto :goto_0

    .line 289
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/vcn/VcnConfig;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V

    .line 290
    nop

    .line 312
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    return v0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "isMobileDataEnabled"    # Z

    .line 596
    iput-boolean p1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 597
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 255
    iput p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 256
    return-void
.end method

.method public teardownAsynchronously()V
    .locals 1

    .line 244
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 245
    return-void
.end method

.method public updateConfig(Landroid/net/vcn/VcnConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/net/vcn/VcnConfig;

    .line 230
    const-string v0, "Missing config"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 233
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 237
    const-string v0, "Missing snapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 240
    return-void
.end method
