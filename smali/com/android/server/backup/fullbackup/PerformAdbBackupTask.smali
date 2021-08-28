.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private final mAllApps:Z

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mCompress:Z

.field private final mCurrentOpToken:I

.field private final mCurrentPassword:Ljava/lang/String;

.field private mCurrentTarget:Landroid/content/pm/PackageInfo;

.field private final mDoWidgets:Z

.field private final mEncryptPassword:Ljava/lang/String;

.field private final mIncludeApks:Z

.field private final mIncludeObbs:Z

.field private final mIncludeShared:Z

.field private final mIncludeSystem:Z

.field private final mKeyValue:Z

.field private final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field private final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 16
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "doKeyValue"    # Z
    .param p14, "packages"    # [Ljava/lang/String;
    .param p15, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p16, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 95
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 97
    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 100
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 101
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 102
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 103
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 104
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 105
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 106
    if-nez p14, :cond_0

    .line 107
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 109
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 114
    if-eqz v2, :cond_2

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2

    .line 115
    :cond_2
    :goto_1
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 122
    :goto_2
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 123
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 124
    move-object/from16 v15, p16

    iput-object v15, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 125
    return-void
.end method

.method private addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 134
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 17
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 146
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 147
    .local v2, "newUserSalt":[B
    iget-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 148
    const-string v5, "PBKDF2WithHmacSHA1"

    const/16 v6, 0x2710

    invoke-static {v5, v4, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 153
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 154
    .local v7, "encryptionKey":[B
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 155
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 156
    invoke-virtual {v8, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 159
    .local v3, "checksumSalt":[B
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 160
    .local v9, "c":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v7, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 161
    .local v10, "encryptionKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 162
    new-instance v12, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13, v9}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 165
    .local v12, "finalOutput":Ljava/io/OutputStream;
    const-string v14, "AES-256"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 179
    .local v8, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v8, v11, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 181
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 182
    .local v11, "IV":[B
    invoke-static {v11}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 196
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    .line 197
    .local v15, "mk":[B
    nop

    .line 199
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 198
    invoke-static {v5, v14, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v5

    .line 202
    .local v5, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v14, v11

    array-length v0, v15

    add-int/2addr v14, v0

    array-length v0, v5

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x3

    invoke-direct {v6, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v6

    .line 204
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 205
    .local v6, "mkOut":Ljava/io/DataOutputStream;
    array-length v14, v11

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 206
    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 207
    array-length v14, v15

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 208
    invoke-virtual {v6, v15}, Ljava/io/DataOutputStream;->write([B)V

    .line 209
    array-length v14, v5

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 210
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 211
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 212
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 213
    .local v14, "encryptedMk":[B
    move-object/from16 v16, v0

    .end local v0    # "blob":Ljava/io/ByteArrayOutputStream;
    .local v16, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-static {v14}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    return-object v12
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 222
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 223
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "eof":[B
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 492
    return-void
.end method

.method public handleCancel(Z)V
    .locals 3
    .param p1, "cancelAll"    # Z

    .line 501
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 503
    .local v0, "target":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 509
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 497
    return-void
.end method

.method public run()V
    .locals 35

    .line 231
    move-object/from16 v13, p0

    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_0

    const-string v0, ", including key-value backups"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v14, v0

    .line 232
    .local v14, "includeKeyValue":Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v15, v0

    .line 235
    .local v15, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    move-object v12, v0

    .line 237
    .local v12, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 240
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 243
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    .line 244
    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 249
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v10

    if-nez v3, :cond_2

    .line 251
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "i":I
    :cond_3
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 260
    nop

    .line 261
    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 273
    invoke-direct {v13, v15, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 280
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 281
    invoke-direct {v13, v15, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 288
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 289
    .local v8, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v15}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 290
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 291
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 292
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 293
    invoke-virtual {v2, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 299
    :cond_6
    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 300
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 302
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is key-value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 294
    :cond_7
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 296
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not eligible for backup, removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_8
    :goto_4
    goto :goto_2

    .line 310
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v15}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 312
    .local v9, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v7, v0

    .line 313
    .local v7, "ofstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 315
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 317
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_25
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    if-eqz v0, :cond_a

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_a

    move v0, v10

    goto :goto_5

    .line 466
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_1f

    .line 463
    :catch_0
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_19

    .line 461
    :catch_1
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_1b

    .line 317
    :cond_a
    move v0, v1

    :goto_5
    move/from16 v17, v0

    .line 320
    .local v17, "encrypting":Z
    :try_start_2
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->deviceIsEncrypted()Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_25
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    if-eqz v0, :cond_c

    if-nez v17, :cond_c

    .line 321
    :try_start_3
    const-string v0, "BackupManagerService"

    const-string v1, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    if-eqz v2, :cond_b

    .line 468
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_b
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 474
    goto :goto_6

    .line 472
    :catch_2
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 476
    :try_start_5
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 480
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 482
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 322
    return-void

    .line 478
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 325
    :cond_c
    move-object v4, v7

    .line 329
    .local v4, "finalOutput":Ljava/io/OutputStream;
    :try_start_7
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_25
    .catchall {:try_start_7 .. :try_end_7} :catchall_12

    if-nez v0, :cond_e

    .line 331
    :try_start_8
    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 467
    if-eqz v2, :cond_d

    .line 468
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_d
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 474
    goto :goto_7

    .line 472
    :catch_3
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 476
    :try_start_a
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 480
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 482
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 333
    return-void

    .line 478
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 361
    :cond_e
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    .line 363
    .local v6, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_25
    .catchall {:try_start_c .. :try_end_c} :catchall_12

    if-eqz v0, :cond_f

    :try_start_d
    const-string v0, "\n1\n"
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    :cond_f
    :try_start_e
    const-string v0, "\n0\n"

    :goto_8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_25
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    .line 369
    if-eqz v17, :cond_10

    .line 370
    :try_start_f
    invoke-direct {v13, v6, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v4, v0

    goto :goto_9

    .line 385
    :catch_4
    move-exception v0

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_17

    .line 372
    :cond_10
    :try_start_10
    const-string/jumbo v0, "none\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 376
    .local v0, "header":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 379
    iget-boolean v5, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_27
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    if-eqz v5, :cond_11

    .line 380
    :try_start_11
    new-instance v5, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, v5

    .line 381
    .local v1, "deflater":Ljava/util/zip/Deflater;
    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v5, v4, v1, v10}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object v4, v5

    move-object/from16 v19, v4

    goto :goto_a

    .line 379
    .end local v1    # "deflater":Ljava/util/zip/Deflater;
    :cond_11
    move-object/from16 v19, v4

    .line 384
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "finalOutput":Ljava/io/OutputStream;
    :goto_a
    move-object/from16 v5, v19

    .line 389
    .end local v0    # "header":[B
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    nop

    .line 392
    :try_start_12
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1f
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    if-eqz v0, :cond_12

    .line 394
    :try_start_13
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v3, v0

    .line 396
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 399
    goto :goto_b

    .line 466
    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_1f

    .line 463
    :catch_5
    move-exception v0

    move-object v2, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_19

    .line 461
    :catch_6
    move-exception v0

    move-object v2, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_1b

    .line 397
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    .line 398
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_14
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to find shared-storage backup handler"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 403
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_12
    :goto_b
    :try_start_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1f
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    .line 404
    .local v0, "N":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_16

    .line 405
    :try_start_16
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_18
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    move-object v3, v1

    .line 407
    :try_start_17
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :try_start_18
    const-string v10, "--- Performing full backup for package "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ---"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v20, v1

    .line 414
    .local v20, "isSharedStorage":Z
    new-instance v21, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v10, 0x0

    iget-boolean v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v24, v8

    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v24, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_19
    iget v8, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    const/16 v25, 0x0

    move-object/from16 v26, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v26, "pm":Landroid/content/pm/PackageManager;
    :try_start_1a
    iget-object v11, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    move/from16 v27, v1

    move-object/from16 v1, v21

    move-object/from16 v28, v3

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .local v28, "pkg":Landroid/content/pm/PackageInfo;
    move-object v3, v5

    move/from16 v29, v4

    .end local v4    # "i":I
    .local v29, "i":I
    move-object v4, v10

    move-object v10, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    move-object/from16 v5, v28

    move-object/from16 v30, v6

    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .local v30, "headerbuf":Ljava/lang/StringBuilder;
    move/from16 v6, v27

    move-object/from16 v27, v7

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .local v27, "ofstream":Ljava/io/FileOutputStream;
    move-object/from16 v7, p0

    move-object/from16 v32, v9

    move-object/from16 v31, v24

    move/from16 v24, v8

    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v31, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v32, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-wide/from16 v8, v22

    move-object/from16 v33, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .local v33, "out":Ljava/io/OutputStream;
    move/from16 v10, v24

    move-object/from16 v22, v11

    move-object/from16 v18, v26

    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move/from16 v11, v25

    move-object/from16 v34, v14

    move-object v14, v12

    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v34, "includeKeyValue":Ljava/lang/String;
    move-object/from16 v12, v22

    :try_start_1b
    invoke-direct/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    move-object/from16 v1, v21

    .line 426
    .local v1, "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    if-eqz v20, :cond_13

    :try_start_1c
    const-string v2, "Shared storage"
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object v3, v2

    move-object/from16 v2, v28

    goto :goto_d

    .line 466
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v29    # "i":I
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v28

    move-object/from16 v2, v33

    const/4 v5, 0x1

    goto/16 :goto_1f

    .line 463
    :catch_8
    move-exception v0

    move-object/from16 v3, v28

    move-object/from16 v2, v33

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 461
    :catch_9
    move-exception v0

    move-object/from16 v3, v28

    move-object/from16 v2, v33

    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 426
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v29    # "i":I
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_13
    move-object/from16 v2, v28

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_1d
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_d
    invoke-virtual {v13, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 429
    iput-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 430
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 434
    iget-boolean v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v3, :cond_15

    if-nez v20, :cond_15

    .line 435
    move-object/from16 v4, v33

    .end local v33    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1e
    invoke-virtual {v14, v2, v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v3

    .line 436
    .local v3, "obbOkay":Z
    if-eqz v3, :cond_14

    goto :goto_e

    .line 437
    :cond_14
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure writing OBB stack for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v14    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v15    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    throw v5
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 466
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v3    # "obbOkay":Z
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v29    # "i":I
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v14    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v15    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_1f

    .line 463
    :catch_a
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 461
    :catch_b
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 434
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v29    # "i":I
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :cond_15
    move-object/from16 v4, v33

    .line 404
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v20    # "isSharedStorage":Z
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_e
    add-int/lit8 v1, v29, 0x1

    move-object v3, v2

    move-object v5, v4

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v7, v27

    move-object/from16 v6, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v14, v34

    const/4 v10, 0x1

    move v4, v1

    .end local v29    # "i":I
    .local v1, "i":I
    goto/16 :goto_c

    .line 466
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catchall_6
    move-exception v0

    move-object/from16 v4, v33

    move-object v1, v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1f

    .line 463
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_c
    move-exception v0

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_19

    .line 461
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_d
    move-exception v0

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1b

    .line 466
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catchall_7
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v4, v33

    move-object v1, v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1f

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_e
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_19

    .line 461
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_f
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1b

    .line 466
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catchall_8
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object/from16 v18, v26

    move-object v14, v12

    move-object v1, v0

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_1f

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_10
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object/from16 v18, v26

    move-object v14, v12

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_19

    .line 461
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_11
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object/from16 v18, v26

    move-object v14, v12

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_1b

    .line 466
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_9
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object v14, v12

    move-object v1, v0

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_1f

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_12
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object v14, v12

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_19

    .line 461
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_13
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object v14, v12

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_1b

    .line 466
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    move-object v2, v4

    const/4 v5, 0x1

    goto :goto_f

    .line 463
    :catch_14
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    const/4 v5, 0x1

    goto :goto_10

    .line 461
    :catch_15
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    const/4 v5, 0x1

    goto :goto_11

    .line 466
    :catchall_b
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    move-object v2, v4

    move v5, v10

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_f
    goto/16 :goto_1f

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    move v5, v10

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_10
    goto/16 :goto_19

    .line 461
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    move v5, v10

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_11
    goto/16 :goto_1b

    .line 466
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    move-object v2, v4

    move v5, v10

    goto/16 :goto_14

    .line 463
    :catch_18
    move-exception v0

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    move v5, v10

    goto/16 :goto_15

    .line 461
    :catch_19
    move-exception v0

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    move v5, v10

    goto/16 :goto_16

    .line 404
    .restart local v0    # "N":I
    .local v4, "i":I
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :cond_16
    move/from16 v29, v4

    move-object v4, v5

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .line 442
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v4, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :try_start_1f
    iget-boolean v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    if-eqz v1, :cond_17

    .line 443
    :try_start_20
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 445
    .local v2, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Performing key-value backup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v5, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v6, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 451
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    iget-object v7, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 452
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v25

    iget-object v7, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 453
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v26

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    invoke-direct/range {v20 .. v26}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 454
    .local v5, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v5}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1a
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 456
    .end local v2    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_12

    .line 466
    .end local v0    # "N":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_d
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_1f

    .line 463
    :catch_1a
    move-exception v0

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 461
    :catch_1b
    move-exception v0

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 460
    .restart local v0    # "N":I
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_17
    :try_start_21
    invoke-direct {v13, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1d
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    .line 467
    .end local v0    # "N":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_18

    .line 468
    :try_start_22
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_18
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1c

    .line 474
    goto :goto_13

    .line 472
    :catch_1c
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 476
    :try_start_23
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 480
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 482
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 485
    move-object v5, v4

    goto/16 :goto_1e

    .line 478
    :catchall_e
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    throw v0

    .line 466
    :catchall_f
    move-exception v0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v4

    goto/16 :goto_1f

    .line 463
    :catch_1d
    move-exception v0

    const/4 v5, 0x1

    move-object v2, v4

    goto/16 :goto_19

    .line 461
    :catch_1e
    move-exception v0

    const/4 v5, 0x1

    move-object v2, v4

    goto/16 :goto_1b

    .line 466
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    move-object v2, v4

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_14
    goto/16 :goto_1f

    .line 463
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_15
    goto/16 :goto_19

    .line 461
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_20
    move-exception v0

    move-object v4, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v2, v4

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_16
    goto/16 :goto_1b

    .line 385
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v2, "out":Ljava/io/OutputStream;
    .local v4, "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v17    # "encrypting":Z
    :catch_21
    move-exception v0

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_17
    move-object v1, v0

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v0, "BackupManagerService"

    const-string v6, "Unable to emit archive header"

    invoke-static {v0, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_24
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_23
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    .line 467
    if-eqz v2, :cond_19

    .line 468
    :try_start_26
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_19
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_22

    .line 474
    goto :goto_18

    .line 472
    :catch_22
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_18
    iget-object v6, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    .line 476
    :try_start_27
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 480
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 482
    const-string v0, "BackupManagerService"

    const-string v5, "Full backup pass complete."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 388
    return-void

    .line 478
    :catchall_11
    move-exception v0

    :try_start_28
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    throw v0

    .line 463
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v17    # "encrypting":Z
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_23
    move-exception v0

    goto :goto_19

    .line 461
    :catch_24
    move-exception v0

    goto/16 :goto_1b

    .line 466
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_1f

    .line 463
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_25
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .line 464
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v0, "e":Ljava/lang/Exception;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_19
    :try_start_29
    const-string v1, "BackupManagerService"

    const-string v4, "Internal exception during full backup"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1a

    .line 468
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_1a
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_26

    .line 474
    goto :goto_1a

    .line 472
    :catch_26
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 476
    :try_start_2b
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v1

    goto :goto_1d

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    throw v0

    .line 461
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_27
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .line 462
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v0, "e":Landroid/os/RemoteException;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_1b
    :try_start_2c
    const-string v1, "BackupManagerService"

    const-string v4, "App died during full backup"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_1b

    .line 468
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_1b
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_28

    .line 474
    goto :goto_1c

    .line 472
    :catch_28
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 476
    :try_start_2e
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    .line 479
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 480
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 482
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 485
    move-object v5, v2

    .line 486
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :goto_1e
    return-void

    .line 478
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_14
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    throw v0

    .line 466
    :catchall_15
    move-exception v0

    move-object v1, v0

    .line 467
    :goto_1f
    if-eqz v2, :cond_1c

    .line 468
    :try_start_30
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 471
    :cond_1c
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_29

    .line 474
    goto :goto_20

    .line 472
    :catch_29
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    :goto_20
    iget-object v4, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 476
    :try_start_31
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 480
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 482
    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 485
    throw v1

    .line 478
    :catchall_16
    move-exception v0

    :try_start_32
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    throw v0
.end method
