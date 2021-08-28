.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .line 552
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V
    .locals 4
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "realUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 1084
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    if-eqz v0, :cond_0

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1090
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$900(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;

    move-result-object v2

    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/android/server/om/OverlayActorEnforcer;->enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V

    .line 1091
    return-void

    .line 1085
    .end local v1    # "callingUid":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve overlay information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method private executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 949
    if-eqz p1, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 955
    const/4 v1, 0x0

    .line 956
    .local v1, "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 957
    .local v3, "request":Landroid/content/om/OverlayManagerTransaction$Request;
    nop

    .line 958
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerService$1;->executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;

    move-result-object v4

    .line 957
    invoke-static {v1, v4}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v4

    move-object v1, v4

    .line 959
    .end local v3    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    goto :goto_0

    .line 964
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 966
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4, v1}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    nop

    .line 970
    .end local v1    # "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v2    # "ident":J
    monitor-exit v0

    .line 971
    return-void

    .line 968
    .restart local v1    # "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    throw v4

    .line 970
    .end local v1    # "affectedPackagesToUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 950
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;
    .locals 8
    .param p1, "request"    # Landroid/content/om/OverlayManagerTransaction$Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    .line 882
    const-string v0, "Transaction contains a null request"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 883
    iget-object v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const-string v1, "Transaction overlay identifier must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 888
    .local v0, "callingUid":I
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v1

    .line 907
    .local v1, "realUserId":I
    iget-object v2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    goto :goto_2

    .line 890
    .end local v1    # "realUserId":I
    :cond_1
    :goto_0
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 894
    const/4 v1, -0x1

    .line 898
    .restart local v1    # "realUserId":I
    iget-object v2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 900
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 901
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does own packagename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 904
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    :goto_1
    nop

    .line 910
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 912
    .local v2, "ident":J
    :try_start_0
    iget v4, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    packed-switch v4, :pswitch_data_0

    .line 937
    new-instance v4, Ljava/lang/IllegalArgumentException;

    goto :goto_3

    .line 934
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    iget-object v5, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    return-object v4

    .line 925
    :pswitch_1
    :try_start_1
    iget-object v4, p1, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-string v5, "fabricated_overlay"

    .line 926
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/FabricatedOverlayInternal;

    .line 929
    .local v4, "fabricated":Landroid/os/FabricatedOverlayInternal;
    const-string/jumbo v5, "no fabricated overlay attached to request"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 931
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    return-object v5

    .line 922
    .end local v4    # "fabricated":Landroid/os/FabricatedOverlayInternal;
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    iget-object v5, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 940
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    return-object v4

    .line 914
    :pswitch_3
    const/4 v4, 0x0

    .line 915
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :try_start_3
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 916
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    iget-object v6, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v5

    .line 915
    invoke-static {v4, v5}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    move-object v4, v5

    .line 917
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 918
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    iget-object v6, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v5, v6, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v5

    .line 917
    invoke-static {v4, v5}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    move-object v4, v5

    .line 919
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 919
    return-object v5

    .line 937
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsupported request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "realUserId":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 940
    .restart local v0    # "callingUid":I
    .restart local v1    # "realUserId":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v4

    .line 891
    .end local v1    # "realUserId":I
    .end local v2    # "ident":J
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unsupported for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1067
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1068
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1067
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setEnabledExclusive$0(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 665
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static synthetic lambda$setEnabledExclusiveInCategory$1(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 700
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static synthetic lambda$setLowestPriority$3(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 799
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static synthetic lambda$setPriority$2(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x$0"    # Lcom/android/server/om/PackageAndUser;

    .line 735
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method


# virtual methods
.method public commit(Landroid/content/om/OverlayManagerTransaction;)V
    .locals 8
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#commit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 862
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 873
    nop

    .line 875
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 876
    nop

    .line 877
    return-void

    .line 863
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 866
    .local v3, "ident":J
    :try_start_3
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$800(Lcom/android/server/om/OverlayManagerService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 868
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    nop

    .line 870
    const-string v5, "OverlayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commit failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    throw v5

    .line 868
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 875
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "transaction":Landroid/content/om/OverlayManagerTransaction;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 876
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 984
    new-instance v0, Lcom/android/server/om/DumpState;

    invoke-direct {v0}, Lcom/android/server/om/DumpState;-><init>()V

    .line 985
    .local v0, "dumpState":Lcom/android/server/om/DumpState;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 987
    const/4 v2, 0x0

    .line 988
    .local v2, "opti":I
    :goto_0
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_5

    .line 989
    aget-object v3, p3, v2

    .line 990
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_0

    .line 991
    goto/16 :goto_2

    .line 993
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 995
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    const-string v1, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    const-string v1, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    const-string v1, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    const-string v1, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    const-string v1, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    const-string v1, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    const-string v1, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    return-void

    .line 1004
    :cond_1
    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1005
    array-length v4, p3

    if-lt v2, v4, :cond_2

    .line 1006
    const-string v1, "Error: user missing argument"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    return-void

    .line 1010
    :cond_2
    :try_start_0
    aget-object v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    add-int/lit8 v2, v2, 0x1

    .line 1015
    goto :goto_1

    .line 1012
    :catch_0
    move-exception v1

    .line 1013
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: user argument is not a number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    return-void

    .line 1016
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v4, "--verbose"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1017
    invoke-virtual {v0, v5}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_1

    .line 1019
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    .end local v3    # "opt":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 1022
    :cond_5
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_7

    .line 1023
    aget-object v3, p3, v2

    .line 1024
    .local v3, "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1025
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_6
    goto/16 :goto_3

    :sswitch_0
    const-string v4, "basecodepath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v5, "packagename"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_3

    :sswitch_2
    const-string/jumbo v4, "isenabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_3
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_4
    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v1, 0x9

    goto :goto_3

    :sswitch_5
    const-string/jumbo v4, "ismutable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_6
    const-string/jumbo v4, "userid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v5

    goto :goto_3

    :sswitch_7
    const-string/jumbo v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_8
    const-string/jumbo v4, "targetpackagename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_9
    const-string/jumbo v4, "targetoverlayablename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x3

    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 1039
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    goto :goto_4

    .line 1036
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 1043
    .end local v3    # "arg":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    array-length v1, p3

    if-ge v2, v1, :cond_8

    .line 1044
    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    .line 1045
    add-int/lit8 v2, v2, 0x1

    .line 1048
    :cond_8
    const-string v1, "dump"

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1050
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1051
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1052
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1054
    :cond_9
    monitor-exit v1

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x685a1e7c -> :sswitch_9
        -0x4a674a60 -> :sswitch_8
        -0x4577865c -> :sswitch_7
        -0x31d4cdda -> :sswitch_6
        -0x3188d944 -> :sswitch_5
        0x302bcfe -> :sswitch_4
        0x68ac491 -> :sswitch_3
        0x1a483ad7 -> :sswitch_2
        0x36391bd1 -> :sswitch_1
        0x64f6f963 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .locals 5
    .param p1, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 556
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 557
    const-string v2, "getAllOverlays"

    invoke-direct {p0, p1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 559
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 560
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    return-object v4

    .line 561
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 563
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "userIdArg":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    throw v2
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 6

    .line 816
    const-wide/32 v0, 0x4000000

    :try_start_0
    const-string v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 822
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 823
    :try_start_2
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 829
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 823
    return-object v5

    .line 824
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 826
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 829
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 830
    throw v2
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 589
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .locals 5
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "userIdArg"    # I

    .line 595
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 601
    const-string v2, "getOverlayInfo"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 603
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 604
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 604
    return-object v4

    .line 605
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local p2    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 608
    throw v2

    .line 596
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 570
    if-nez p1, :cond_0

    .line 571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 575
    :cond_0
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 576
    const-string v2, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 578
    .local v2, "realUserId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 579
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 579
    return-object v4

    .line 580
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "targetPackageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    .end local v2    # "realUserId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "targetPackageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    throw v2
.end method

.method public invalidateCachesForOverlay(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 835
    if-nez p1, :cond_0

    .line 836
    return-void

    .line 839
    :cond_0
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string v1, "invalidateCachesForOverlay"

    invoke-direct {p0, p2, v1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v1

    .line 841
    .local v1, "realUserId":I
    const-string v2, "invalidateCachesForOverlay"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 844
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    goto :goto_0

    .line 850
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 847
    :catch_0
    move-exception v5

    .line 848
    .local v5, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_2
    const-string v6, "OverlayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalidate caches for overlay \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    .end local v5    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 853
    nop

    .line 854
    return-void

    .line 850
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v1    # "realUserId":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 852
    .restart local v0    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v1    # "realUserId":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 853
    throw v4
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 978
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 980
    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 614
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 615
    return v0

    .line 619
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 621
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 622
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v4, "setEnabled"

    invoke-direct {p0, p3, v4}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v4

    .line 623
    .local v4, "realUserId":I
    const-string/jumbo v5, "setEnabled"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 627
    .local v5, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    :try_start_2
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 630
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, v3, p2, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v9

    .line 629
    invoke-static {v8, v9}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    const/4 v0, 0x1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 640
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    return v0

    .line 635
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v8

    .line 633
    .local v8, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 637
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 640
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    return v0

    .line 635
    .end local v8    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 637
    .restart local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "realUserId":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 640
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 641
    throw v0
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userIdArg"    # I

    .line 647
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 652
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 654
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 655
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v4, "setEnabledExclusive"

    invoke-direct {p0, p3, v4}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v4

    .line 656
    .local v4, "realUserId":I
    const-string/jumbo v5, "setEnabledExclusive"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 660
    .local v5, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 662
    :try_start_2
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, v3, v0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v10, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v10, v9}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 664
    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    const/4 v0, 0x1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 672
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 675
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    return v0

    .line 670
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v8

    .line 668
    .local v8, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 672
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 675
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 668
    return v0

    .line 670
    .end local v8    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 672
    .restart local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "realUserId":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "enable":Z
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 675
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    .restart local p3    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    throw v0

    .line 648
    :cond_1
    :goto_1
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 682
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 683
    return v0

    .line 687
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 689
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 690
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v4, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p2, v4}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v4

    .line 692
    .local v4, "realUserId":I
    const-string/jumbo v5, "setEnabledExclusiveInCategory"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 696
    .local v5, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    :try_start_2
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v11, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v11, v10}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 700
    invoke-virtual {v8, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 707
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 710
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 701
    return v9

    .line 705
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v8

    .line 703
    .local v8, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 707
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 710
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 703
    return v0

    .line 705
    .end local v8    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 707
    .restart local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "realUserId":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 710
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 711
    throw v0
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 751
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 752
    return v0

    .line 756
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setHighestPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 758
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 759
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v4, "setHighestPriority"

    invoke-direct {p0, p2, v4}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v4

    .line 760
    .local v4, "realUserId":I
    const-string/jumbo v5, "setHighestPriority"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 764
    .local v5, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 766
    :try_start_2
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 767
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v9

    .line 766
    invoke-static {v8, v9}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    const/4 v0, 0x1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 774
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 777
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 768
    return v0

    .line 772
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v8

    .line 770
    .local v8, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 774
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 777
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 770
    return v0

    .line 772
    .end local v8    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 774
    .restart local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "realUserId":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 777
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 778
    throw v0
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIdArg"    # I

    .line 783
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 784
    return v0

    .line 788
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setLowestPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 790
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 791
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v4, "setLowestPriority"

    invoke-direct {p0, p2, v4}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v4

    .line 792
    .local v4, "realUserId":I
    const-string/jumbo v5, "setLowestPriority"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 796
    .local v5, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 798
    :try_start_2
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v10, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v10, v9}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 799
    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 800
    const/4 v0, 0x1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 806
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 809
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 800
    return v0

    .line 804
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v8

    .line 802
    .local v8, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 806
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 809
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 802
    return v0

    .line 804
    .end local v8    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 806
    .restart local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "realUserId":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIdArg":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 809
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "realUserId":I
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 810
    throw v0
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parentPackageName"    # Ljava/lang/String;
    .param p3, "userIdArg"    # I

    .line 717
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 722
    :cond_0
    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 725
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 726
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 727
    .local v4, "parentOverlay":Landroid/content/om/OverlayIdentifier;
    const-string/jumbo v5, "setPriority"

    invoke-direct {p0, p3, v5}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    .line 728
    .local v5, "realUserId":I
    const-string/jumbo v6, "setPriority"

    invoke-direct {p0, v3, v6, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 732
    .local v6, "ident":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    :try_start_2
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, v3, v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v11, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v11, v10}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 735
    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    const/4 v0, 0x1

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 742
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 745
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    return v0

    .line 740
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v9

    .line 738
    .local v9, "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 742
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 745
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 738
    return v0

    .line 740
    .end local v9    # "e":Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
    :goto_0
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "parentOverlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 742
    .restart local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .restart local v4    # "parentOverlay":Landroid/content/om/OverlayIdentifier;
    .restart local v5    # "realUserId":I
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    nop

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "parentPackageName":Ljava/lang/String;
    .end local p3    # "userIdArg":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 745
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "parentOverlay":Landroid/content/om/OverlayIdentifier;
    .end local v5    # "realUserId":I
    .end local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "parentPackageName":Ljava/lang/String;
    .restart local p3    # "userIdArg":I
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 746
    throw v0

    .line 718
    :cond_1
    :goto_1
    return v0
.end method
