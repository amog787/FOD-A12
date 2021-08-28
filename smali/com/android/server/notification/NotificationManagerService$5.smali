.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1666
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1669
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1670
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1671
    return-void

    .line 1674
    :cond_0
    const/4 v0, 0x0

    .line 1675
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1676
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1677
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1678
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1679
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1680
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1682
    .local v20, "reason":I
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v11, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v12, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    if-nez v9, :cond_3

    .line 1683
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_2

    .line 1684
    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1685
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_1

    .line 1686
    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_2

    .line 1687
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1688
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1689
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1690
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_0

    .line 1685
    :cond_1
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_1

    .line 1691
    :cond_2
    :goto_0
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_1

    .line 1682
    :cond_3
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    .line 1691
    .end local v0    # "queryRestart":Z
    .local v4, "queryRestart":Z
    .local v5, "queryRemove":Z
    .local v21, "packageChanged":Z
    :goto_1
    const-string v0, "android.intent.extra.user_handle"

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1693
    .local v15, "changeUserId":I
    const/4 v14, 0x0

    .line 1694
    .local v14, "pkgList":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1695
    .local v16, "uidList":[I
    move-object/from16 v17, v14

    .end local v14    # "pkgList":[Ljava/lang/String;
    .local v17, "pkgList":[Ljava/lang/String;
    const/4 v9, 0x0

    if-eqz v5, :cond_4

    .line 1696
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v9

    :goto_2
    move/from16 v22, v0

    .line 1697
    .local v22, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v14, "NotificationService"

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " removing="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v22

    .end local v22    # "removingPackage":Z
    .local v9, "removingPackage":Z
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v9    # "removingPackage":Z
    .restart local v22    # "removingPackage":Z
    :cond_5
    move/from16 v9, v22

    .line 1698
    .end local v22    # "removingPackage":Z
    .restart local v9    # "removingPackage":Z
    :goto_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "android.intent.extra.changed_uid_list"

    move/from16 v22, v5

    .end local v5    # "queryRemove":Z
    .local v22, "queryRemove":Z
    const-string v5, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_6

    .line 1699
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1700
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v12, 0x0

    .end local v16    # "uidList":[I
    .local v5, "uidList":[I
    goto/16 :goto_8

    .line 1701
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v16    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1702
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1703
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 1704
    .end local v16    # "uidList":[I
    .restart local v5    # "uidList":[I
    const/4 v6, 0x0

    .line 1705
    const/4 v7, 0x1

    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1706
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v16    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    :cond_7
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1707
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1708
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 1709
    .end local v16    # "uidList":[I
    .restart local v5    # "uidList":[I
    const/4 v6, 0x0

    .line 1710
    const/4 v8, 0x1

    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1711
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v16    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1712
    nop

    .line 1713
    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1715
    .local v0, "distractionRestrictions":I
    and-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_9

    .line 1717
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1718
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v5, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 1719
    .end local v16    # "uidList":[I
    .local v10, "uidList":[I
    const/4 v6, 0x0

    .line 1720
    const/4 v7, 0x1

    move-object v0, v5

    move-object v5, v10

    goto :goto_4

    .line 1722
    .end local v5    # "pkgList":[Ljava/lang/String;
    .end local v10    # "uidList":[I
    .restart local v16    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    :cond_9
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1723
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 1724
    .end local v16    # "uidList":[I
    .restart local v10    # "uidList":[I
    const/4 v6, 0x0

    .line 1725
    const/4 v8, 0x1

    move-object v0, v5

    move-object v5, v10

    .line 1728
    .end local v10    # "uidList":[I
    .local v0, "pkgList":[Ljava/lang/String;
    .local v5, "uidList":[I
    :goto_4
    const/4 v12, 0x0

    goto :goto_8

    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v16    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    :cond_a
    const-string v5, "android.intent.extra.UID"

    if-eqz v4, :cond_b

    .line 1729
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1730
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v10, -0x1

    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x0

    aput v5, v11, v10

    move-object v5, v11

    const/4 v12, 0x0

    .end local v16    # "uidList":[I
    .restart local v5    # "uidList":[I
    goto :goto_8

    .line 1732
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v16    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 1733
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_c

    .line 1734
    return-void

    .line 1736
    :cond_c
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 1737
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v11, :cond_d

    .line 1738
    return-void

    .line 1740
    :cond_d
    if-eqz v21, :cond_11

    .line 1743
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1745
    const/4 v12, -0x1

    if-eq v15, v12, :cond_e

    move v12, v15

    goto :goto_5

    .line 1746
    :cond_e
    const/4 v12, 0x0

    .line 1743
    :goto_5
    invoke-interface {v0, v11, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    .local v0, "enabled":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_f

    if-nez v0, :cond_10

    .line 1749
    :cond_f
    const/4 v6, 0x0

    .line 1759
    .end local v0    # "enabled":I
    :cond_10
    :goto_6
    goto :goto_7

    .line 1757
    :catch_0
    move-exception v0

    goto :goto_7

    .line 1751
    :catch_1
    move-exception v0

    .line 1754
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v12, :cond_10

    .line 1755
    const-string v12, "Exception trying to look up app enabled setting"

    invoke-static {v14, v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1761
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_11
    :goto_7
    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v0, v12

    .line 1762
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    new-array v13, v14, [I

    const/4 v14, -0x1

    invoke-virtual {v2, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v13, v12

    move-object v5, v13

    .line 1764
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v16    # "uidList":[I
    .restart local v5    # "uidList":[I
    :goto_8
    if-eqz v0, :cond_16

    array-length v10, v0

    if-lez v10, :cond_16

    .line 1765
    if-eqz v6, :cond_14

    .line 1766
    array-length v14, v0

    move v13, v12

    :goto_9
    if-ge v13, v14, :cond_13

    aget-object v23, v0, v13

    .line 1767
    .local v23, "pkgName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2100()I

    move-result v11

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    if-nez v4, :cond_12

    const/16 v25, 0x1

    goto :goto_a

    :cond_12
    move/from16 v25, v12

    :goto_a
    const/16 v26, 0x0

    move/from16 v27, v12

    move v12, v9

    .end local v9    # "removingPackage":Z
    .local v12, "removingPackage":Z
    move-object v9, v10

    move v10, v11

    move/from16 v11, v16

    move/from16 v28, v12

    .end local v12    # "removingPackage":Z
    .local v28, "removingPackage":Z
    move-object/from16 v12, v23

    move/from16 v29, v13

    move-object/from16 v13, v17

    move/from16 v30, v14

    const/16 v31, 0x1

    move/from16 v14, v18

    move/from16 v32, v15

    .end local v15    # "changeUserId":I
    .local v32, "changeUserId":I
    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v32

    move/from16 v18, v20

    move-object/from16 v19, v26

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1766
    .end local v23    # "pkgName":Ljava/lang/String;
    add-int/lit8 v13, v29, 0x1

    move/from16 v12, v27

    move/from16 v9, v28

    move/from16 v14, v30

    move/from16 v15, v32

    goto :goto_9

    .end local v28    # "removingPackage":Z
    .end local v32    # "changeUserId":I
    .restart local v9    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_13
    move/from16 v28, v9

    move/from16 v32, v15

    .end local v9    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v32    # "changeUserId":I
    goto :goto_b

    .line 1770
    .end local v28    # "removingPackage":Z
    .end local v32    # "changeUserId":I
    .restart local v9    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_14
    move/from16 v28, v9

    move/from16 v32, v15

    .end local v9    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v32    # "changeUserId":I
    if-eqz v7, :cond_15

    if-eqz v5, :cond_15

    array-length v9, v5

    if-lez v9, :cond_15

    .line 1771
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9, v0, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_b

    .line 1772
    :cond_15
    if-eqz v8, :cond_17

    if-eqz v5, :cond_17

    array-length v9, v5

    if-lez v9, :cond_17

    .line 1773
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9, v0, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_b

    .line 1764
    .end local v28    # "removingPackage":Z
    .end local v32    # "changeUserId":I
    .restart local v9    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_16
    move/from16 v28, v9

    move/from16 v32, v15

    .line 1777
    .end local v9    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v32    # "changeUserId":I
    :cond_17
    :goto_b
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    move/from16 v11, v28

    move/from16 v10, v32

    .end local v28    # "removingPackage":Z
    .end local v32    # "changeUserId":I
    .local v10, "changeUserId":I
    .local v11, "removingPackage":Z
    invoke-virtual {v9, v11, v10, v0, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move v0, v4

    move/from16 v5, v21

    move/from16 v4, v22

    .line 1779
    .end local v10    # "changeUserId":I
    .end local v11    # "removingPackage":Z
    .end local v21    # "packageChanged":Z
    .end local v22    # "queryRemove":Z
    .local v0, "queryRestart":Z
    .local v4, "queryRemove":Z
    .local v5, "packageChanged":Z
    :cond_18
    return-void
.end method
