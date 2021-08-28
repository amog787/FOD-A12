.class public Lcom/android/server/devicepolicy/PolicyVersionUpgrader;
.super Ljava/lang/Object;
.source "PolicyVersionUpgrader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field private static final VERBOSE_LOG:Z = false


# instance fields
.field private final mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 56
    return-void
.end method

.method private getVersionFile()Lcom/android/internal/util/JournaledFile;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method private loadAllUsersData([II)Landroid/util/SparseArray;
    .locals 5
    .param p1, "allUsers"    # [I
    .param p2, "loadVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 130
    .local v0, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 131
    .local v3, "user":I
    invoke-direct {p0, v3, p2}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadDataForUser(II)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 130
    .end local v3    # "user":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-object v0
.end method

.method private loadDataForUser(II)Lcom/android/server/devicepolicy/DevicePolicyData;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "loadVersion"    # I

    .line 137
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyData;-><init>(I)V

    .line 138
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 139
    invoke-interface {v1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 140
    invoke-interface {v2, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 141
    invoke-interface {v3, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getAdminInfoSupplier(I)Ljava/util/function/Function;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 142
    invoke-interface {v4, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 138
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyData;->load(Lcom/android/server/devicepolicy/DevicePolicyData;ZLcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V

    .line 143
    return-object v0
.end method

.method private readVersion()I
    .locals 6

    .line 158
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 160
    .local v0, "versionFile":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    .line 165
    .local v1, "file":Ljava/io/File;
    nop

    .line 166
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v3

    .line 166
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "versionString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 168
    .end local v3    # "versionString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DevicePolicyManager"

    const-string v5, "Error reading version"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return v2
.end method

.method private writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 147
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 149
    invoke-interface {v0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 150
    invoke-interface {v1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result v1

    .line 147
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyData;->store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Z)Z

    move-result v0

    return v0
.end method

.method private writePoliciesAndVersion([ILandroid/util/SparseArray;I)V
    .locals 7
    .param p1, "allUsers"    # [I
    .param p3, "currentVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;I)V"
        }
    .end annotation

    .line 114
    .local p2, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    const/4 v0, 0x1

    .line 115
    .local v0, "allWritesSuccessful":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget v5, p1, v3

    .line 116
    .local v5, "user":I
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 116
    invoke-direct {p0, v5, v6}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    move v0, v4

    .line 115
    .end local v5    # "user":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeVersion(I)V

    goto :goto_2

    .line 123
    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 123
    const-string v2, "Error: Failed upgrading policies to version %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_2
    return-void
.end method

.method private writeVersion(I)V
    .locals 7
    .param p1, "version"    # I

    .line 175
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 177
    .local v0, "versionFile":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v1

    .line 183
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 184
    .local v4, "versionBytes":[B
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v4, v6}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 185
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v4    # "versionBytes":[B
    goto :goto_0

    .line 186
    :catch_0
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/IOException;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Writing version %d failed: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 190
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public upgradePolicy(I)V
    .locals 17
    .param p1, "dpmsVersion"    # I

    .line 66
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->readVersion()I

    move-result v1

    .line 67
    .local v1, "oldVersion":I
    const-string v2, "DevicePolicyManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move/from16 v5, p1

    if-lt v1, v5, :cond_0

    .line 68
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    .line 68
    const-string v3, "Current version %d, latest version %d, not upgrading."

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v6, v0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {v6}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getUsersForUpgrade()[I

    move-result-object v6

    .line 78
    .local v6, "allUsers":[I
    invoke-direct {v0, v6, v1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadAllUsersData([II)Landroid/util/SparseArray;

    move-result-object v7

    .line 80
    .local v7, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    move v8, v1

    .line 81
    .local v8, "currentVersion":I
    const-string v9, "Upgrading from version %d"

    if-nez v8, :cond_1

    .line 82
    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v8, 0x1

    .line 88
    :cond_1
    if-ne v8, v4, :cond_6

    .line 89
    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    array-length v9, v6

    move v10, v3

    :goto_0
    if-ge v10, v9, :cond_5

    aget v11, v6, v10

    .line 94
    .local v11, "userId":I
    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 95
    .local v12, "userData":Lcom/android/server/devicepolicy/DevicePolicyData;
    if-nez v12, :cond_2

    .line 96
    move/from16 v16, v3

    goto :goto_3

    .line 98
    :cond_2
    iget-object v13, v12, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 99
    .local v14, "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    iget-object v15, v0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    iget-object v3, v14, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v15, v11, v3}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->isDeviceOwner(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    new-array v3, v4, [Ljava/lang/Object;

    .line 101
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v3, v16

    .line 100
    const-string v15, "Marking Device Owner in user %d for permission grant "

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-boolean v4, v14, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto :goto_2

    .line 99
    :cond_3
    const/16 v16, 0x0

    .line 104
    .end local v14    # "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    :goto_2
    move/from16 v3, v16

    goto :goto_1

    .line 98
    :cond_4
    move/from16 v16, v3

    .line 93
    .end local v11    # "userId":I
    .end local v12    # "userData":Lcom/android/server/devicepolicy/DevicePolicyData;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_0

    .line 106
    :cond_5
    const/4 v8, 0x2

    .line 109
    :cond_6
    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writePoliciesAndVersion([ILandroid/util/SparseArray;I)V

    .line 110
    return-void
.end method
