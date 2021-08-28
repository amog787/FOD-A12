.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x3

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 0
    .param p1, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 70
    return-void
.end method

.method static synthetic lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "networks"    # Landroid/util/SparseArray;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "networks"    # Landroid/util/ArrayMap;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 432
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 428
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 238
    .local v0, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    if-nez v0, :cond_0

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 242
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 243
    .local v1, "networksById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 244
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 245
    .local v3, "id":I
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 230
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1

    .line 224
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 228
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    return-object v1
.end method

.method public static readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;
    .locals 23
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 255
    .local v1, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .line 257
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 259
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 260
    .local v3, "version":I
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v5, :cond_0

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    if-eq v3, v6, :cond_0

    .line 261
    const-string v5, "Bad version on IP configuration file, ignore read"

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const/4 v5, 0x0

    .line 417
    nop

    .line 419
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 262
    :goto_1
    return-object v5

    .line 266
    .end local v3    # "version":I
    :cond_0
    :goto_2
    const/4 v7, 0x0

    .line 268
    .local v7, "uniqueToken":Ljava/lang/String;
    :try_start_2
    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 269
    .local v8, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 270
    .local v9, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v10, Landroid/net/StaticIpConfiguration;

    invoke-direct {v10}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 271
    .local v10, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/4 v11, 0x0

    .line 272
    .local v11, "linkAddress":Landroid/net/LinkAddress;
    const/4 v12, 0x0

    .line 273
    .local v12, "gatewayAddress":Ljava/net/InetAddress;
    const/4 v13, 0x0

    .line 274
    .local v13, "proxyHost":Ljava/lang/String;
    const/4 v14, 0x0

    .line 275
    .local v14, "pacFileUrl":Ljava/lang/String;
    const/4 v15, -0x1

    .line 276
    .local v15, "proxyPort":I
    const/16 v16, 0x0

    .line 278
    .local v16, "exclusionList":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 281
    .local v18, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :goto_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v17

    .line 283
    .local v19, "key":Ljava/lang/String;
    :try_start_3
    const-string v6, "id"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v5, v19

    .end local v19    # "key":Ljava/lang/String;
    .local v5, "key":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    .line 284
    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    .line 285
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 286
    .local v19, "id":I
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 287
    .end local v19    # "id":I
    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    goto/16 :goto_c

    .line 288
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v7, v19

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    goto/16 :goto_c

    .line 351
    :catch_1
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    move-object v3, v0

    goto/16 :goto_e

    .line 290
    :cond_2
    const/4 v6, 0x3

    :try_start_6
    const-string v6, "ipAssignment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_3

    .line 291
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v21, v3

    move-object v8, v6

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    .end local v8    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v6, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    goto/16 :goto_c

    .line 292
    .end local v6    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v8    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    :cond_3
    :try_start_8
    const-string/jumbo v6, "linkAddress"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_5

    .line 293
    :try_start_9
    new-instance v6, Landroid/net/LinkAddress;

    .line 295
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 296
    move-object/from16 v19, v10

    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .local v19, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-direct {v6, v4, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v6

    .line 297
    .local v4, "parsedLinkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4

    if-nez v11, :cond_4

    .line 299
    move-object v11, v4

    goto :goto_4

    .line 301
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-IPv4 or duplicate address: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 303
    .end local v4    # "parsedLinkAddress":Landroid/net/LinkAddress;
    :goto_4
    move/from16 v21, v3

    move-object/from16 v4, v18

    goto/16 :goto_c

    .line 351
    :catch_2
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v4, v18

    move-object v3, v0

    goto/16 :goto_e

    .end local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_3
    move-exception v0

    move-object/from16 v19, v10

    move/from16 v21, v3

    move-object/from16 v4, v18

    move-object v3, v0

    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    goto/16 :goto_e

    .line 303
    .end local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_5
    move-object/from16 v19, v10

    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :try_start_b
    const-string v4, "gateway"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_b

    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, "dest":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 306
    .local v6, "gateway":Ljava/net/InetAddress;
    const/4 v10, 0x1

    if-ne v3, v10, :cond_7

    .line 308
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move-object v6, v10

    .line 309
    if-nez v12, :cond_6

    .line 310
    move-object v12, v6

    move/from16 v21, v3

    goto/16 :goto_6

    .line 312
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move/from16 v21, v3

    .local v21, "version":I
    :try_start_d
    const-string v3, "Duplicate gateway: "

    .end local v21    # "version":I
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 351
    .end local v4    # "dest":Landroid/net/LinkAddress;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    :catch_4
    move-exception v0

    move/from16 v21, v3

    goto :goto_7

    .line 315
    .restart local v4    # "dest":Landroid/net/LinkAddress;
    .restart local v6    # "gateway":Ljava/net/InetAddress;
    :cond_7
    move/from16 v21, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    .line 316
    new-instance v3, Landroid/net/LinkAddress;

    .line 318
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 319
    move-object/from16 v22, v4

    .end local v4    # "dest":Landroid/net/LinkAddress;
    .local v22, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v3

    .end local v22    # "dest":Landroid/net/LinkAddress;
    .restart local v4    # "dest":Landroid/net/LinkAddress;
    goto :goto_5

    .line 315
    :cond_8
    move-object/from16 v22, v4

    .line 321
    :goto_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    .line 322
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object v6, v3

    .line 326
    :cond_9
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_a

    .line 327
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    if-nez v3, :cond_a

    if-nez v12, :cond_a

    .line 328
    move-object v12, v6

    goto :goto_6

    .line 330
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-IPv4 default or duplicate route: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 334
    .end local v4    # "dest":Landroid/net/LinkAddress;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    :goto_6
    move-object/from16 v4, v18

    goto/16 :goto_c

    .line 351
    :catch_5
    move-exception v0

    :goto_7
    move-object v3, v0

    move-object/from16 v4, v18

    goto/16 :goto_e

    .line 334
    :cond_b
    move/from16 v21, v3

    :try_start_e
    const-string v3, "dns"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 335
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v4, v18

    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :try_start_f
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 336
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_c
    move-object/from16 v4, v18

    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const-string/jumbo v3, "proxySettings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 337
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    move-object v9, v3

    .end local v9    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v3, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    goto/16 :goto_c

    .line 338
    .end local v3    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v9    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_d
    const-string/jumbo v3, "proxyHost"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 339
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .end local v13    # "proxyHost":Ljava/lang/String;
    .local v3, "proxyHost":Ljava/lang/String;
    goto/16 :goto_c

    .line 340
    .end local v3    # "proxyHost":Ljava/lang/String;
    .restart local v13    # "proxyHost":Ljava/lang/String;
    :cond_e
    const-string/jumbo v3, "proxyPort"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 341
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v15, v3

    .end local v15    # "proxyPort":I
    .local v3, "proxyPort":I
    goto/16 :goto_c

    .line 342
    .end local v3    # "proxyPort":I
    .restart local v15    # "proxyPort":I
    :cond_f
    const-string/jumbo v3, "proxyPac"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 343
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .local v3, "pacFileUrl":Ljava/lang/String;
    goto/16 :goto_c

    .line 344
    .end local v3    # "pacFileUrl":Ljava/lang/String;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    :cond_10
    const-string v3, "exclusionList"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 345
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    .end local v16    # "exclusionList":Ljava/lang/String;
    .local v3, "exclusionList":Ljava/lang/String;
    goto/16 :goto_c

    .line 346
    .end local v3    # "exclusionList":Ljava/lang/String;
    .restart local v16    # "exclusionList":Ljava/lang/String;
    :cond_11
    const-string v3, "eos"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v3, :cond_13

    .line 347
    nop

    .line 356
    :try_start_10
    new-instance v3, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v3}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 357
    invoke-virtual {v3, v11}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v3

    .line 358
    invoke-virtual {v3, v12}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v4}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    .line 362
    .end local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .local v3, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v7, :cond_12

    .line 363
    new-instance v6, Landroid/net/IpConfiguration;

    invoke-direct {v6}, Landroid/net/IpConfiguration;-><init>()V

    .line 364
    .local v6, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v10, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v8}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v18

    aget v10, v10, v18

    packed-switch v10, :pswitch_data_0

    .line 379
    const-string v10, "Ignore invalid ip assignment while reading."

    goto :goto_8

    .line 375
    :pswitch_0
    const-string v10, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 376
    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 377
    goto :goto_9

    .line 372
    :pswitch_1
    invoke-virtual {v6, v8}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 373
    goto :goto_9

    .line 368
    :pswitch_2
    invoke-virtual {v6, v3}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 369
    invoke-virtual {v6, v8}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 370
    goto :goto_9

    .line 379
    :goto_8
    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 380
    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 384
    :goto_9
    sget-object v10, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v18

    aget v10, v10, v18

    packed-switch v10, :pswitch_data_1

    .line 405
    const-string v10, "Ignore invalid proxy settings while reading"

    goto :goto_a

    .line 401
    :pswitch_3
    const-string v10, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 402
    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 403
    goto :goto_b

    .line 398
    :pswitch_4
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 399
    goto :goto_b

    .line 392
    :pswitch_5
    nop

    .line 393
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v10

    .line 394
    .local v10, "proxyPacProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 395
    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 396
    goto :goto_b

    .line 386
    .end local v10    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_6
    nop

    .line 387
    invoke-static/range {v16 .. v16}, Lcom/android/net/module/util/ProxyUtils;->exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 386
    invoke-static {v13, v15, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v10

    .line 388
    .local v10, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 389
    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 390
    goto :goto_b

    .line 405
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    :goto_a
    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 406
    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    :try_end_10
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 412
    .end local v3    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "config":Landroid/net/IpConfiguration;
    .end local v7    # "uniqueToken":Ljava/lang/String;
    .end local v8    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v9    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v11    # "linkAddress":Landroid/net/LinkAddress;
    .end local v12    # "gatewayAddress":Ljava/net/InetAddress;
    .end local v13    # "proxyHost":Ljava/lang/String;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyPort":I
    .end local v16    # "exclusionList":Ljava/lang/String;
    :cond_12
    :goto_b
    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v4, p0

    move/from16 v3, v21

    goto/16 :goto_2

    .line 349
    .restart local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "uniqueToken":Ljava/lang/String;
    .restart local v8    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v9    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v11    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v12    # "gatewayAddress":Ljava/net/InetAddress;
    .restart local v13    # "proxyHost":Ljava/lang/String;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyPort":I
    .restart local v16    # "exclusionList":Ljava/lang/String;
    .restart local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_13
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore unknown key "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "while reading"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 353
    :goto_c
    move-object/from16 v18, v4

    move-object/from16 v10, v19

    move/from16 v3, v21

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_3

    .line 351
    :catch_6
    move-exception v0

    move-object v3, v0

    goto :goto_e

    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move/from16 v21, v3

    :goto_d
    move-object/from16 v4, v18

    move-object v3, v0

    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    goto :goto_e

    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .local v10, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :catch_9
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    move-object v3, v0

    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    goto :goto_e

    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "key":Ljava/lang/String;
    .restart local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v19, "key":Ljava/lang/String;
    :catch_a
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v19, v10

    move-object v3, v0

    .line 352
    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v18    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .local v19, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_e
    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore invalid address while reading"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 354
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v18, v4

    move-object/from16 v10, v19

    move/from16 v3, v21

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_3

    .line 417
    .end local v4    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "uniqueToken":Ljava/lang/String;
    .end local v8    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v9    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v11    # "linkAddress":Landroid/net/LinkAddress;
    .end local v12    # "gatewayAddress":Ljava/net/InetAddress;
    .end local v13    # "proxyHost":Ljava/lang/String;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyPort":I
    .end local v16    # "exclusionList":Ljava/lang/String;
    .end local v19    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_10

    .line 414
    :catch_b
    move-exception v0

    move-object v3, v0

    .line 415
    .local v3, "e":Ljava/io/IOException;
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 417
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_15

    .line 419
    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 420
    :goto_f
    goto :goto_13

    :catch_c
    move-exception v0

    goto :goto_f

    .line 417
    :goto_10
    if-eqz v2, :cond_14

    .line 419
    :try_start_15
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    .line 420
    :goto_11
    goto :goto_12

    :catch_d
    move-exception v0

    goto :goto_11

    .line 422
    :cond_14
    :goto_12
    throw v3

    .line 413
    :catch_e
    move-exception v0

    .line 417
    if-eqz v2, :cond_15

    .line 419
    :try_start_16
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_f

    .line 424
    :cond_15
    :goto_13
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static readIpConfigurations(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 208
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 215
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v1

    return-object v1

    .line 209
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v1
.end method

.method private static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z

    move-result v0

    return v0
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, "written":Z
    :try_start_0
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ipAssignment"

    packed-switch v1, :pswitch_data_0

    .line 121
    :try_start_1
    const-string v1, "Ignore invalid ip assignment while writing"

    goto/16 :goto_1

    .line 119
    :pswitch_0
    goto/16 :goto_2

    .line 113
    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    .line 116
    goto/16 :goto_2

    .line 89
    :pswitch_2
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 92
    .local v1, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 95
    .local v2, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v3, "linkAddress"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    .end local v2    # "ipAddress":Landroid/net/LinkAddress;
    :cond_0
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "gateway"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 103
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 106
    .local v3, "inetAddr":Ljava/net/InetAddress;
    const-string v4, "dns"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 108
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x1

    .line 111
    goto :goto_2

    .line 121
    .end local v1    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_1
    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 125
    :goto_2
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v2, "proxySettings"

    packed-switch v1, :pswitch_data_1

    .line 159
    :try_start_2
    const-string v1, "Ignore invalid proxy settings while writing"

    goto/16 :goto_3

    .line 157
    :pswitch_3
    goto/16 :goto_4

    .line 151
    :pswitch_4
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    .line 154
    goto :goto_4

    .line 143
    :pswitch_5
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 144
    .local v1, "proxyPacProperties":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v2, "proxyPac"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_4

    .line 127
    .end local v1    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 128
    .local v1, "proxyProperties":Landroid/net/ProxyInfo;
    nop

    .line 129
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "exclusionList":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "proxyHost"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, "proxyPort"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 136
    if-eqz v3, :cond_3

    .line 137
    const-string v2, "exclusionList"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 140
    :cond_3
    const/4 v0, 0x1

    .line 141
    goto :goto_4

    .line 159
    .end local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3    # "exclusionList":Ljava/lang/String;
    :goto_3
    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 163
    :goto_4
    if-eqz v0, :cond_5

    .line 164
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x3

    if-ge p3, v1, :cond_4

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_5

    .line 168
    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    :cond_5
    :goto_5
    goto :goto_6

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure in writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 174
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_6
    const-string v1, "eos"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 176
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public writeIpAndProxyConfigurationsToFile(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 193
    return-void
.end method

.method public writeIpConfigurations(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p2, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 203
    return-void
.end method
