.class final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iom"    # Landroid/content/om/IOverlayManager;

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 58
    return-void
.end method

.method private printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "oi"    # Landroid/content/om/OverlayInfo;

    .line 195
    iget v0, p2, Landroid/content/om/OverlayInfo;->state:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :pswitch_0
    const-string v0, "---"

    .local v0, "status":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_1
    const-string v0, "[x]"

    .line 199
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0    # "status":Ljava/lang/String;
    :pswitch_2
    const-string v0, "[ ]"

    .line 202
    .restart local v0    # "status":Ljava/lang/String;
    nop

    .line 207
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runEnableDisable(Z)I
    .locals 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 213
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 215
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 216
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :goto_1
    move v4, v2

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x1

    return v2

    .line 218
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 219
    nop

    .line 222
    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object v2

    .line 227
    .local v2, "overlay":Landroid/content/om/OverlayIdentifier;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    new-instance v6, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v6}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 228
    invoke-virtual {v6, v2, p1, v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v6

    .line 229
    invoke-virtual {v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v6

    .line 227
    invoke-interface {v5, v6}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 230
    return v4

    :pswitch_data_0
    .packed-switch 0x4f7b216b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runEnableExclusive()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 313
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 314
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 316
    .local v2, "inCategory":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 317
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "--category"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return v5

    .line 322
    :pswitch_0
    const/4 v2, 0x1

    .line 323
    goto :goto_2

    .line 319
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 320
    nop

    .line 326
    :goto_2
    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "overlay":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 331
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 333
    :cond_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v5, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    :sswitch_data_0
    .sparse-switch
        0x3f3229e -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runFabricate()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 235
    .local v1, "err":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "Error: must be root to fabricate overlays through the shell"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    return v3

    .line 240
    :cond_0
    const/4 v2, 0x0

    .line 241
    .local v2, "userId":I
    const-string v4, ""

    .line 242
    .local v4, "targetPackage":Ljava/lang/String;
    const-string v5, ""

    .line 243
    .local v5, "targetOverlayable":Ljava/lang/String;
    const-string v6, ""

    .line 245
    .local v6, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "opt":Ljava/lang/String;
    const/4 v10, 0x2

    if-eqz v7, :cond_2

    .line 246
    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v9, "--target"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v3

    goto :goto_2

    :sswitch_1
    const-string v10, "--user"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :sswitch_2
    const-string v9, "--name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_3
    const-string v9, "--target-name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_2

    :goto_1
    move v9, v7

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Unknown option: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    return v3

    .line 257
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 258
    goto :goto_3

    .line 254
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 255
    goto :goto_3

    .line 251
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 252
    goto :goto_3

    .line 248
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 249
    nop

    .line 261
    :goto_3
    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 266
    const-string v7, "Error: Missing required arg \'--name\'"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    return v3

    .line 270
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 271
    const-string v7, "Error: Missing required arg \'--target\'"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    return v3

    .line 275
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "resourceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, "typeStr":Ljava/lang/String;
    const-string v12, "0x"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/16 v14, 0x10

    if-eqz v13, :cond_5

    .line 279
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, "type":I
    goto :goto_4

    .line 281
    .end local v13    # "type":I
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v13

    .line 283
    .restart local v13    # "type":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 285
    .local v15, "dataStr":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 286
    invoke-virtual {v15, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v14}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v10

    .local v10, "data":I
    goto :goto_5

    .line 288
    .end local v10    # "data":I
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v10

    .line 291
    .restart local v10    # "data":I
    :goto_5
    iget-object v12, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 292
    .local v12, "pm":Landroid/content/pm/PackageManager;
    if-nez v12, :cond_7

    .line 293
    const-string v9, "Error: failed to get package manager"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    return v3

    .line 297
    :cond_7
    const-string v3, "com.android.shell"

    .line 298
    .local v3, "overlayPackageName":Ljava/lang/String;
    new-instance v14, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v9, "com.android.shell"

    invoke-direct {v14, v9, v6, v4}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v14, v5}, Landroid/content/om/FabricatedOverlay$Builder;->setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object v9

    .line 301
    invoke-virtual {v9, v7, v13, v10}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object v9

    .line 302
    invoke-virtual {v9}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v9

    .line 304
    .local v9, "overlay":Landroid/content/om/FabricatedOverlay;
    iget-object v14, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    new-instance v0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 305
    invoke-virtual {v0, v9}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v0

    .line 304
    invoke-interface {v14, v0}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 307
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x37c14c59 -> :sswitch_3
        0x4f77b02b -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x5a8bbf31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runList()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 137
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 139
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 141
    .local v2, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 142
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :goto_1
    move v5, v3

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const/4 v3, 0x1

    return v3

    .line 144
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 145
    nop

    .line 148
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 154
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 158
    .local v6, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v7

    .line 160
    .local v7, "info":Landroid/content/om/OverlayInfo;
    if-eqz v7, :cond_2

    .line 161
    invoke-direct {p0, v0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 163
    :cond_2
    return v5

    .line 166
    .end local v7    # "info":Landroid/content/om/OverlayInfo;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 170
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_4

    .line 171
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v9}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 174
    .end local v8    # "i":I
    :cond_4
    return v5

    .line 178
    .end local v6    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v7    # "n":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v6

    .line 179
    .local v6, "allOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 180
    .local v8, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 183
    .local v9, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 184
    .local v10, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v10, :cond_6

    .line 185
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 184
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 187
    .end local v11    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 188
    .end local v8    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "n":I
    goto :goto_4

    .line 190
    :cond_7
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x4f7b216b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runLookup()I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 367
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 369
    .local v2, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 370
    .local v0, "userId":I
    const/4 v3, 0x0

    move v4, v3

    move v3, v0

    .line 372
    .end local v0    # "userId":I
    .local v3, "userId":I
    .local v4, "verbose":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    .line 373
    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "--verbose"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_2

    :sswitch_1
    const-string v8, "--user"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :goto_1
    move v6, v0

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    return v7

    .line 378
    :pswitch_0
    const/4 v0, 0x1

    .line 379
    .end local v4    # "verbose":Z
    .local v0, "verbose":Z
    move v4, v0

    goto :goto_3

    .line 375
    .end local v0    # "verbose":Z
    .restart local v4    # "verbose":Z
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 376
    .end local v3    # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 382
    .end local v0    # "userId":I
    .restart local v3    # "userId":I
    :goto_3
    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, "packageToLoad":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 389
    .local v9, "fullyQualifiedResourceName":Ljava/lang/String;
    const-string v0, "(.*?):(.*?)/(.*?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 390
    .local v10, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 391
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    const-string v0, "Error: bad resource name, doesn\'t match package:type/name"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    return v7

    .line 398
    :cond_2
    move-object/from16 v13, p0

    :try_start_0
    iget-object v0, v13, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v0, v14, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 401
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v14, v0

    .line 406
    .local v14, "res":Landroid/content/res/Resources;
    nop

    .line 407
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    .line 409
    .local v15, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v15, v7}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 413
    :try_start_2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 414
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {v14, v9, v0, v6}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 415
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v17, v16

    .line 416
    .local v17, "valueString":Ljava/lang/CharSequence;
    invoke-virtual {v15}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 418
    .local v18, "resolution":Ljava/lang/String;
    invoke-virtual {v14, v9, v0, v7}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 419
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v16
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v16

    .line 421
    .local v19, "resolvedString":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3

    .line 422
    move-object/from16 v12, v18

    .end local v18    # "resolution":Ljava/lang/String;
    .local v12, "resolution":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 462
    .end local v0    # "value":Landroid/util/TypedValue;
    .end local v12    # "resolution":Ljava/lang/String;
    .end local v17    # "valueString":Ljava/lang/CharSequence;
    .end local v19    # "resolvedString":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    move/from16 v21, v4

    move-object/from16 v20, v5

    goto/16 :goto_a

    .line 431
    :catch_0
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_6

    .line 421
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local v17    # "valueString":Ljava/lang/CharSequence;
    .restart local v18    # "resolution":Ljava/lang/String;
    .restart local v19    # "resolvedString":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v12, v18

    .line 425
    .end local v18    # "resolution":Ljava/lang/String;
    .restart local v12    # "resolution":Ljava/lang/String;
    :goto_4
    move-object/from16 v7, v17

    move-object/from16 v6, v19

    .end local v17    # "valueString":Ljava/lang/CharSequence;
    .end local v19    # "resolvedString":Ljava/lang/CharSequence;
    .local v6, "resolvedString":Ljava/lang/CharSequence;
    .local v7, "valueString":Ljava/lang/CharSequence;
    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v19, :cond_4

    .line 426
    :try_start_5
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    goto :goto_5

    .line 428
    :cond_4
    move-object/from16 v19, v0

    .end local v0    # "value":Landroid/util/TypedValue;
    .local v19, "value":Landroid/util/TypedValue;
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v20, v5

    .end local v5    # "opt":Ljava/lang/String;
    .local v20, "opt":Ljava/lang/String;
    :try_start_7
    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 430
    :goto_5
    nop

    .line 462
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 430
    return v5

    .line 431
    .end local v6    # "resolvedString":Ljava/lang/CharSequence;
    .end local v7    # "valueString":Ljava/lang/CharSequence;
    .end local v12    # "resolution":Ljava/lang/String;
    .end local v19    # "value":Landroid/util/TypedValue;
    :catch_1
    move-exception v0

    goto :goto_6

    .line 462
    .end local v20    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v21, v4

    .end local v5    # "opt":Ljava/lang/String;
    .restart local v20    # "opt":Ljava/lang/String;
    goto/16 :goto_a

    .line 431
    .end local v20    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    .line 438
    .end local v5    # "opt":Ljava/lang/String;
    .restart local v20    # "opt":Ljava/lang/String;
    :goto_6
    const/4 v5, 0x1

    :try_start_8
    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "pkg":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v14, v6, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 442
    .local v7, "resid":I
    if-eqz v7, :cond_7

    .line 445
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 446
    .local v12, "array":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_5

    .line 447
    move-object/from16 v16, v0

    .end local v0    # "pkg":Ljava/lang/String;
    .local v16, "pkg":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v15}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    .line 462
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "resid":I
    .end local v12    # "array":Landroid/content/res/TypedArray;
    .end local v16    # "pkg":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_a

    .line 456
    :catch_3
    move-exception v0

    move/from16 v21, v4

    goto :goto_9

    .line 446
    .restart local v0    # "pkg":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "resid":I
    .restart local v12    # "array":Landroid/content/res/TypedArray;
    :cond_5
    move-object/from16 v16, v0

    .line 449
    .end local v0    # "pkg":Ljava/lang/String;
    .restart local v16    # "pkg":Ljava/lang/String;
    :goto_7
    :try_start_a
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 450
    .local v0, "tv":Landroid/util/TypedValue;
    const/16 v19, 0x0

    move/from16 v21, v4

    move/from16 v4, v19

    .local v4, "i":I
    .local v21, "verbose":Z
    :goto_8
    move-object/from16 v19, v5

    .end local v5    # "type":Ljava/lang/String;
    .local v19, "type":Ljava/lang/String;
    :try_start_b
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 451
    invoke-virtual {v12, v4, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 452
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v19

    goto :goto_8

    .line 454
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 455
    nop

    .line 462
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 455
    return v4

    .line 443
    .end local v12    # "array":Landroid/content/res/TypedArray;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    .end local v21    # "verbose":Z
    .local v0, "pkg":Ljava/lang/String;
    .local v4, "verbose":Z
    .restart local v5    # "type":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    move/from16 v21, v4

    move-object/from16 v19, v5

    .end local v0    # "pkg":Ljava/lang/String;
    .end local v4    # "verbose":Z
    .end local v5    # "type":Ljava/lang/String;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v19    # "type":Ljava/lang/String;
    .restart local v21    # "verbose":Z
    :try_start_c
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .end local v1    # "out":Ljava/io/PrintWriter;
    .end local v2    # "err":Ljava/io/PrintWriter;
    .end local v3    # "userId":I
    .end local v8    # "packageToLoad":Ljava/lang/String;
    .end local v9    # "fullyQualifiedResourceName":Ljava/lang/String;
    .end local v10    # "regex":Ljava/util/regex/Pattern;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "assets":Landroid/content/res/AssetManager;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v21    # "verbose":Z
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerShellCommand;
    throw v0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 456
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "resid":I
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "err":Ljava/io/PrintWriter;
    .restart local v3    # "userId":I
    .restart local v8    # "packageToLoad":Ljava/lang/String;
    .restart local v9    # "fullyQualifiedResourceName":Ljava/lang/String;
    .restart local v10    # "regex":Ljava/util/regex/Pattern;
    .restart local v11    # "matcher":Ljava/util/regex/Matcher;
    .restart local v14    # "res":Landroid/content/res/Resources;
    .restart local v15    # "assets":Landroid/content/res/AssetManager;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v21    # "verbose":Z
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerShellCommand;
    :catch_4
    move-exception v0

    goto :goto_9

    .line 462
    .end local v21    # "verbose":Z
    .restart local v4    # "verbose":Z
    :catchall_3
    move-exception v0

    move/from16 v21, v4

    .end local v4    # "verbose":Z
    .restart local v21    # "verbose":Z
    goto :goto_a

    .line 456
    .end local v21    # "verbose":Z
    .restart local v4    # "verbose":Z
    :catch_5
    move-exception v0

    move/from16 v21, v4

    .line 458
    .end local v4    # "verbose":Z
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v21    # "verbose":Z
    :goto_9
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: failed to get the resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 459
    nop

    .line 462
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 459
    const/4 v4, 0x1

    return v4

    .line 462
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_4
    move-exception v0

    goto :goto_a

    .end local v20    # "opt":Ljava/lang/String;
    .end local v21    # "verbose":Z
    .restart local v4    # "verbose":Z
    .local v5, "opt":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v21, v4

    move-object/from16 v20, v5

    .end local v4    # "verbose":Z
    .end local v5    # "opt":Ljava/lang/String;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v21    # "verbose":Z
    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 463
    throw v0

    .line 402
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "assets":Landroid/content/res/AssetManager;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v21    # "verbose":Z
    .restart local v4    # "verbose":Z
    .restart local v5    # "opt":Ljava/lang/String;
    :catch_6
    move-exception v0

    move/from16 v21, v4

    move-object/from16 v20, v5

    .line 403
    .end local v4    # "verbose":Z
    .end local v5    # "opt":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v21    # "verbose":Z
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 403
    const-string v5, "Error: failed to get resources for package %s for user %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    return v6

    :sswitch_data_0
    .sparse-switch
        0x4f7b216b -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runSetPriority()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 340
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 342
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 343
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    return v4

    .line 345
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 346
    nop

    .line 349
    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "newParentPackageName":Ljava/lang/String;
    const-string v6, "highest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 357
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v1}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 358
    :cond_2
    const-string/jumbo v6, "lowest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 359
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v1}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 361
    :cond_3
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v5, v1}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    :pswitch_data_0
    .packed-switch 0x4f7b216b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 62
    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 67
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "fabricate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "enable-exclusive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "lookup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runFabricate()I

    move-result v1

    return v1

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runLookup()I

    move-result v1

    return v1

    .line 77
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result v1

    return v1

    .line 75
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result v1

    return v1

    .line 73
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v1

    return v1

    .line 71
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v1

    return v1

    .line 69
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 83
    :goto_2
    return v1

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 90
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5120f151 -> :sswitch_6
        -0x4d6ada7d -> :sswitch_5
        -0x41645686 -> :sswitch_4
        -0x2f5d012c -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x639e22e8 -> :sswitch_1
        0x78377fcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 96
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Overlay manager (overlay) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE[:NAME]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Print debugging information about the overlay manager."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    With optional parameters PACKAGE and NAME, limit output to the specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "    overlay or target. With optional parameter FIELD, limit output to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "    the corresponding SettingsItem field. Field names are all lower case"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    and omit the m prefix, i.e. \'userid\' for SettingsItem.mUserId."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  list [--user USER_ID] [PACKAGE[:NAME]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "    Print information about target and overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "    parameters PACKAGE and NAME, limit output to the specified overlay or"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    target."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "  enable [--user USER_ID] PACKAGE[:NAME]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "    Enable overlay within or owned by PACKAGE with optional unique NAME."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, "  disable [--user USER_ID] PACKAGE[:NAME]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v1, "    Disable overlay within or owned by PACKAGE with optional unique NAME."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "    Enable overlay within or owned by PACKAGE and disable all other overlays"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "    for its target package. If the --category option is given, only disables"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "    other overlays in the same category."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "    Change the priority of the overlay to be just higher than"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "    the priority of PARENT If PARENT is the special keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v1, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v1, "    PACKAGE to the highest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v1, "  lookup [--user USER_ID] [--verbose] PACKAGE-TO-LOAD PACKAGE:TYPE/NAME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v1, "    Load a package and print the value of a given resource"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v1, "    applying the current configuration and enabled overlays."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v1, "    For a more fine-grained alternative, use \'idmap2 lookup\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v1, "  fabricate [--user USER_ID] [--target-name OVERLAYABLE] --target PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v1, "            --name NAME PACKAGE:TYPE/NAME ENCODED-TYPE-ID ENCODED-VALUE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v1, "    Create an overlay from a single resource. Caller must be root. Example:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v1, "      fabricate --target android --name LighterGray \\"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v1, "                android:color/lighter_gray 0x1c 0xffeeeeee"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void
.end method
