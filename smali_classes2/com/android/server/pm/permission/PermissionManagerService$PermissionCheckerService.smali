.class final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionCheckerService"
.end annotation


# static fields
.field private static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5514
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5517
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 5523
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 5524
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 5525
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 5526
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5527
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5528
    return-void
.end method

.method private static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z

    .line 5682
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    .line 5683
    .local v16, "op":I
    const/16 v17, 0x2

    if-gez v16, :cond_0

    .line 5684
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    return v17

    .line 5688
    :cond_0
    move-object/from16 v0, p3

    .line 5689
    .local v0, "current":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    move-object v11, v0

    .line 5692
    .end local v0    # "current":Landroid/content/AttributionSource;
    .local v1, "next":Landroid/content/AttributionSource;
    .local v11, "current":Landroid/content/AttributionSource;
    :goto_0
    const/4 v0, 0x1

    const/16 v18, 0x0

    if-nez p6, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v2, v18

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    move/from16 v19, v2

    .line 5694
    .local v19, "skipCurrentChecks":Z
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v20

    .line 5698
    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v20, "next":Landroid/content/AttributionSource;
    if-eqz p6, :cond_3

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz v20, :cond_4

    .line 5699
    invoke-virtual {v11, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5700
    return v17

    .line 5706
    :cond_4
    if-eqz p6, :cond_5

    .line 5707
    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v20, :cond_5

    .line 5708
    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move/from16 v1, v18

    :goto_3
    move/from16 v21, v1

    .line 5709
    .local v21, "singleReceiverFromDatasource":Z
    if-nez v21, :cond_7

    if-nez v20, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v7, v18

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v0

    .line 5711
    .local v7, "selfAccess":Z
    :goto_5
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v11

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, v19

    move/from16 v8, v21

    move-object/from16 v24, v11

    .end local v11    # "current":Landroid/content/AttributionSource;
    .local v24, "current":Landroid/content/AttributionSource;
    move/from16 v11, v22

    move/from16 v12, v23

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    .line 5717
    .local v0, "opMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 5723
    :pswitch_0
    if-nez v19, :cond_8

    .line 5724
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 5725
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 5723
    invoke-static {v13, v14, v15, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5726
    return v17

    .line 5728
    :cond_8
    if-eqz v20, :cond_9

    .line 5729
    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 5728
    invoke-static {v13, v14, v15, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 5730
    return v17

    .line 5720
    :pswitch_1
    return v17

    .line 5735
    :cond_9
    :goto_6
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    .line 5739
    :cond_a
    move-object/from16 v11, v20

    .line 5740
    .end local v0    # "opMode":I
    .end local v7    # "selfAccess":Z
    .end local v19    # "skipCurrentChecks":Z
    .end local v21    # "singleReceiverFromDatasource":Z
    .end local v24    # "current":Landroid/content/AttributionSource;
    .restart local v11    # "current":Landroid/content/AttributionSource;
    move-object/from16 v12, p3

    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 5736
    .end local v11    # "current":Landroid/content/AttributionSource;
    .restart local v0    # "opMode":I
    .restart local v7    # "selfAccess":Z
    .restart local v19    # "skipCurrentChecks":Z
    .restart local v21    # "singleReceiverFromDatasource":Z
    .restart local v24    # "current":Landroid/content/AttributionSource;
    :cond_b
    :goto_7
    return v18

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z

    .line 5917
    move-object/from16 v13, p0

    move-object/from16 v12, p3

    const/16 v20, 0x2

    if-ltz p1, :cond_e

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 5921
    :cond_0
    nop

    .line 5922
    move/from16 v9, p6

    invoke-static {v9, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v8

    .line 5923
    .local v8, "attributionChainId":I
    const/4 v0, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-eq v8, v0, :cond_1

    move/from16 v0, v21

    goto :goto_0

    :cond_1
    move/from16 v0, v22

    :goto_0
    move/from16 v23, v0

    .line 5925
    .local v23, "hasChain":Z
    move-object/from16 v0, p3

    .line 5926
    .local v0, "current":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    .line 5930
    .local v1, "next":Landroid/content/AttributionSource;
    if-eqz v23, :cond_3

    .line 5931
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 5932
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 5930
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v7, p2

    invoke-static {v13, v7, v4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v2, v22

    goto :goto_2

    :cond_3
    move-object/from16 v7, p2

    :goto_1
    move/from16 v2, v21

    :goto_2
    move/from16 v24, v2

    move-object v6, v0

    .line 5935
    .end local v0    # "current":Landroid/content/AttributionSource;
    .local v6, "current":Landroid/content/AttributionSource;
    .local v24, "isChainStartTrusted":Z
    :goto_3
    if-eqz v1, :cond_4

    move/from16 v0, v21

    goto :goto_4

    :cond_4
    move/from16 v0, v22

    :goto_4
    move/from16 v25, v0

    .line 5936
    .local v25, "skipCurrentChecks":Z
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    .line 5940
    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v11, "next":Landroid/content/AttributionSource;
    if-eqz v11, :cond_5

    invoke-virtual {v6, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5941
    return v20

    .line 5945
    :cond_5
    if-nez v11, :cond_6

    move/from16 v18, v21

    goto :goto_5

    :cond_6
    move/from16 v18, v22

    .line 5946
    .local v18, "selfAccess":Z
    :goto_5
    if-eqz v24, :cond_9

    .line 5947
    invoke-virtual {v6, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    if-eqz v11, :cond_8

    .line 5948
    invoke-virtual {v11, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move/from16 v19, v21

    goto :goto_6

    :cond_9
    move/from16 v19, v22

    .line 5950
    .local v19, "isLinkTrusted":Z
    :goto_6
    if-nez v25, :cond_a

    if-eqz v23, :cond_a

    .line 5951
    const/16 v16, 0x0

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p6

    invoke-static/range {v14 .. v19}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v10, v0

    goto :goto_7

    .line 5953
    :cond_a
    move/from16 v10, v22

    :goto_7
    nop

    .line 5954
    .local v10, "proxyAttributionFlags":I
    if-eqz v23, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v11

    move/from16 v3, p6

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    goto :goto_8

    .line 5956
    :cond_b
    move/from16 v0, v22

    :goto_8
    move-object v14, v11

    .end local v11    # "next":Landroid/content/AttributionSource;
    .local v14, "next":Landroid/content/AttributionSource;
    move v11, v0

    .line 5958
    .local v11, "proxiedAttributionFlags":I
    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v17, v6

    .end local v6    # "current":Landroid/content/AttributionSource;
    .local v17, "current":Landroid/content/AttributionSource;
    move/from16 v6, v25

    move/from16 v7, v18

    move/from16 v26, v8

    .end local v8    # "attributionChainId":I
    .local v26, "attributionChainId":I
    move v8, v15

    move/from16 v9, v16

    move/from16 v12, v26

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    .line 5963
    .local v0, "opMode":I
    packed-switch v0, :pswitch_data_0

    .line 5972
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_9

    .line 5965
    :pswitch_0
    return v20

    .line 5968
    :pswitch_1
    return v21

    .line 5976
    :cond_c
    move-object v6, v14

    .line 5977
    .end local v0    # "opMode":I
    .end local v10    # "proxyAttributionFlags":I
    .end local v11    # "proxiedAttributionFlags":I
    .end local v17    # "current":Landroid/content/AttributionSource;
    .end local v18    # "selfAccess":Z
    .end local v19    # "isLinkTrusted":Z
    .end local v25    # "skipCurrentChecks":Z
    .restart local v6    # "current":Landroid/content/AttributionSource;
    move-object/from16 v7, p2

    move-object/from16 v12, p3

    move/from16 v9, p6

    move-object v1, v14

    move/from16 v8, v26

    goto/16 :goto_3

    .line 5973
    .end local v6    # "current":Landroid/content/AttributionSource;
    .restart local v0    # "opMode":I
    .restart local v10    # "proxyAttributionFlags":I
    .restart local v11    # "proxiedAttributionFlags":I
    .restart local v17    # "current":Landroid/content/AttributionSource;
    .restart local v18    # "selfAccess":Z
    .restart local v19    # "isLinkTrusted":Z
    .restart local v25    # "skipCurrentChecks":Z
    :cond_d
    :goto_9
    return v22

    .line 5918
    .end local v0    # "opMode":I
    .end local v10    # "proxyAttributionFlags":I
    .end local v11    # "proxiedAttributionFlags":I
    .end local v14    # "next":Landroid/content/AttributionSource;
    .end local v17    # "current":Landroid/content/AttributionSource;
    .end local v18    # "selfAccess":Z
    .end local v19    # "isLinkTrusted":Z
    .end local v23    # "hasChain":Z
    .end local v24    # "isChainStartTrusted":Z
    .end local v25    # "skipCurrentChecks":Z
    .end local v26    # "attributionChainId":I
    :cond_e
    :goto_a
    return v20

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "fromDatasource"    # Z
    .param p8, "attributedOp"    # I

    .line 5637
    move-object v10, p2

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 5639
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 5641
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    move-object v1, v4

    .line 5642
    const-string v4, "android"

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5645
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5649
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 5647
    :catch_0
    move-exception v0

    .line 5648
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    .line 5639
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move-object v0, v1

    .line 5652
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5653
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v1

    return v1

    .line 5656
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5657
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    return v1

    .line 5662
    :cond_3
    if-nez p7, :cond_4

    .line 5663
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 5664
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 5662
    move-object v11, p0

    move-object v12, p1

    invoke-static {p0, p1, p2, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5665
    return v2

    .line 5662
    :cond_4
    move-object v11, p0

    move-object v12, p1

    .line 5668
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5669
    nop

    .line 5670
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    const/4 v8, 0x0

    .line 5669
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    return v1

    .line 5674
    :cond_6
    return v3
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 5841
    .local p4, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5848
    .local v1, "permissionGranted":Z
    :goto_0
    if-nez v1, :cond_3

    .line 5849
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5850
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5851
    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5852
    :cond_1
    nop

    .line 5853
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v4

    .line 5854
    .local v4, "hotwordServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    if-eqz v4, :cond_2

    .line 5855
    invoke-interface {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v5

    if-ne p3, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v1, v2

    .line 5858
    .end local v4    # "hotwordServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5859
    const-string v2, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {p0, v2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    .line 5861
    return v3

    .line 5863
    :cond_4
    return v1
.end method

.method private static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "fromDatasource"    # Z
    .param p8, "attributedOp"    # I

    .line 5749
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v22

    .line 5750
    .local v22, "op":I
    nop

    .line 5751
    move/from16 v9, p6

    invoke-static {v9, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v8

    .line 5752
    .local v8, "attributionChainId":I
    const/16 v23, 0x1

    const/16 v24, 0x0

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    move/from16 v0, v23

    goto :goto_0

    :cond_0
    move/from16 v0, v24

    :goto_0
    move/from16 v25, v0

    .line 5753
    .local v25, "hasChain":Z
    move-object/from16 v0, p3

    .line 5754
    .local v0, "current":Landroid/content/AttributionSource;
    const/4 v1, 0x0

    .line 5757
    .local v1, "next":Landroid/content/AttributionSource;
    if-eqz v25, :cond_2

    .line 5758
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 5759
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 5757
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v13, v14, v4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v2, v24

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v2, v23

    :goto_2
    move/from16 v26, v2

    move-object v7, v0

    .line 5762
    .end local v0    # "current":Landroid/content/AttributionSource;
    .local v7, "current":Landroid/content/AttributionSource;
    .local v26, "isChainStartTrusted":Z
    :goto_3
    if-nez p7, :cond_4

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v0, v24

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v0, v23

    :goto_5
    move/from16 v27, v0

    .line 5763
    .local v27, "skipCurrentChecks":Z
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    .line 5767
    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v6, "next":Landroid/content/AttributionSource;
    const/16 v28, 0x2

    if-eqz p7, :cond_5

    invoke-virtual {v7, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-eqz v6, :cond_6

    .line 5768
    invoke-virtual {v7, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5769
    return v28

    .line 5773
    :cond_6
    if-nez v27, :cond_7

    .line 5774
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v7}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 5773
    invoke-static {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5775
    return v28

    .line 5778
    :cond_7
    if-eqz v6, :cond_8

    .line 5779
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 5778
    invoke-static {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5780
    return v28

    .line 5783
    :cond_8
    if-gez v22, :cond_b

    .line 5785
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5786
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5787
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform runtime permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    :cond_9
    if-nez v6, :cond_a

    .line 5791
    return v24

    .line 5793
    :cond_a
    move-object v7, v6

    .line 5794
    move-object v1, v6

    goto :goto_3

    .line 5800
    :cond_b
    if-eqz p7, :cond_c

    .line 5801
    invoke-virtual {v7, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v6, :cond_c

    .line 5802
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_c

    move/from16 v0, v23

    goto :goto_6

    :cond_c
    move/from16 v0, v24

    :goto_6
    move/from16 v29, v0

    .line 5803
    .local v29, "singleReceiverFromDatasource":Z
    if-nez v29, :cond_e

    if-nez v6, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v20, v24

    goto :goto_8

    :cond_e
    :goto_7
    move/from16 v20, v23

    .line 5804
    .local v20, "selfAccess":Z
    :goto_8
    if-eqz v26, :cond_11

    .line 5805
    invoke-virtual {v7, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v7, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    if-eqz v6, :cond_10

    .line 5806
    invoke-virtual {v6, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move/from16 v21, v23

    goto :goto_9

    :cond_11
    move/from16 v21, v24

    .line 5808
    .local v21, "isLinkTrusted":Z
    :goto_9
    if-nez v27, :cond_12

    if-eqz v25, :cond_12

    .line 5809
    move-object/from16 v16, p3

    move-object/from16 v17, v7

    move/from16 v18, p7

    move/from16 v19, p6

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v10, v0

    goto :goto_a

    .line 5811
    :cond_12
    move/from16 v10, v24

    :goto_a
    nop

    .line 5812
    .local v10, "proxyAttributionFlags":I
    if-eqz v25, :cond_13

    move-object/from16 v0, p3

    move-object v1, v6

    move/from16 v2, p7

    move/from16 v3, p6

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v11, v0

    goto :goto_b

    .line 5814
    :cond_13
    move/from16 v11, v24

    :goto_b
    nop

    .line 5816
    .local v11, "proxiedAttributionFlags":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object v2, v7

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v16, v6

    .end local v6    # "next":Landroid/content/AttributionSource;
    .local v16, "next":Landroid/content/AttributionSource;
    move/from16 v6, v27

    move-object/from16 v17, v7

    .end local v7    # "current":Landroid/content/AttributionSource;
    .local v17, "current":Landroid/content/AttributionSource;
    move/from16 v7, v20

    move/from16 v18, v8

    .end local v8    # "attributionChainId":I
    .local v18, "attributionChainId":I
    move/from16 v8, v29

    move/from16 v9, p8

    move/from16 v12, v18

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    .line 5821
    .local v0, "opMode":I
    packed-switch v0, :pswitch_data_0

    .line 5830
    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_c

    .line 5823
    :pswitch_0
    return v28

    .line 5826
    :pswitch_1
    return v23

    .line 5834
    :cond_14
    move-object/from16 v7, v16

    .line 5835
    .end local v0    # "opMode":I
    .end local v10    # "proxyAttributionFlags":I
    .end local v11    # "proxiedAttributionFlags":I
    .end local v17    # "current":Landroid/content/AttributionSource;
    .end local v20    # "selfAccess":Z
    .end local v21    # "isLinkTrusted":Z
    .end local v27    # "skipCurrentChecks":Z
    .end local v29    # "singleReceiverFromDatasource":Z
    .restart local v7    # "current":Landroid/content/AttributionSource;
    move-object/from16 v12, p3

    move/from16 v9, p6

    move-object/from16 v1, v16

    move/from16 v8, v18

    goto/16 :goto_3

    .line 5831
    .end local v7    # "current":Landroid/content/AttributionSource;
    .restart local v0    # "opMode":I
    .restart local v10    # "proxyAttributionFlags":I
    .restart local v11    # "proxiedAttributionFlags":I
    .restart local v17    # "current":Landroid/content/AttributionSource;
    .restart local v20    # "selfAccess":Z
    .restart local v21    # "isLinkTrusted":Z
    .restart local v27    # "skipCurrentChecks":Z
    .restart local v29    # "singleReceiverFromDatasource":Z
    :cond_15
    :goto_c
    return v24

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .locals 3
    .param p0, "startDataDelivery"    # Z
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 6117
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 6120
    :cond_0
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 6123
    .local v1, "attributionChainId":I
    if-gez v1, :cond_1

    .line 6124
    const/4 v1, 0x0

    .line 6125
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6127
    :cond_1
    return v1

    .line 6118
    .end local v1    # "attributionChainId":I
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "skipProxyOperation"    # Z
    .param p7, "selfAccess"    # Z
    .param p8, "singleReceiverFromDatasource"    # Z
    .param p9, "attributedOp"    # I
    .param p10, "proxyAttributionFlags"    # I
    .param p11, "proxiedAttributionFlags"    # I
    .param p12, "attributionChainId"    # I

    .line 5991
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    move/from16 v9, p6

    move/from16 v8, p9

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/AppOpsManager;

    .line 5992
    .local v7, "appOpsManager":Landroid/app/AppOpsManager;
    if-nez p8, :cond_0

    .line 5993
    move-object v0, v11

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 5994
    .local v6, "accessorSource":Landroid/content/AttributionSource;
    const/4 v0, 0x2

    if-nez p4, :cond_4

    .line 5995
    invoke-static {v1, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 5997
    .local v3, "resolvedAccessorPackageName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 5998
    return v0

    .line 6000
    :cond_1
    nop

    .line 6001
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 6000
    invoke-virtual {v7, v2, v4, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 6002
    .local v4, "opMode":I
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    .line 6003
    .local v5, "next":Landroid/content/AttributionSource;
    if-nez p7, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 6004
    invoke-static {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v12

    .line 6005
    .local v12, "resolvedNextPackageName":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 6006
    return v0

    .line 6008
    :cond_2
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v7, v2, v0, v12}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0

    .line 6011
    .end local v12    # "resolvedNextPackageName":Ljava/lang/String;
    :cond_3
    return v4

    .line 6012
    .end local v3    # "resolvedAccessorPackageName":Ljava/lang/String;
    .end local v4    # "opMode":I
    .end local v5    # "next":Landroid/content/AttributionSource;
    :cond_4
    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v4, " while not having "

    const-string v3, " protecting data with platform defined runtime permission "

    const-string v15, "Datasource "

    const/4 v12, -0x1

    if-eqz p5, :cond_9

    .line 6013
    invoke-static {v1, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v22

    .line 6015
    .local v22, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    .line 6016
    return v0

    .line 6023
    :cond_5
    move/from16 v13, p1

    .line 6024
    .local v13, "startedOp":I
    const/4 v14, 0x0

    .line 6031
    .local v14, "checkedOpResult":I
    if-eq v8, v12, :cond_7

    if-eq v8, v2, :cond_7

    .line 6032
    nop

    .line 6033
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getUid()I

    move-result v12

    .line 6034
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 6032
    invoke-virtual {v7, v2, v12, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v14

    .line 6035
    const/4 v0, 0x2

    if-ne v14, v0, :cond_6

    .line 6036
    return v14

    .line 6038
    :cond_6
    move/from16 v13, p9

    move/from16 v23, v13

    goto :goto_1

    .line 6040
    :cond_7
    move/from16 v23, v13

    .end local v13    # "startedOp":I
    .local v23, "startedOp":I
    :goto_1
    if-eqz p7, :cond_8

    .line 6042
    nop

    .line 6043
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v13

    .line 6044
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 6045
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 6047
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6042
    move-object v12, v7

    move v2, v14

    .end local v14    # "checkedOpResult":I
    .local v2, "checkedOpResult":I
    move/from16 v14, v23

    move-object v9, v15

    move v15, v0

    move-object/from16 v19, p3

    move/from16 v20, p10

    move/from16 v21, p12

    :try_start_1
    invoke-virtual/range {v12 .. v21}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6057
    .local v0, "startedOpResult":I
    move/from16 v12, p6

    move-object v13, v6

    move-object v14, v7

    move v15, v8

    goto/16 :goto_3

    .line 6049
    .end local v0    # "startedOpResult":I
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v2    # "checkedOpResult":I
    .restart local v14    # "checkedOpResult":I
    :catch_1
    move-exception v0

    move v2, v14

    move-object v9, v15

    .line 6050
    .end local v14    # "checkedOpResult":I
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v2    # "checkedOpResult":I
    :goto_2
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6052
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6050
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    move-object v3, v7

    move/from16 v4, p9

    move-object/from16 v5, p2

    move-object v13, v6

    .end local v6    # "accessorSource":Landroid/content/AttributionSource;
    .local v13, "accessorSource":Landroid/content/AttributionSource;
    move-object/from16 v6, p3

    move-object v14, v7

    .end local v7    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v14, "appOpsManager":Landroid/app/AppOpsManager;
    move/from16 v7, p6

    move v15, v8

    move/from16 v8, p10

    move/from16 v12, p6

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v3 .. v10}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    .line 6057
    .local v0, "startedOpResult":I
    goto :goto_3

    .line 6059
    .end local v0    # "startedOpResult":I
    .end local v2    # "checkedOpResult":I
    .end local v13    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v6    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v7    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v14, "checkedOpResult":I
    :cond_8
    move-object v13, v6

    move v15, v8

    move v12, v9

    move v2, v14

    move-object v14, v7

    .end local v6    # "accessorSource":Landroid/content/AttributionSource;
    .end local v7    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v2    # "checkedOpResult":I
    .restart local v13    # "accessorSource":Landroid/content/AttributionSource;
    .local v14, "appOpsManager":Landroid/app/AppOpsManager;
    move-object v3, v14

    move/from16 v4, v23

    move-object/from16 v5, v22

    move-object/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v3 .. v10}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    .line 6063
    .restart local v0    # "startedOpResult":I
    :goto_3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 6065
    .end local v0    # "startedOpResult":I
    .end local v2    # "checkedOpResult":I
    .end local v13    # "accessorSource":Landroid/content/AttributionSource;
    .end local v14    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v22    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .end local v23    # "startedOp":I
    .restart local v6    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v7    # "appOpsManager":Landroid/app/AppOpsManager;
    :cond_9
    move-object v13, v6

    move-object v14, v7

    move v2, v9

    move-object v9, v15

    move v15, v8

    .end local v6    # "accessorSource":Landroid/content/AttributionSource;
    .end local v7    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v13    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v14    # "appOpsManager":Landroid/app/AppOpsManager;
    invoke-static {v1, v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v10

    .line 6067
    .local v10, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6068
    const/4 v0, 0x2

    return v0

    .line 6070
    :cond_a
    move/from16 v0, p1

    .line 6071
    .local v0, "notedOp":I
    const/4 v6, 0x0

    .line 6078
    .local v6, "checkedOpResult":I
    if-eq v15, v12, :cond_c

    move/from16 v12, p1

    if-eq v15, v12, :cond_d

    .line 6079
    nop

    .line 6080
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getUid()I

    move-result v7

    .line 6081
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 6079
    invoke-virtual {v14, v12, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    .line 6082
    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 6083
    return v6

    .line 6085
    :cond_b
    move/from16 v0, p9

    move v8, v0

    move v7, v6

    goto :goto_4

    .line 6078
    :cond_c
    move/from16 v12, p1

    .line 6087
    :cond_d
    move v8, v0

    move v7, v6

    .end local v0    # "notedOp":I
    .end local v6    # "checkedOpResult":I
    .local v7, "checkedOpResult":I
    .local v8, "notedOp":I
    :goto_4
    if-eqz p7, :cond_e

    .line 6094
    nop

    .line 6095
    :try_start_2
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 6096
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 6097
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .line 6094
    move-object v1, v3

    move-object v3, v14

    move-object v12, v4

    move v4, v8

    move-object/from16 v17, v13

    move-object v13, v5

    .end local v13    # "accessorSource":Landroid/content/AttributionSource;
    .local v17, "accessorSource":Landroid/content/AttributionSource;
    move v5, v0

    move v15, v7

    .end local v7    # "checkedOpResult":I
    .local v15, "checkedOpResult":I
    move-object/from16 v7, v16

    move/from16 v16, v15

    move v15, v8

    .end local v8    # "notedOp":I
    .local v15, "notedOp":I
    .local v16, "checkedOpResult":I
    move-object/from16 v8, p3

    :try_start_3
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6106
    .local v0, "notedOpResult":I
    move-object/from16 v1, p3

    goto :goto_6

    .line 6099
    .end local v0    # "notedOpResult":I
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v15    # "notedOp":I
    .end local v16    # "checkedOpResult":I
    .end local v17    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v7    # "checkedOpResult":I
    .restart local v8    # "notedOp":I
    .restart local v13    # "accessorSource":Landroid/content/AttributionSource;
    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v12, v4

    move/from16 v16, v7

    move v15, v8

    move-object/from16 v17, v13

    move-object v13, v5

    .line 6100
    .end local v7    # "checkedOpResult":I
    .end local v8    # "notedOp":I
    .end local v13    # "accessorSource":Landroid/content/AttributionSource;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v15    # "notedOp":I
    .restart local v16    # "checkedOpResult":I
    .restart local v17    # "accessorSource":Landroid/content/AttributionSource;
    :goto_5
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6102
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6100
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6104
    move-object/from16 v1, p3

    invoke-virtual {v14, v15, v11, v1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 6106
    .local v0, "notedOpResult":I
    goto :goto_6

    .line 6108
    .end local v0    # "notedOpResult":I
    .end local v15    # "notedOp":I
    .end local v16    # "checkedOpResult":I
    .end local v17    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v7    # "checkedOpResult":I
    .restart local v8    # "notedOp":I
    .restart local v13    # "accessorSource":Landroid/content/AttributionSource;
    :cond_e
    move-object/from16 v1, p3

    move/from16 v16, v7

    move v15, v8

    move-object/from16 v17, v13

    .end local v7    # "checkedOpResult":I
    .end local v8    # "notedOp":I
    .end local v13    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v15    # "notedOp":I
    .restart local v16    # "checkedOpResult":I
    .restart local v17    # "accessorSource":Landroid/content/AttributionSource;
    invoke-virtual {v14, v15, v10, v1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 6111
    .restart local v0    # "notedOpResult":I
    :goto_6
    move/from16 v6, v16

    .end local v16    # "checkedOpResult":I
    .restart local v6    # "checkedOpResult":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 3
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z
    .param p6, "flagsForProxy"    # Z

    .line 5887
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto :goto_1

    .line 5890
    :cond_0
    if-eqz p5, :cond_1

    .line 5891
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    move v1, v0

    .line 5892
    .local v1, "trustedFlag":I
    :goto_0
    if-eqz p6, :cond_3

    .line 5893
    if-eqz p4, :cond_2

    .line 5894
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 5895
    :cond_2
    if-nez p2, :cond_6

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5896
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 5899
    :cond_3
    if-eqz p4, :cond_4

    .line 5900
    or-int/lit8 v0, v1, 0x4

    return v0

    .line 5901
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5902
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 5903
    :cond_5
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_6

    .line 5904
    or-int/lit8 v0, v1, 0x4

    return v0

    .line 5907
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5908
    return v0

    .line 5910
    :cond_7
    or-int/lit8 v0, v1, 0x2

    return v0

    .line 5888
    .end local v1    # "trustedFlag":I
    :cond_8
    :goto_1
    return v0
.end method

.method private static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 6149
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6150
    return-object p1

    .line 6152
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method private static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 6132
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6133
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6136
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 6135
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 6137
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 6140
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 6143
    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 6144
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6143
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z

    .line 5878
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    return v0
.end method

.method private static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z

    .line 5870
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z

    .line 5621
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    .line 5624
    .local v0, "result":I
    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 5626
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 5628
    :cond_0
    return v0
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 13
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I

    .line 5536
    move-object v0, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5537
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5538
    new-instance v4, Landroid/content/AttributionSource;

    move-object v12, p2

    invoke-direct {v4, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 5540
    .local v4, "attributionSource":Landroid/content/AttributionSource;
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    .line 5544
    .local v1, "result":I
    if-eqz p5, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 5546
    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    .line 5547
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 5548
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 5547
    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_0

    .line 5550
    :cond_0
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-virtual {p0, v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 5553
    :cond_1
    :goto_0
    return v1
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 16
    .param p1, "op"    # I
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z

    .line 5559
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5561
    const/4 v2, -0x1

    move/from16 v9, p1

    if-ne v9, v2, :cond_0

    .line 5562
    return-void

    .line 5565
    :cond_0
    new-instance v2, Landroid/content/AttributionSource;

    invoke-direct {v2, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 5566
    .local v2, "current":Landroid/content/AttributionSource;
    const/4 v3, 0x0

    .line 5569
    .local v3, "next":Landroid/content/AttributionSource;
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p3, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    move v10, v6

    .line 5571
    .local v10, "skipCurrentFinish":Z
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    .line 5575
    .end local v3    # "next":Landroid/content/AttributionSource;
    .local v11, "next":Landroid/content/AttributionSource;
    if-eqz p3, :cond_3

    invoke-virtual {v2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    if-eq v3, v1, :cond_4

    :cond_3
    if-eqz v11, :cond_4

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 5576
    invoke-virtual {v2, v3}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5577
    return-void

    .line 5583
    :cond_4
    if-eqz p3, :cond_5

    .line 5584
    invoke-virtual {v2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    if-ne v3, v1, :cond_5

    if-eqz v11, :cond_5

    .line 5585
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    move v12, v3

    .line 5586
    .local v12, "singleReceiverFromDatasource":Z
    if-nez v12, :cond_6

    if-nez v11, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    move v13, v4

    .line 5588
    .local v13, "selfAccess":Z
    if-nez v12, :cond_8

    .line 5589
    move-object v3, v2

    goto :goto_4

    :cond_8
    move-object v3, v11

    :goto_4
    move-object v14, v3

    .line 5591
    .local v14, "accessorSource":Landroid/content/AttributionSource;
    if-eqz v13, :cond_a

    .line 5592
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v15

    .line 5593
    .local v15, "resolvedPackageName":Ljava/lang/String;
    if-nez v15, :cond_9

    .line 5594
    return-void

    .line 5596
    :cond_9
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v14}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5597
    invoke-virtual {v14}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    .line 5598
    invoke-virtual {v14}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 5596
    move/from16 v5, p1

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 5599
    .end local v15    # "resolvedPackageName":Ljava/lang/String;
    goto :goto_5

    .line 5600
    :cond_a
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 5601
    invoke-static {v3, v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    .line 5602
    .local v3, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 5603
    return-void

    .line 5605
    :cond_b
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v10}, Landroid/app/AppOpsManager;->finishProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 5609
    .end local v3    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    :goto_5
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_6

    .line 5613
    :cond_c
    move-object v2, v11

    .line 5614
    .end local v10    # "skipCurrentFinish":Z
    .end local v12    # "singleReceiverFromDatasource":Z
    .end local v13    # "selfAccess":Z
    .end local v14    # "accessorSource":Landroid/content/AttributionSource;
    move-object v3, v11

    goto/16 :goto_0

    .line 5610
    .restart local v10    # "skipCurrentFinish":Z
    .restart local v12    # "singleReceiverFromDatasource":Z
    .restart local v13    # "selfAccess":Z
    .restart local v14    # "accessorSource":Landroid/content/AttributionSource;
    :cond_d
    :goto_6
    return-void
.end method
