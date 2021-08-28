.class final Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientUserRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackageTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7045
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7046
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7047
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    .line 7048
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5
    .param p1, "array"    # [Z

    .line 7185
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7186
    return v1

    .line 7188
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-boolean v4, p1, v3

    .line 7189
    .local v4, "value":Z
    if-eqz v4, :cond_1

    .line 7190
    return v2

    .line 7188
    .end local v4    # "value":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7193
    :cond_2
    return v1
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .line 7160
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$2900(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7162
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 7163
    monitor-exit v0

    return-void

    .line 7165
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 7166
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7167
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    .line 7168
    .local v3, "restrictions":[Z
    array-length v4, v3

    .line 7169
    .local v4, "restrictionCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 7170
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_1

    .line 7171
    move v6, v5

    .line 7172
    .local v6, "changedCode":I
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7169
    .end local v6    # "changedCode":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7166
    .end local v3    # "restrictions":[Z
    .end local v4    # "restrictionCount":I
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7176
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 7177
    .end local v1    # "userCount":I
    monitor-exit v0

    .line 7178
    return-void

    .line 7177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 7181
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 7182
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 7118
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7119
    return v1

    .line 7121
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 7122
    .local v0, "restrictions":[Z
    if-nez v0, :cond_1

    .line 7123
    return v1

    .line 7125
    :cond_1
    aget-boolean v2, v0, p1

    if-nez v2, :cond_2

    .line 7126
    return v1

    .line 7128
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 7129
    return v2

    .line 7131
    :cond_3
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PackageTagsList;

    .line 7132
    .local v1, "perUserExclusions":Landroid/os/PackageTagsList;
    if-nez v1, :cond_4

    .line 7133
    return v2

    .line 7136
    :cond_4
    invoke-virtual {v1, p2, p3}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDefault()Z
    .locals 1

    .line 7155
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$binderDied$0$AppOpsService$ClientUserRestrictionState(I)V
    .locals 2
    .param p1, "changedCode"    # I

    .line 7172
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->access$3000(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 7140
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7141
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7142
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 7143
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 7146
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 7147
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7148
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 7149
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 7152
    :cond_1
    return-void
.end method

.method public setRestriction(IZLandroid/os/PackageTagsList;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackageTags"    # Landroid/os/PackageTagsList;
    .param p4, "userId"    # I

    .line 7052
    const/4 v0, 0x0

    .line 7054
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 7055
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 7059
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v1, :cond_2

    .line 7062
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 7064
    .local v1, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 7065
    .local v4, "users":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 7066
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    aput v6, v4, v5

    .line 7065
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7068
    .end local v1    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "i":I
    :cond_1
    goto :goto_1

    .line 7069
    .end local v4    # "users":[I
    :cond_2
    new-array v1, v3, [I

    aput p4, v1, v2

    move-object v4, v1

    .line 7072
    .restart local v4    # "users":[I
    :goto_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v1, :cond_c

    .line 7073
    array-length v1, v4

    .line 7075
    .local v1, "numUsers":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v1, :cond_c

    .line 7076
    aget v6, v4, v5

    .line 7078
    .local v6, "thisUserId":I
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Z

    .line 7079
    .local v7, "userRestrictions":[Z
    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    .line 7080
    const/16 v8, 0x74

    new-array v7, v8, [Z

    .line 7081
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7083
    :cond_3
    if-eqz v7, :cond_5

    aget-boolean v8, v7, p1

    if-eq v8, p2, :cond_5

    .line 7084
    aput-boolean p2, v7, p1

    .line 7085
    if-nez p2, :cond_4

    invoke-direct {p0, v7}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault([Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7086
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 7087
    const/4 v7, 0x0

    .line 7089
    :cond_4
    const/4 v0, 0x1

    .line 7092
    :cond_5
    if-eqz v7, :cond_b

    .line 7093
    if-eqz p3, :cond_7

    .line 7094
    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move v8, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v8, v3

    .line 7095
    .local v8, "noExcludedPackages":Z
    :goto_4
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-nez v9, :cond_8

    if-nez v8, :cond_8

    .line 7096
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 7098
    :cond_8
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-eqz v9, :cond_b

    .line 7099
    if-eqz v8, :cond_9

    .line 7100
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 7101
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_a

    .line 7102
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    goto :goto_5

    .line 7105
    :cond_9
    invoke-virtual {v9, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7107
    :cond_a
    :goto_5
    const/4 v0, 0x1

    .line 7075
    .end local v6    # "thisUserId":I
    .end local v7    # "userRestrictions":[Z
    .end local v8    # "noExcludedPackages":Z
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7113
    .end local v1    # "numUsers":I
    .end local v5    # "i":I
    :cond_c
    return v0
.end method
