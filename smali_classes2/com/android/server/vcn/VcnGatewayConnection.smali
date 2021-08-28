.class public Lcom/android/server/vcn/VcnGatewayConnection;
.super Lcom/android/internal/util/StateMachine;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;,
        Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;,
        Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$BaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;
    }
.end annotation


# static fields
.field private static final ARG_NOT_PRESENT:I = -0x80000000

.field private static final DISCONNECT_REASON_INTERNAL_ERROR:Ljava/lang/String; = "Uncaught exception: "

.field private static final DISCONNECT_REASON_NETWORK_AGENT_UNWANTED:Ljava/lang/String; = "NetworkAgent was unwanted"

.field private static final DISCONNECT_REASON_TEARDOWN:Ljava/lang/String; = "teardown() called on VcnTunnel"

.field private static final DISCONNECT_REASON_UNDERLYING_NETWORK_LOST:Ljava/lang/String; = "Underlying Network lost"

.field static final DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

.field static final DUMMY_ADDR:Ljava/net/InetAddress;

.field private static final EVENT_DISCONNECT_REQUESTED:I = 0x7

.field private static final EVENT_MIGRATION_COMPLETED:I = 0xb

.field private static final EVENT_RETRY_TIMEOUT_EXPIRED:I = 0x2

.field private static final EVENT_SAFE_MODE_TIMEOUT_EXCEEDED:I = 0xa

.field private static final EVENT_SESSION_CLOSED:I = 0x4

.field private static final EVENT_SESSION_LOST:I = 0x3

.field private static final EVENT_SETUP_COMPLETED:I = 0x6

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x9

.field private static final EVENT_TEARDOWN_TIMEOUT_EXPIRED:I = 0x8

.field private static final EVENT_TRANSFORM_CREATED:I = 0x5

.field private static final EVENT_UNDERLYING_NETWORK_CHANGED:I = 0x1

