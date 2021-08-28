.class public Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedRealTime()J
    .locals 2

    .line 2410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 7
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "childSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p5, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 2362
    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    return-object v6
.end method

.method public newNetworkAgent(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 11
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "caps"    # Landroid/net/NetworkCapabilities;
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "score"    # Landroid/net/NetworkScore;
    .param p6, "nac"    # Landroid/net/NetworkAgentConfig;
    .param p7, "provider"    # Landroid/net/NetworkProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Ljava/lang/String;",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/LinkProperties;",
            "Landroid/net/NetworkScore;",
            "Landroid/net/NetworkAgentConfig;",
            "Landroid/net/NetworkProvider;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;"
        }
    .end annotation

    .line 2396
    .local p8, "networkUnwantedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;>;"
    .local p9, "validationStatusCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;-><init>(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v10
.end method

.method public newUnderlyingNetworkTracker(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;)Lcom/android/server/vcn/UnderlyingNetworkTracker;
    .locals 1
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "callback"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;

    .line 2348
    new-instance v0, Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/vcn/UnderlyingNetworkTracker;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;)V

    return-object v0
.end method

.method public newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLockFlag"    # I
    .param p3, "wakeLockTag"    # Ljava/lang/String;

    .line 2373
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method public newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;
    .locals 2
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 2382
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
