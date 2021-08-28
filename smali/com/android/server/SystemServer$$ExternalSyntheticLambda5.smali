.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/VcnManagementService;

.field public final synthetic f$11:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$12:Lcom/android/server/NetworkTimeUpdateService;

.field public final synthetic f$13:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$14:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$15:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$16:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/net/ConnectivityManager;

.field public final synthetic f$5:Lcom/android/server/NetworkManagementService;

.field public final synthetic f$6:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$7:Lcom/android/server/IpSecService;

.field public final synthetic f$8:Lcom/android/server/net/NetworkStatsService;

.field public final synthetic f$9:Lcom/android/server/VpnManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/SystemServer;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    move v1, p4

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$3:Z

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$4:Landroid/net/ConnectivityManager;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/NetworkManagementService;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$6:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$7:Lcom/android/server/IpSecService;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$8:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$9:Lcom/android/server/VpnManagerService;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$10:Lcom/android/server/VcnManagementService;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$11:Lcom/android/server/CountryDetectorService;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$12:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$13:Lcom/android/server/input/InputManagerService;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$14:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$15:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$16:Lcom/android/server/MmsServiceBroker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/SystemServer;

    iget-object v2, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v3, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    iget-boolean v4, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$3:Z

    iget-object v5, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$4:Landroid/net/ConnectivityManager;

    iget-object v6, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/NetworkManagementService;

    iget-object v7, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$6:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$7:Lcom/android/server/IpSecService;

    iget-object v9, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$8:Lcom/android/server/net/NetworkStatsService;

    iget-object v10, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$9:Lcom/android/server/VpnManagerService;

    iget-object v11, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$10:Lcom/android/server/VcnManagementService;

    iget-object v12, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$11:Lcom/android/server/CountryDetectorService;

    iget-object v13, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$12:Lcom/android/server/NetworkTimeUpdateService;

    iget-object v14, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$13:Lcom/android/server/input/InputManagerService;

    iget-object v15, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$14:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$15:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$16:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v17, v0

    move-object/from16 v1, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/SystemServer;->lambda$startOtherServices$6$SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method
