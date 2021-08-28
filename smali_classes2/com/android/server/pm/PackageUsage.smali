.class Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/android/server/pm/PackageSetting;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field private static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"


# instance fields
.field private mIsHistoricalPackageUsageAvailable:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 48
    const-string v0, "package-usage.list"

    const-string v1, "PackageUsage_DiskWriter"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    iput-boolean v2, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 49
    return-void
.end method

.method private parseAsLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as a long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuilder;C)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 190
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 191
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 194
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    if-ne v0, p3, :cond_2

    .line 197
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 199
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .end local v0    # "ch":I
    goto :goto_0
.end method

.method private readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object v0, p4

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    .line 126
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 132
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 133
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 134
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    .line 135
    goto :goto_2

    .line 138
    :cond_0
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 139
    .local v4, "timestamp":J
    const/4 v6, 0x0

    .line 140
    .local v6, "reason":I
    :goto_1
    const/16 v7, 0x8

    if-ge v6, v7, :cond_1

    .line 142
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v7

    invoke-virtual {v7, v6, v4, v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "tokens":[Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "timestamp":J
    .end local v6    # "reason":I
    :cond_1
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    .restart local v1    # "tokens":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as package-timestamp pair."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 153
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "tokens":[Ljava/lang/String;
    array-length v2, v0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 158
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 159
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 160
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    .line 161
    goto :goto_0

    .line 164
    :cond_0
    const/4 v4, 0x0

    .line 165
    .local v4, "reason":I
    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 167
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v0, v6

    .line 168
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 167
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "tokens":[Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "reason":I
    :cond_1
    goto :goto_0

    .line 155
    .restart local v0    # "tokens":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as a timestamp array."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v0    # "tokens":[Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->readInternal(Ljava/util/Map;)V

    return-void
.end method

.method protected readInternal(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 97
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 99
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "firstLine":Ljava/lang/String;
    if-nez v3, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-string v4, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/pm/PackageUsage;->readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "firstLine":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "PackageManager"

    const-string v4, "Failed to read package usage times"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 110
    :catch_1
    move-exception v2

    .line 111
    .local v2, "expected":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v2    # "expected":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 116
    nop

    .line 117
    return-void

    .line 115
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 116
    throw v2
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->writeInternal(Ljava/util/Map;)V

    return-void
.end method

.method protected writeInternal(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 58
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 60
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 61
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v2, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    const/16 v5, 0x3e8

    const/16 v6, 0x408

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 71
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 72
    goto :goto_0

    .line 74
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 75
    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v8

    .line 77
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v8

    .line 76
    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-wide v10, v8, v7

    .line 78
    .local v10, "usageTimeInMillis":J
    const/16 v12, 0x20

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    nop

    .end local v10    # "usageTimeInMillis":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 83
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 85
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 90
    :cond_3
    const-string v3, "PackageManager"

    const-string v4, "Failed to write package usage times"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
