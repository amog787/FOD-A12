.class Lcom/android/server/UiModeManagerService$12;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 609
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 676
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$requestProjection$1(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Ljava/lang/String;

    .line 941
    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->access$4400(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V
    .locals 6
    .param p1, "listener"    # Landroid/app/IOnProjectionStateChangedListener;
    .param p2, "projectionType"    # I

    .line 993
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "addOnProjectionStateChangedListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    if-nez p2, :cond_0

    .line 997
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$4602(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 1010
    invoke-static {v2, p2, v1}, Lcom/android/server/UiModeManagerService;->access$4500(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    move-result v2

    .line 1011
    .local v2, "activeProjectionTypes":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 1013
    :try_start_1
    invoke-interface {p1, v2, v1}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v3

    .line 1015
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed a call to onProjectionStateChanged() during listener registration."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "activeProjectionTypes":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 1022
    return-void

    .line 1021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public disableCarMode(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$12;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 647
    return-void
.end method

.method public disableCarModeByCallingPackage(ILjava/lang/String;)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 657
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 667
    .local v0, "isSystemCaller":Z
    :goto_0
    if-eqz v0, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, p1, -0x3

    .line 669
    .local v1, "carModeFlags":I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 671
    .local v3, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 674
    :try_start_1
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 675
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda2;

    invoke-direct {v7, p2}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 677
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;

    .line 678
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    .line 679
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 681
    .local v6, "priority":I
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7, v2, v1, v6, p2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 682
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v7, v7, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v7, :cond_3

    .line 683
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7, v2, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 685
    .end local v6    # "priority":I
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    nop

    .line 689
    return-void

    .line 685
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "isSystemCaller":Z
    .end local v1    # "carModeFlags":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "flags":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 687
    .restart local v0    # "isSystemCaller":Z
    .restart local v1    # "carModeFlags":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "flags":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 808
    return-void
.end method

.method public enableCarMode(IILjava/lang/String;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "priority"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 613
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 618
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 619
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 622
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 628
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 629
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 630
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_3

    .line 631
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 633
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    nop

    .line 637
    return-void

    .line 633
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "flags":I
    .end local p2    # "priority":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 635
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "flags":I
    .restart local p2    # "priority":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    throw v2
.end method

.method public getActiveProjectionTypes()I
    .locals 4

    .line 964
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "getActiveProjectionTypes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "projectionTypeFlag":I
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 969
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 970
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 971
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 969
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 975
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    .line 976
    return v0

    .line 975
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentModeType()I
    .locals 4

    .line 693
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 695
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    return v3

    .line 697
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 699
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw v2
.end method

.method public getCustomNightModeEnd()J
    .locals 4

    .line 883
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$3500(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCustomNightModeStart()J
    .locals 4

    .line 855
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getNightMode()I
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProjectingPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "projectionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "getProjectionState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 985
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/UiModeManagerService;->access$4500(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    .line 987
    monitor-exit v0

    return-object v1

    .line 988
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNightModeLocked()Z
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 795
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUiModeLocked()Z
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2500(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 788
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 801
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 802
    return-void
.end method

.method public releaseProjection(ILjava/lang/String;)Z
    .locals 1
    .param p1, "projectionType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 957
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$3700(I)V

    .line 958
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;I)V

    .line 959
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/UiModeManagerService;->access$4400(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/IOnProjectionStateChangedListener;

    .line 1027
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string/jumbo v2, "removeOnProjectionStateChangedListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1032
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1037
    return-void

    .line 1036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "projectionType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 913
    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->access$3700(I)V

    .line 914
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;I)V

    .line 915
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v3}, Lcom/android/server/UiModeManagerService;->access$3902(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3900(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 925
    .local v1, "currentHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 926
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->access$4000(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 927
    monitor-exit v0

    return v2

    .line 925
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 935
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    if-ne p2, v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 936
    monitor-exit v0

    return v3

    .line 939
    :cond_4
    new-instance v10, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v8, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;)V

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p3

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;Lcom/android/server/UiModeManagerService$1;)V

    move-object v4, v10

    .line 942
    .local v4, "projectionHolder":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->access$4200(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 943
    monitor-exit v0

    return v3

    .line 945
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " set projection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, p2}, Lcom/android/server/UiModeManagerService;->access$4300(Lcom/android/server/UiModeManagerService;I)V

    .line 949
    .end local v1    # "currentHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    .end local v4    # "projectionHolder":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    monitor-exit v0

    .line 950
    return v2

    .line 949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setApplicationNightMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 758
    packed-switch p1, :pswitch_data_0

    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :pswitch_0
    nop

    .line 768
    packed-switch p1, :pswitch_data_1

    .line 776
    const/4 v0, 0x0

    .local v0, "configNightMode":I
    goto :goto_0

    .line 770
    .end local v0    # "configNightMode":I
    :pswitch_1
    const/16 v0, 0x20

    .line 771
    .restart local v0    # "configNightMode":I
    goto :goto_0

    .line 773
    .end local v0    # "configNightMode":I
    :pswitch_2
    const/16 v0, 0x10

    .line 774
    .restart local v0    # "configNightMode":I
    nop

    .line 778
    :goto_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 779
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2400(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v1

    .line 780
    .local v1, "updater":Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    invoke-interface {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    .line 781
    invoke-interface {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()V

    .line 782
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCustomNightModeEnd(J)V
    .locals 5
    .param p1, "time"    # J

    .line 888
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 894
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 895
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 897
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_0
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_1

    .line 904
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    return-void

    .line 899
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$3502(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    .line 900
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 904
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 901
    :catch_0
    move-exception v3

    .line 902
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    nop

    .line 906
    return-void

    .line 904
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    throw v3
.end method

.method public setCustomNightModeStart(J)V
    .locals 5
    .param p1, "time"    # J

    .line 860
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void

    .line 866
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 867
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 869
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_0
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_1

    .line 877
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    return-void

    .line 871
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$3302(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    .line 872
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$2300(Lcom/android/server/UiModeManagerService;I)V

    .line 873
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 877
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 874
    :catch_0
    move-exception v3

    .line 875
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    nop

    .line 879
    return-void

    .line 877
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    throw v3
.end method

.method public setNightMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 705
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void

    .line 711
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :pswitch_0
    nop

    .line 721
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 722
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 724
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 725
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eq v4, p1, :cond_6

    .line 726
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 727
    :cond_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)V

    .line 728
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$2100(Lcom/android/server/UiModeManagerService;)V

    .line 731
    :cond_2
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->access$402(Lcom/android/server/UiModeManagerService;I)I

    .line 732
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$2200(Lcom/android/server/UiModeManagerService;)Z

    .line 733
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$2300(Lcom/android/server/UiModeManagerService;I)V

    .line 735
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 736
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$500(Lcom/android/server/UiModeManagerService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 737
    :cond_4
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)V

    .line 738
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    .line 740
    :cond_5
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 743
    :cond_6
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    nop

    .line 747
    return-void

    .line 743
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "user":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "mode":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 745
    .restart local v0    # "user":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "mode":I
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setNightModeActivated(Z)Z
    .locals 8
    .param p1, "active"    # Z

    .line 812
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return v1

    .line 818
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 819
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return v1

    .line 827
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 828
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 830
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 836
    :cond_2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v6, :cond_3

    if-eqz p1, :cond_3

    .line 838
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, v5}, Lcom/android/server/UiModeManagerService;->access$402(Lcom/android/server/UiModeManagerService;I)I

    goto :goto_1

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    if-ne v1, v5, :cond_6

    if-nez p1, :cond_6

    .line 841
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, v6}, Lcom/android/server/UiModeManagerService;->access$402(Lcom/android/server/UiModeManagerService;I)I

    goto :goto_1

    .line 831
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)V

    .line 832
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    if-nez p1, :cond_5

    move v1, v6

    :cond_5
    invoke-static {v5, v1}, Lcom/android/server/UiModeManagerService;->access$2802(Lcom/android/server/UiModeManagerService;Z)Z

    .line 833
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->access$2902(Lcom/android/server/UiModeManagerService;Z)Z

    .line 834
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/UiModeManagerService;->access$3002(Lcom/android/server/UiModeManagerService;I)I

    .line 835
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;I)V

    .line 843
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1700(Lcom/android/server/UiModeManagerService;)V

    .line 844
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/UiModeManagerService;->access$2300(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    nop

    .line 848
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    .line 846
    return v6

    .line 848
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    nop

    .end local v0    # "user":I
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "active":Z
    throw v1

    .line 850
    .end local v3    # "ident":J
    .restart local v0    # "user":I
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "active":Z
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
