.class final Lcom/android/server/compat/CompatConfig;
.super Ljava/lang/Object;
.source "CompatConfig.java"


# static fields
.field private static final APP_COMPAT_DATA_DIR:Ljava/lang/String; = "/data/misc/appcompat"

.field private static final OVERRIDES_FILE:Ljava/lang/String; = "compat_framework_overrides.xml"

.field private static final STATIC_OVERRIDES_PRODUCT_DIR:Ljava/lang/String; = "/product/etc/appcompat"

.field private static final TAG:Ljava/lang/String; = "CompatConfig"


# instance fields
.field private final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private final mChanges:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/compat/CompatChange;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

.field private mOverridesFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V
    .locals 1
    .param p1, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p2, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    .line 87
    new-instance v0, Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/compat/OverrideValidatorImpl;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 88
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 89
    iput-object p2, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method private addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z
    .locals 6
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "overrides"    # Landroid/app/compat/PackageOverride;

    .line 249
    const/4 v0, 0x1

    .line 250
    .local v0, "alreadyKnown":Z
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 251
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v1

    .line 252
    .local v1, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 253
    invoke-direct {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 254
    .local v2, "versionCode":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v3

    .line 255
    :try_start_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 256
    .local v4, "c":Lcom/android/server/compat/CompatChange;
    if-nez v4, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 258
    new-instance v5, Lcom/android/server/compat/CompatChange;

    invoke-direct {v5, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    move-object v4, v5

    .line 259
    invoke-virtual {p0, v4}, Lcom/android/server/compat/CompatConfig;->addChange(Lcom/android/server/compat/CompatChange;)V

    .line 261
    :cond_0
    invoke-virtual {v4, p3, p4, v1, v2}, Lcom/android/server/compat/CompatChange;->addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V

    .line 262
    .end local v4    # "c":Lcom/android/server/compat/CompatChange;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 264
    return v0

    .line 262
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;
    .locals 8
    .param p0, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    .line 94
    .local v0, "config":Lcom/android/server/compat/CompatConfig;
    nop

    .line 95
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc"

    const-string v3, "compatconfig"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 96
    nop

    .line 97
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "system_ext"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 99
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "apexes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 101
    .local v5, "apex":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v6, v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 103
    .end local v5    # "apex":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {v0}, Lcom/android/server/compat/CompatConfig;->initOverrides()V

    .line 105
    invoke-direct {v0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 106
    return-object v0
.end method

.method private getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 410
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 411
    .local v0, "allowed":Landroid/util/LongArray;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 412
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 414
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v4

    if-eq v4, p2, :cond_0

    .line 415
    goto :goto_1

    .line 417
    :cond_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 418
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v4

    .line 420
    .local v4, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    iget v5, v4, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-nez v5, :cond_1

    .line 421
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/util/LongArray;->add(J)V

    .line 412
    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    .end local v4    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v2    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    return-object v1

    .line 424
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 699
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-wide v1, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 700
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private initOverrides()V
    .locals 4

    .line 576
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/appcompat"

    const-string v2, "compat_framework_overrides.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/product/etc/appcompat"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/compat/CompatConfig;->initOverrides(Ljava/io/File;Ljava/io/File;)V

    .line 578
    return-void
.end method

.method private invalidateCache()V
    .locals 0

    .line 668
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 669
    return-void
.end method

.method private loadOverrides(Ljava/io/File;)V
    .locals 10
    .param p1, "overridesFile"    # Ljava/io/File;

    .line 601
    const-string v0, "CompatConfig"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    return-void

    .line 606
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/compat/overrides/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/overrides/Overrides;

    move-result-object v2

    .line 608
    .local v2, "overrides":Lcom/android/server/compat/overrides/Overrides;
    if-nez v2, :cond_1

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    return-void

    .line 612
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 613
    .local v4, "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    invoke-virtual {v4}, Lcom/android/server/compat/overrides/ChangeOverrides;->getChangeId()J

    move-result-wide v5

    .line 614
    .local v5, "changeId":J
    iget-object v7, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/compat/CompatChange;

    .line 615
    .local v7, "compatChange":Lcom/android/server/compat/CompatChange;
    if-nez v7, :cond_2

    .line 616
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Change ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " not found. Skipping overrides for it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {v7, v4}, Lcom/android/server/compat/CompatChange;->loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    .end local v4    # "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    .end local v5    # "changeId":J
    .end local v7    # "compatChange":Lcom/android/server/compat/CompatChange;
    goto :goto_0

    .line 622
    .end local v2    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 625
    .end local v1    # "in":Ljava/io/InputStream;
    nop

    .line 626
    return-void

    .line 606
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "overridesFile":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 622
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "overridesFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method private readConfig(Ljava/io/File;)V
    .locals 7
    .param p1, "configFile"    # Ljava/io/File;

    .line 564
    const-string v0, "CompatConfig"

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/compat/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;

    move-result-object v2

    .line 566
    .local v2, "config":Lcom/android/server/compat/config/Config;
    invoke-virtual {v2}, Lcom/android/server/compat/config/Config;->getCompatChange()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/config/Change;

    .line 567
    .local v4, "change":Lcom/android/server/compat/config/Change;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v5, Lcom/android/server/compat/CompatChange;

    invoke-direct {v5, v4}, Lcom/android/server/compat/CompatChange;-><init>(Lcom/android/server/compat/config/Change;)V

    invoke-virtual {p0, v5}, Lcom/android/server/compat/CompatConfig;->addChange(Lcom/android/server/compat/CompatChange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .end local v4    # "change":Lcom/android/server/compat/config/Change;
    goto :goto_0

    .line 570
    .end local v2    # "config":Lcom/android/server/compat/config/Config;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 572
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 564
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 570
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "configFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Encountered an error while reading/parsing compat config file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private removeOverrideUnsafe(JLjava/lang/String;)Z
    .locals 4
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 341
    invoke-direct {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 342
    .local v0, "versionCode":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 344
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v2, :cond_0

    .line 345
    invoke-direct {p0, v2, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 347
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    :cond_0
    monitor-exit v1

    .line 348
    const/4 v1, 0x0

    return v1

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 4
    .param p1, "change"    # Lcom/android/server/compat/CompatChange;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/Long;

    .line 357
    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v0

    .line 358
    .local v0, "changeId":J
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 359
    invoke-virtual {v2, v0, v1, p2}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v2

    .line 360
    .local v2, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {p1, p2}, Lcom/android/server/compat/CompatChange;->hasPackageOverride(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v2, v0, v1, p2}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 362
    invoke-virtual {p1, p2, v2, p3}, Lcom/android/server/compat/CompatChange;->removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    .line 363
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 364
    const/4 v3, 0x1

    return v3

    .line 366
    :cond_0
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method addChange(Lcom/android/server/compat/CompatChange;)V
    .locals 4
    .param p1, "change"    # Lcom/android/server/compat/CompatChange;

    .line 120
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 122
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addOverride(JLjava/lang/String;Z)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enabled"    # Z

    .line 224
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 225
    invoke-virtual {v0, p4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    .line 224
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v0

    .line 226
    .local v0, "alreadyKnown":Z
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 227
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 228
    return v0
.end method

.method addOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    .locals 5
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 241
    .local v1, "changeId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/compat/PackageOverride;

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 242
    .end local v1    # "changeId":Ljava/lang/Long;
    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 244
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 245
    return-void
.end method

.method clearChanges()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method defaultChangeIdValue(J)Z
    .locals 2
    .param p1, "changeId"    # J

    .line 477
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 478
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-nez v0, :cond_0

    .line 479
    const/4 v1, 0x1

    return v1

    .line 481
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v1

    return v1
.end method

.method disableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object v0

    .line 453
    .local v0, "changes":[J
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    .line 454
    .local v4, "changeId":J
    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 455
    invoke-virtual {v6, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v6

    .line 454
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 453
    .end local v4    # "changeId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 458
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 459
    array-length v1, v0

    return v1
.end method

.method dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 543
    .local v1, "changeInfos":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 545
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    new-instance v4, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-direct {v4, v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V

    aput-object v4, v1, v2

    .line 543
    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 548
    .end local v1    # "changeInfos":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpConfig(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 502
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 504
    const-string v1, "No compat overrides."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    monitor-exit v0

    return-void

    .line 507
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 509
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object v0

    .line 436
    .local v0, "changes":[J
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 437
    .local v3, "changeId":J
    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 438
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    .line 437
    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 436
    .end local v3    # "changeId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 441
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 442
    array-length v1, v0

    return v1
.end method

.method forceNonDebuggableFinalForTest(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 486
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->forceNonDebuggableFinalForTest(Z)V

    .line 487
    return-void
.end method

.method getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .locals 7
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 520
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 521
    .local v0, "enabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 522
    .local v1, "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v2

    .line 523
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 524
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 525
    .local v4, "c":Lcom/android/server/compat/CompatChange;
    iget-object v5, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 526
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v4    # "c":Lcom/android/server/compat/CompatChange;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 531
    .end local v3    # "i":I
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    return-object v2

    .line 531
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .locals 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 138
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 139
    .local v0, "disabled":Landroid/util/LongArray;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 142
    .local v3, "c":Lcom/android/server/compat/CompatChange;
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 140
    .end local v3    # "c":Lcom/android/server/compat/CompatChange;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    return-object v1

    .line 146
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    return-object v0
.end method

.method initConfigFromLib(Ljava/io/File;)V
    .locals 7
    .param p1, "libraryDir"    # Ljava/io/File;

    .line 552
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CompatConfig"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 557
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a config file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0, v4}, Lcom/android/server/compat/CompatConfig;->readConfig(Ljava/io/File;)V

    .line 556
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return-void

    .line 553
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method initOverrides(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "dynamicOverridesFile"    # Ljava/io/File;
    .param p2, "staticOverridesFile"    # Ljava/io/File;

    .line 583
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->clearOverrides()V

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-direct {p0, p2}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 591
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 594
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 598
    :cond_1
    return-void

    .line 587
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "changeId"    # J
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 178
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 180
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-nez v1, :cond_0

    .line 182
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v1, p3, v2}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 185
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDisabled(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 303
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 305
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 306
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isKnownChangeId(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 269
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 271
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 272
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLoggingOnly(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 293
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 295
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 296
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isOverridable(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 313
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 315
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getOverridable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 316
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method lookupChangeId(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 166
    const-wide/16 v0, -0x1

    return-wide v0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maxTargetSdkForChangeIdOptIn(J)I
    .locals 4
    .param p1, "changeId"    # J

    .line 280
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 282
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    monitor-exit v0

    return v2

    .line 285
    :cond_0
    monitor-exit v0

    return v2

    .line 286
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method recheckOverrides(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 675
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 676
    .local v0, "versionCode":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 677
    const/4 v2, 0x0

    .line 678
    .local v2, "shouldInvalidateCache":Z
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 679
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 680
    .local v4, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v4, p1}, Lcom/android/server/compat/CompatChange;->hasPackageOverride(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 681
    goto :goto_1

    .line 683
    :cond_0
    iget-object v5, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 684
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateForRecheck(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v5

    .line 686
    .local v5, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 678
    .end local v4    # "c":Lcom/android/server/compat/CompatChange;
    .end local v5    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v3    # "idx":I
    :cond_1
    if-eqz v2, :cond_2

    .line 689
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 691
    .end local v2    # "shouldInvalidateCache":Z
    :cond_2
    monitor-exit v1

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method registerContentObserver()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {v0}, Lcom/android/server/compat/OverrideValidatorImpl;->registerContentObserver()V

    .line 707
    return-void
.end method

.method registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .locals 4
    .param p1, "changeId"    # J
    .param p3, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 463
    const/4 v0, 0x1

    .line 464
    .local v0, "alreadyKnown":Z
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 466
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    if-nez v2, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 468
    new-instance v3, Lcom/android/server/compat/CompatChange;

    invoke-direct {v3, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    move-object v2, v3

    .line 469
    invoke-virtual {p0, v2}, Lcom/android/server/compat/CompatConfig;->addChange(Lcom/android/server/compat/CompatChange;)V

    .line 471
    :cond_0
    invoke-virtual {v2, p3}, Lcom/android/server/compat/CompatChange;->registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 472
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    monitor-exit v1

    .line 473
    return v0

    .line 472
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeOverride(JLjava/lang/String;)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result v0

    .line 331
    .local v0, "overrideExists":Z
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 332
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 333
    return v0
.end method

.method removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .locals 4
    .param p1, "overridesToRemove"    # Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 401
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 402
    .local v1, "changeId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    .line 403
    .end local v1    # "changeId":Ljava/lang/Long;
    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 405
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 406
    return-void
.end method

.method removePackageOverrides(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 378
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 379
    .local v0, "versionCode":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 382
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 380
    nop

    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 386
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 387
    return-void

    .line 384
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method saveOverrides()V
    .locals 6

    .line 632
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 635
    :cond_0
    new-instance v0, Lcom/android/server/compat/overrides/Overrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/Overrides;-><init>()V

    .line 636
    .local v0, "overrides":Lcom/android/server/compat/overrides/Overrides;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 637
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    .line 638
    .local v2, "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 639
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 640
    .local v4, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;

    move-result-object v5

    .line 641
    .local v5, "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    if-eqz v5, :cond_1

    .line 642
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v4    # "c":Lcom/android/server/compat/CompatChange;
    .end local v5    # "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    .end local v3    # "idx":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 646
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    monitor-enter v2

    .line 649
    :try_start_1
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 653
    nop

    .line 654
    :try_start_2
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 655
    .local v1, "out":Ljava/io/PrintWriter;
    :try_start_3
    new-instance v3, Lcom/android/server/compat/overrides/XmlWriter;

    invoke-direct {v3, v1}, Lcom/android/server/compat/overrides/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    .line 656
    .local v3, "writer":Lcom/android/server/compat/overrides/XmlWriter;
    invoke-static {v3, v0}, Lcom/android/server/compat/overrides/XmlWriter;->write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    .end local v3    # "writer":Lcom/android/server/compat/overrides/XmlWriter;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 659
    .end local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_2

    .line 654
    .restart local v1    # "out":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 657
    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v0    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v3, "CompatConfig"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v2

    .line 661
    return-void

    .line 660
    :catchall_2
    move-exception v1

    goto :goto_3

    .line 650
    :catch_1
    move-exception v1

    .line 651
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "CompatConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create override config file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    monitor-exit v2

    return-void

    .line 660
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 645
    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2
.end method

.method willChangeBeEnabled(JLjava/lang/String;)Z
    .locals 3
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 199
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-nez v1, :cond_0

    .line 201
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 203
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/compat/CompatChange;->willBeEnabled(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 204
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