.field private static final MERGED_CAPABILITIES:[I

.field static final NETWORK_LOSS_DISCONNECT_TIMEOUT_SECONDS:I = 0x1e

.field static final RETRY_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

.field static final SAFEMODE_TIMEOUT_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

.field static final TEARDOWN_TIMEOUT_SECONDS:I = 0x5

.field private static final TOKEN_ALL:I = -0x80000000


# instance fields
.field private mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

.field final mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

.field final mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

.field private final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field private mCurrentToken:I

.field private final mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

.field private mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

.field final mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

.field private mFailedAttempts:I

.field private final mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

.field private mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

.field private final mIpSecManager:Landroid/net/IpSecManager;

.field private mIsInSafeMode:Z

.field private final mIsMobileDataEnabled:Z

.field private mIsQuitting:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field private mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field final mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

.field private mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field private mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

.field private final mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

.field private final mUnderlyingNetworkTrackerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private final mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 160
    const-class v0, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    .line 163
    const-string v1, "192.0.2.0"

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_TEARDOWN_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_DISCONNECT_REQUEST_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_RETRY_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_SAFEMODE_TIMEOUT_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x12
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)V
    .locals 8
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p5, "gatewayStatusCallback"    # Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .param p6, "isMobileDataEnabled"    # Z

    .line 639
    new-instance v7, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-direct {v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V

    .line 647
    return-void
.end method

.method constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V
    .locals 16
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p5, "gatewayStatusCallback"    # Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .param p6, "isMobileDataEnabled"    # Z
    .param p7, "deps"    # Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 658
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    sget-object v7, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v8, "Missing vcnContext"

    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v8}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 498
    new-instance v8, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 502
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-direct {v10, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v10, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 506
    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-direct {v11, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 510
    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-direct {v12, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 514
    new-instance v13, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    invoke-direct {v13, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 531
    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 555
    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    .line 564
    iput-boolean v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 586
    const/4 v15, -0x1

    iput v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 594
    iput v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 659
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 660
    const-string v15, "Missing subscriptionGroup"

    invoke-static {v2, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Landroid/os/ParcelUuid;

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 661
    const-string v15, "Missing connectionConfig"

    invoke-static {v4, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 662
    nop

    .line 663
    const-string v15, "Missing gatewayStatusCallback"

    invoke-static {v5, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 664
    move/from16 v15, p6

    iput-boolean v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    .line 665
    const-string v14, "Missing deps"

    invoke-static {v6, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iput-object v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 667
    const-string v9, "Missing snapshot"

    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 669
    new-instance v9, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

    const/4 v3, 0x0

    invoke-direct {v9, v0, v3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTrackerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

    .line 671
    nop

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4, v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 674
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 675
    invoke-virtual {v14, v1, v2, v3, v9}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newUnderlyingNetworkTracker(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;)Lcom/android/server/vcn/UnderlyingNetworkTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 680
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/net/IpSecManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpSecManager;

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 682
    invoke-virtual {v0, v8}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 683
    invoke-virtual {v0, v10}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 684
    invoke-virtual {v0, v11}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 685
    invoke-virtual {v0, v12}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 686
    invoke-virtual {v0, v13}, Lcom/android/server/vcn/VcnGatewayConnection;->addState(Lcom/android/internal/util/State;)V

    .line 688
    invoke-virtual {v0, v8}, Lcom/android/server/vcn/VcnGatewayConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 689
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->setDbg(Z)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/VcnGatewayConnection;->start()V

    .line 691
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 159
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/vcn/VcnGatewayConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 159
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/internal/util/WakeupMessage;)Lcom/android/internal/util/WakeupMessage;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Lcom/android/internal/util/WakeupMessage;

    .line 159
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/vcn/VcnGatewayConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 159
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/vcn/VcnGatewayConnection;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setTeardownTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p1, "x1"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p2, "x2"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p3, "x3"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 159
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/vcn/VcnGatewayConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I

    .line 159
    iput p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return p1
.end method

.method static synthetic access$3108(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 159
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 159
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/vcn/VcnGatewayConnection;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # J

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->setRetryTimeoutAlarm(J)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionClosed(ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/IpSecTransform;
    .param p3, "x3"    # I

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->childTransformCreated(ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/IpSecTransform;
    .param p3, "x3"    # Landroid/net/IpSecTransform;

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setDisconnectRequestAlarm()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 159
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 797
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->acquire()V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 802
    :cond_0
    return-void
.end method

.method private buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v0

    return-object v0
.end method

.method private static buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)Landroid/net/LinkProperties;
    .locals 8
    .param p0, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p1, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p2, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .param p3, "underlying"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 2045
    nop

    .line 2046
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2047
    .local v0, "ikeTunnelParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 2049
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {p2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 2051
    .local v3, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 2052
    .end local v3    # "addr":Landroid/net/LinkAddress;
    goto :goto_0

    .line 2053
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2054
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 2055
    .end local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_1

    .line 2057
    :cond_1
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 2059
    new-instance v2, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v3, v7, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v2, v3, v4, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 2062
    const/4 v2, 0x0

    .line 2063
    .local v2, "underlyingMtu":I
    if-eqz p3, :cond_2

    .line 2064
    iget-object v3, p3, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 2066
    .local v3, "underlyingLp":Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 2068
    .end local v3    # "underlyingLp":Landroid/net/LinkProperties;
    goto :goto_2

    .line 2069
    :cond_2
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v5, "No underlying network while building link properties"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    :goto_2
    nop

    .line 2076
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v3

    .line 2077
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMaxMtu()I

    move-result v4

    .line 2075
    invoke-static {v3, v4, v2}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;II)I

    move-result v3

    .line 2074
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 2080
    return-object v1
.end method

.method private buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 2315
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2316
    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2317
    .local v0, "ikeTunnelConnectionParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2318
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 2319
    .local v1, "builder":Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    invoke-virtual {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2320
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    return-object v2
.end method

.method static buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;
    .locals 8
    .param p0, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p1, "underlying"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p2, "isMobileDataEnabled"    # Z

    .line 1962
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 1964
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1965
    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1966
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1967
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1970
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1972
    .local v3, "cap":I
    if-nez p2, :cond_1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1974
    goto :goto_0

    .line 1977
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1978
    .end local v3    # "cap":I
    goto :goto_0

    .line 1980
    :cond_2
    if-eqz p1, :cond_8

    .line 1981
    iget-object v2, p1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1984
    .local v2, "underlyingCaps":Landroid/net/NetworkCapabilities;
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget v6, v3, v5

    .line 1985
    .local v6, "cap":I
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1986
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1984
    .end local v6    # "cap":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1991
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v3

    .line 1992
    .local v3, "underlyingAdminUids":[I
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 1995
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_5

    .line 1997
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    .line 1996
    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_5

    .line 1998
    array-length v4, v3

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 1999
    .local v4, "adminUids":[I
    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v7

    aput v7, v4, v6

    .line 2000
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    goto :goto_2

    .line 2002
    .end local v4    # "adminUids":[I
    :cond_5
    move-object v4, v3

    .line 2006
    .restart local v4    # "adminUids":[I
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2007
    array-length v6, v4

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 2008
    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    aput v7, v4, v6

    .line 2009
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 2011
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2012
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2015
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2016
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v5

    instance-of v5, v5, Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_6

    .line 2017
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 2018
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v5, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {v5, v1}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 2019
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    goto :goto_3

    :cond_6
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2020
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    instance-of v1, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_7

    .line 2021
    nop

    .line 2022
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 2023
    .local v1, "telNetSpecifier":Landroid/net/TelephonyNetworkSpecifier;
    new-instance v5, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/net/vcn/VcnTransportInfo;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 2024
    .end local v1    # "telNetSpecifier":Landroid/net/TelephonyNetworkSpecifier;
    goto :goto_3

    .line 2025
    :cond_7
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v5, "Unknown transport type or missing TransportInfo/NetworkSpecifier for non-null underlying network"

    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    .end local v2    # "underlyingCaps":Landroid/net/NetworkCapabilities;
    .end local v3    # "underlyingAdminUids":[I
    .end local v4    # "adminUids":[I
    :goto_3
    goto :goto_4

    .line 2031
    :cond_8
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "No underlying network while building network capabilities"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    :goto_4
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method private cancelDisconnectRequestAlarm()V
    .locals 4

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1033
    :cond_0
    const/4 v0, 0x7

    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const/4 v2, 0x0

    const-string v3, "Underlying Network lost"

    invoke-direct {v1, v3, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1037
    return-void
.end method

.method private cancelRetryTimeoutAlarm()V
    .locals 2

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1062
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    .line 1063
    return-void
.end method

.method private cancelSafeModeAlarm()V
    .locals 2

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1090
    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    .line 1091
    return-void
.end method

.method private cancelTeardownTimeoutAlarm()V
    .locals 2

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 993
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    .line 994
    return-void
.end method

.method private childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 1192
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1194
    return-void
.end method

.method private childTransformCreated(ILandroid/net/IpSecTransform;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .param p3, "direction"    # I

    .line 1185
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    invoke-direct {v0, p3, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;-><init>(ILandroid/net/IpSecTransform;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1189
    return-void
.end method

.method private createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;
    .locals 4
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "delayedMessage"    # Landroid/os/Message;
    .param p3, "delay"    # J

    .line 942
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 943
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 944
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Attempted to schedule alarm after StateMachine has quit"

    invoke-direct {p0, v2, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 947
    const/4 v1, 0x0

    return-object v1

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V

    .line 956
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    .line 961
    .local v1, "alarm":Lcom/android/internal/util/WakeupMessage;
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getElapsedRealTime()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 962
    return-object v1
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 3

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 2172
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2174
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2171
    return-object v0
.end method

.method private static isIkeAuthFailure(Ljava/lang/Exception;)Z
    .locals 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 1117
    instance-of v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1118
    return v1

    .line 1121
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 2188
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DBG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2190
    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2193
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2194
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DBG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2195
    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 2208
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2210
    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2213
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2215
    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 2185
    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 2198
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2200
    return-void
.end method

.method private logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2203
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2204
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2205
    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 2218
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2220
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2223
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2224
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2225
    return-void
.end method

.method private maybeReleaseWakeLock()V
    .locals 2

    .line 819
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 820
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    .line 823
    :cond_1
    return-void
.end method

.method private migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "inTransform"    # Landroid/net/IpSecTransform;
    .param p3, "outTransform"    # Landroid/net/IpSecTransform;

    .line 1177
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;-><init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    const/16 v1, 0xb

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1181
    return-void
.end method

.method private notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1130
    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->isIkeAuthFailure(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    const/4 v0, 0x1

    .line 1132
    .local v0, "errorCode":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, "exceptionClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .local v2, "exceptionMessage":Ljava/lang/String;
    goto :goto_0

    .line 1134
    .end local v0    # "errorCode":I
    .end local v1    # "exceptionClass":Ljava/lang/String;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :cond_0
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 1136
    const/4 v0, 0x2

    .line 1137
    .restart local v0    # "errorCode":I
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1138
    .restart local v1    # "exceptionClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "exceptionMessage":Ljava/lang/String;
    goto :goto_0

    .line 1140
    .end local v0    # "errorCode":I
    .end local v1    # "exceptionClass":Ljava/lang/String;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1141
    .restart local v0    # "errorCode":I
    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1142
    .restart local v1    # "exceptionClass":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1149
    .restart local v2    # "exceptionMessage":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered error; code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", exceptionClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exceptionMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 1157
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1158
    invoke-virtual {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v4

    .line 1157
    invoke-interface {v3, v4, v0, v1, v2}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 807
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->release()V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method private removeEqualMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    .line 921
    return-void
.end method

.method private removeEqualMessages(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 932
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 933
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 937
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    .line 938
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(II)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "token"    # I

    .line 882
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 883
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 884
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(IIILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "token"    # I
    .param p3, "arg2"    # I
    .param p4, "data"    # Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;

    .line 900
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 901
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 902
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # I
    .param p3, "data"    # Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;

    .line 891
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 892
    const/high16 v0, -0x80000000

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 893
    return-void
.end method

.method private sendMessageAndAcquireWakeLock(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 909
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 910
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 911
    return-void
.end method

.method private sessionClosed(ILjava/lang/Exception;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1165
    if-eqz p2, :cond_0

    .line 1166
    invoke-direct {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V

    .line 1171
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    .line 1172
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 1173
    return-void
.end method

.method private sessionLost(ILjava/lang/Exception;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1102
    if-eqz p2, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1104
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Ljava/lang/RuntimeException;

    .line 1106
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1103
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    .line 1114
    return-void
.end method

.method private sessionLostWithoutCallback(ILjava/lang/Exception;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1094
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 1096
    return-void
.end method

.method private setDisconnectRequestAlarm()V
    .locals 5

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1004
    return-void

    .line 1007
    :cond_0
    const/4 v0, 0x7

    const/high16 v1, -0x80000000

    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const-string v3, "Underlying Network lost"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 1008
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1014
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 1018
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1015
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1019
    return-void
.end method

.method private setRetryTimeoutAlarm(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRetryTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 1050
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1052
    return-void
.end method

.method private setTeardownTimeoutAlarm()V
    .locals 5

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTeardownTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 976
    :cond_0
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 977
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 981
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 978
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 982
    return-void
.end method


# virtual methods
.method buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 2329
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 2331
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2333
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    .line 2334
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v4

    new-instance v5, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;

    invoke-direct {v5, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 2331
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    return-object v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2239
    move-object v1, v2

    goto :goto_0

    .line 2240
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2236
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsQuitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInSafeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailedAttempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkAgent.getNetwork(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2250
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2251
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2253
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2254
    return-void
.end method

.method getIkeSession()Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .locals 1

    .line 2288
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object v0
.end method

.method getNetworkAgent()Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .locals 1

    .line 2298
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object v0
.end method

.method getUnderlyingNetwork()Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1

    .line 2268
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0
.end method

.method getUnderlyingNetworkTrackerCallback()Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTrackerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;

    return-object v0
.end method

.method public isInSafeMode()Z
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 698
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return v0
.end method

.method isQuitting()Z
    .locals 1

    .line 2278
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    return v0
.end method

.method public synthetic lambda$createScheduledAlarm$0$VcnGatewayConnection(Landroid/os/Message;)V
    .locals 0
    .param p1, "delayedMessage"    # Landroid/os/Message;

    .line 960
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(Landroid/os/Message;)V

    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .line 717
    const-string v0, "Quitting VcnGatewayConnection"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "NetworkAgent was non-null in onQuitting"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->unregister()V

    .line 722
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    if-eqz v0, :cond_1

    .line 726
    const-string v0, "IkeSession was non-null in onQuitting"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 728
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    if-eqz v0, :cond_2

    .line 733
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 736
    :cond_2
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    .line 738
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    .line 739
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    .line 740
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    .line 741
    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 743
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->teardown()V

    .line 745
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    invoke-interface {v0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onQuit()V

    .line 746
    return-void
.end method

.method sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "shouldQuit"    # Z

    .line 2308
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 2312
    return-void
.end method

.method public sendMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .line 827
    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 830
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 831
    return-void
.end method

.method public sendMessage(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 843
    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 846
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 847
    return-void
.end method

.method public sendMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 851
    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 854
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 855
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 859
    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 862
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 863
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 835
    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 838
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 839
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 867
    const-string v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 870
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 871
    return-void
.end method

.method setIkeSession(Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 2293
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 2294
    return-void
.end method

.method setIsQuitting(Z)V
    .locals 0
    .param p1, "isQuitting"    # Z

    .line 2283
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Z

    .line 2284
    return-void
.end method

.method setNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 2303
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 2304
    return-void
.end method

.method setSafeModeAlarm()V
    .locals 5

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_0

    .line 1071
    return-void

    .line 1074
    :cond_0
    const/16 v0, 0xa

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1075
    .local v0, "delayedMessage":Landroid/os/Message;
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 1079
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1076
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 1080
    return-void
.end method

.method setTunnelInterface(Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .locals 0
    .param p1, "tunnelIface"    # Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 2258
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 2259
    return-void
.end method

.method setUnderlyingNetwork(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 2273
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 2274
    return-void
.end method

.method public teardownAsynchronously()V
    .locals 2

    .line 707
    const-string v0, "Triggering async teardown"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 708
    const-string v0, "teardown() called on VcnTunnel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    .line 713
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 755
    const-string v0, "Missing snapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 758
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 759
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkTracker:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 761
    const/16 v0, 0x9

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 762
    return-void
.end method
