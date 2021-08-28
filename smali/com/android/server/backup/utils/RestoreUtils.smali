.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .locals 21
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    .line 78
    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    move/from16 v2, p8

    const/4 v3, 0x1

    .line 81
    .local v3, "okay":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing from backup: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v5, v0

    .line 86
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    .line 87
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v7, v0

    .line 89
    .local v7, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15

    move-object v8, v0

    .line 90
    .local v8, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v9, p6

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14

    move v10, v0

    .line 93
    .local v10, "sessionId":I
    :try_start_2
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14

    move-object/from16 v17, v0

    .line 94
    .local v17, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_3
    iget-object v12, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-wide v13, v1, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v11, v17

    move-wide v15, v13

    const-wide/16 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object v11, v0

    .line 96
    .local v11, "apkStream":Ljava/io/OutputStream;
    const v0, 0x8000

    :try_start_4
    new-array v12, v0, [B

    .line 97
    .local v12, "buffer":[B
    iget-wide v13, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 98
    .local v13, "size":J
    :goto_0
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    move/from16 v16, v3

    .end local v3    # "okay":Z
    .local v16, "okay":Z
    const/4 v3, 0x0

    if-lez v15, :cond_2

    .line 99
    :try_start_5
    array-length v15, v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    int-to-long v0, v15

    cmp-long v0, v0, v13

    if-gez v0, :cond_0

    :try_start_6
    array-length v0, v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-long v0, v0

    goto :goto_1

    .line 94
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 99
    .restart local v12    # "buffer":[B
    .restart local v13    # "size":J
    :cond_0
    move-wide v0, v13

    .line 100
    .local v0, "toRead":J
    :goto_1
    long-to-int v15, v0

    move-wide/from16 v19, v0

    move-object/from16 v1, p0

    .end local v0    # "toRead":J
    .local v19, "toRead":J
    :try_start_7
    invoke-virtual {v1, v12, v3, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 101
    .local v0, "didRead":I
    if-ltz v0, :cond_1

    .line 102
    move-object v15, v4

    int-to-long v3, v0

    move-object/from16 v1, p7

    :try_start_8
    invoke-interface {v1, v3, v4}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_2

    .line 101
    :cond_1
    move-object/from16 v1, p7

    move-object v15, v4

    .line 104
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v11, v12, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 105
    int-to-long v3, v0

    sub-long/2addr v13, v3

    .line 106
    .end local v0    # "didRead":I
    .end local v19    # "toRead":J
    move-object/from16 v1, p5

    move-object v4, v15

    move/from16 v3, v16

    const v0, 0x8000

    goto :goto_0

    .line 94
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    :catchall_1
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object v3, v0

    move-object v1, v15

    move-object/from16 v15, p3

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v1, p7

    :goto_3
    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object v3, v0

    move-object v1, v4

    goto/16 :goto_10

    .line 98
    .restart local v12    # "buffer":[B
    .restart local v13    # "size":J
    :cond_2
    move-object/from16 v1, p7

    move-object v15, v4

    .line 107
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    if-eqz v11, :cond_3

    :try_start_9
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 93
    .end local v11    # "apkStream":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object v3, v0

    move-object v1, v15

    move-object/from16 v15, p3

    goto/16 :goto_13

    .line 110
    :cond_3
    :goto_4
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 112
    if-eqz v17, :cond_4

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    .line 197
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_0
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    :goto_5
    move-object v1, v15

    move/from16 v3, v16

    move-object/from16 v15, p3

    goto/16 :goto_18

    .line 113
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    :catch_1
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object v1, v15

    move-object/from16 v15, p3

    goto/16 :goto_15

    .line 117
    :cond_4
    :goto_6
    nop

    .line 120
    const/4 v3, 0x0

    .line 124
    .local v3, "result":Landroid/content/Intent;
    const/4 v4, 0x1

    .line 128
    .local v4, "status":I
    if-eqz v4, :cond_6

    .line 132
    move-object/from16 v12, p5

    :try_start_c
    iget-object v0, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-object/from16 v13, p4

    :try_start_d
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v11, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    if-eq v0, v11, :cond_5

    .line 133
    const/4 v0, 0x0

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move v3, v0

    .end local v16    # "okay":Z
    .local v0, "okay":Z
    goto/16 :goto_e

    .line 132
    .end local v0    # "okay":Z
    .restart local v16    # "okay":Z
    :cond_5
    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move/from16 v3, v16

    goto/16 :goto_e

    .line 197
    .end local v3    # "result":Landroid/content/Intent;
    .end local v4    # "status":I
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v13, p4

    :goto_7
    move-object/from16 v2, p2

    goto :goto_5

    .line 137
    .restart local v3    # "result":Landroid/content/Intent;
    .restart local v4    # "status":I
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    :cond_6
    move-object/from16 v13, p4

    move-object/from16 v12, p5

    const/4 v11, 0x0

    .line 138
    .local v11, "uninstall":Z
    :try_start_e
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 140
    .local v14, "installedPackageName":Ljava/lang/String;
    iget-object v0, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    if-nez v0, :cond_7

    .line 141
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but apk was really "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    move-object v1, v15

    :try_start_10
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 145
    const/4 v0, 0x0

    .line 146
    .end local v16    # "okay":Z
    .restart local v0    # "okay":Z
    const/4 v11, 0x1

    move-object/from16 v15, p3

    move-object/from16 v17, v3

    move/from16 v18, v4

    move v3, v0

    goto/16 :goto_d

    .line 197
    .end local v0    # "okay":Z
    .end local v3    # "result":Landroid/content/Intent;
    .end local v4    # "status":I
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .restart local v16    # "okay":Z
    :catch_4
    move-exception v0

    move-object v1, v15

    :goto_8
    move-object/from16 v2, p2

    goto/16 :goto_f

    .line 149
    .restart local v3    # "result":Landroid/content/Intent;
    .restart local v4    # "status":I
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v14    # "installedPackageName":Ljava/lang/String;
    :cond_7
    move-object v1, v15

    :try_start_11
    iget-object v0, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v15, 0x8000000

    invoke-virtual {v6, v0, v15, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 151
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    const v17, 0x8000

    and-int v15, v15, v17

    if-nez v15, :cond_8

    .line 153
    :try_start_12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v17, v3

    .end local v3    # "result":Landroid/content/Intent;
    .local v17, "result":Landroid/content/Intent;
    :try_start_13
    const-string v3, "Restore stream contains apk of package "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but it disallows backup/restore"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 156
    const/4 v3, 0x0

    move-object/from16 v15, p3

    move/from16 v18, v4

    .end local v16    # "okay":Z
    .local v3, "okay":Z
    goto/16 :goto_9

    .line 180
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :catch_5
    move-exception v0

    move-object/from16 v15, p3

    move/from16 v18, v4

    goto/16 :goto_c

    .line 197
    .end local v4    # "status":I
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "result":Landroid/content/Intent;
    :catch_6
    move-exception v0

    goto :goto_8

    .line 180
    .local v3, "result":Landroid/content/Intent;
    .restart local v4    # "status":I
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v14    # "installedPackageName":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v15, p3

    move/from16 v18, v4

    .end local v3    # "result":Landroid/content/Intent;
    .restart local v17    # "result":Landroid/content/Intent;
    goto/16 :goto_c

    .line 159
    .end local v17    # "result":Landroid/content/Intent;
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "result":Landroid/content/Intent;
    :cond_8
    move-object/from16 v17, v3

    .end local v3    # "result":Landroid/content/Intent;
    .restart local v17    # "result":Landroid/content/Intent;
    :try_start_14
    iget-object v3, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    move-object/from16 v15, p3

    :try_start_15
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/Signature;

    .line 160
    .local v3, "sigs":[Landroid/content/pm/Signature;
    const-class v18, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v18 .. v18}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageManagerInternal;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    move-object/from16 v19, v18

    .line 162
    .local v19, "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 163
    move/from16 v18, v4

    move-object/from16 v4, v19

    .end local v19    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v18, "status":I
    :try_start_16
    invoke-static {v6, v4, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v19

    move-object/from16 v20, v19

    .line 164
    .local v20, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    move-object/from16 v2, v20

    .end local v20    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .local v2, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    invoke-virtual {v2, v3, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v19
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    move-object/from16 v20, v2

    .end local v2    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .restart local v20    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    const-string v2, "Installed app "

    if-eqz v19, :cond_a

    .line 167
    move-object/from16 v19, v3

    .end local v3    # "sigs":[Landroid/content/pm/Signature;
    .local v19, "sigs":[Landroid/content/pm/Signature;
    :try_start_17
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has restricted uid and no agent"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    .end local v16    # "okay":Z
    .local v3, "okay":Z
    goto :goto_9

    .line 184
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "okay":Z
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .end local v20    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .restart local v16    # "okay":Z
    :cond_9
    move/from16 v3, v16

    goto :goto_9

    .line 174
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "sigs":[Landroid/content/pm/Signature;
    .restart local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    :cond_a
    move-object/from16 v19, v3

    .end local v3    # "sigs":[Landroid/content/pm/Signature;
    .restart local v19    # "sigs":[Landroid/content/pm/Signature;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signatures do not match restore manifest"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 176
    const/4 v3, 0x0

    .line 177
    .end local v16    # "okay":Z
    .local v3, "okay":Z
    const/4 v2, 0x1

    move v11, v2

    .line 184
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .end local v20    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    :goto_9
    goto :goto_d

    .line 180
    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :catch_8
    move-exception v0

    goto :goto_c

    .end local v18    # "status":I
    .local v4, "status":I
    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v15, p3

    :goto_a
    move/from16 v18, v4

    .end local v4    # "status":I
    .restart local v18    # "status":I
    goto :goto_c

    .line 197
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "result":Landroid/content/Intent;
    .end local v18    # "status":I
    :catch_b
    move-exception v0

    move-object/from16 v15, p3

    :goto_b
    move-object/from16 v2, p2

    goto/16 :goto_16

    .line 180
    .local v3, "result":Landroid/content/Intent;
    .restart local v4    # "status":I
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v14    # "installedPackageName":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 181
    .end local v3    # "result":Landroid/content/Intent;
    .end local v4    # "status":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v17    # "result":Landroid/content/Intent;
    .restart local v18    # "status":I
    :goto_c
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install of package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded but now not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 183
    const/4 v2, 0x0

    move v3, v2

    .line 189
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "okay":Z
    .local v3, "okay":Z
    :goto_d
    if-eqz v11, :cond_b

    .line 190
    :try_start_19
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 191
    move-object/from16 v2, p2

    const/4 v4, 0x0

    :try_start_1a
    invoke-virtual {v6, v14, v2, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d

    goto :goto_e

    .line 197
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "result":Landroid/content/Intent;
    .end local v18    # "status":I
    :catch_d
    move-exception v0

    goto/16 :goto_18

    :catch_e
    move-exception v0

    move-object/from16 v2, p2

    goto/16 :goto_18

    .line 189
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v14    # "installedPackageName":Ljava/lang/String;
    .restart local v17    # "result":Landroid/content/Intent;
    .restart local v18    # "status":I
    :cond_b
    move-object/from16 v2, p2

    .line 200
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "result":Landroid/content/Intent;
    .end local v18    # "status":I
    :goto_e
    goto/16 :goto_19

    .line 197
    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :catch_f
    move-exception v0

    goto :goto_b

    :catch_10
    move-exception v0

    move-object/from16 v2, p2

    move-object v1, v15

    :goto_f
    move-object/from16 v15, p3

    goto/16 :goto_16

    .line 93
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .local v17, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_4
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object v1, v15

    move-object/from16 v15, p3

    goto :goto_12

    .line 94
    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    .local v11, "apkStream":Ljava/io/OutputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object v12, v1

    move/from16 v16, v3

    move-object v1, v4

    move-object v3, v0

    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :goto_10
    if-eqz v11, :cond_c

    :try_start_1b
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object v4, v0

    :try_start_1c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v16    # "okay":Z
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_c
    :goto_11
    throw v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 93
    .end local v11    # "apkStream":Ljava/io/OutputStream;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .restart local v16    # "okay":Z
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catchall_7
    move-exception v0

    :goto_12
    move-object v3, v0

    goto :goto_13

    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    :catchall_8
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object v12, v1

    move/from16 v16, v3

    move-object v1, v4

    move-object v3, v0

    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :goto_13
    if-eqz v17, :cond_d

    :try_start_1d
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    goto :goto_14

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_1e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .end local v16    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_d
    :goto_14
    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 113
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10    # "sessionId":I
    .restart local v16    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_11
    move-exception v0

    goto :goto_15

    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_12
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object v12, v1

    move/from16 v16, v3

    move-object v1, v4

    .line 114
    .end local v3    # "okay":Z
    .local v0, "t":Ljava/lang/Exception;
    .restart local v16    # "okay":Z
    :goto_15
    :try_start_1f
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 116
    nop

    .end local v16    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    throw v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_13

    .line 197
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "sessionId":I
    .restart local v16    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_13
    move-exception v0

    :goto_16
    move/from16 v3, v16

    goto :goto_18

    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_14
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    goto :goto_17

    :catch_15
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v9, p6

    :goto_17
    move-object v12, v1

    move/from16 v16, v3

    move-object v1, v4

    .line 198
    .local v0, "e":Ljava/io/IOException;
    :goto_18
    const-string v4, "Unable to transcribe restored apk for install"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v3, 0x0

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    :goto_19
    return v3
.end method
