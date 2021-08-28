.class public Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;,
        Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;,
        Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    }
.end annotation


# static fields
.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final DEBUG:Z = false

.field private static final PACKAGE_DIRNAME:Ljava/lang/String; = "package_configs"

.field private static final SUFFIX_FILE_NAME:Ljava/lang/String; = "_config.xml"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mModified:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingWrite:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;)V
    .locals 1
    .param p1, "queue"    # Lcom/android/server/wm/PersisterQueue;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 77
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # I

    .line 50
    invoke-static {p0}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PackageConfigPersister;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PackageConfigPersister;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/PackageConfigPersister;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    .line 281
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;>;"
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 282
    .local v0, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-nez v0, :cond_0

    .line 283
    const/4 v1, 0x0

    return-object v1

    .line 285
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-object v1
.end method

.method private findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    .line 265
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;>;"
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 266
    .local v0, "records":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-nez v0, :cond_0

    .line 267
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 268
    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 271
    .local v1, "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v1, :cond_1

    .line 272
    return-object v1

    .line 274
    :cond_1
    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    .line 275
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-object v1
.end method

.method private static getUserConfigsDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package_configs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$removePackage$1(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .param p1, "item"    # Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    .line 228
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removePackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    .line 225
    .local v0, "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const-class v3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    .line 234
    .local v1, "modifyRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v1, :cond_1

    .line 235
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    invoke-direct {v3, p2, p1}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 239
    :cond_1
    return-void
.end method

.method private removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 2
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ")V"
        }
    .end annotation

    .line 290
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;>;"
    iget v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 291
    .local v0, "processes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$removeUser$0$PackageConfigPersister(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 205
    iget-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method loadUserPackages(I)V
    .locals 17
    .param p1, "userId"    # I

    .line 81
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    .line 83
    .local v3, "userConfigsDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v0

    .line 84
    .local v4, "configFiles":[Ljava/io/File;
    if-nez v4, :cond_0

    .line 85
    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadPackages: empty list files from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v2

    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .local v5, "fileIndex":I
    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_6

    .line 90
    aget-object v0, v4, v5

    move-object v6, v0

    .line 95
    .local v6, "configFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_config.xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    .line 96
    move/from16 v12, p1

    goto/16 :goto_d

    .line 99
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v7, v0

    .line 100
    .local v7, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v7}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 102
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    const/4 v8, 0x0

    .line 103
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, "nightMode":I
    :goto_1
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "event":I
    const/4 v12, 0x1

    if-eq v10, v12, :cond_4

    const/4 v10, 0x3

    if-eq v11, v10, :cond_4

    .line 106
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "name":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v11, v13, :cond_3

    .line 111
    const-string v13, "config"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 112
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v13

    sub-int/2addr v13, v12

    .local v13, "attIdx":I
    :goto_2
    if-ltz v13, :cond_3

    .line 114
    invoke-interface {v0, v13}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v0, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "attrValue":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_2
    goto :goto_3

    :sswitch_0
    const-string v12, "night_mode"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_4

    :sswitch_1
    const-string v12, "package_name"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_4

    :goto_3
    const/4 v12, -0x1

    :goto_4
    packed-switch v12, :pswitch_data_0

    goto :goto_5

    .line 121
    :pswitch_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto :goto_5

    .line 118
    :pswitch_1
    move-object v8, v15

    .line 119
    nop

    .line 113
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrValue":Ljava/lang/String;
    :goto_5
    add-int/lit8 v13, v13, -0x1

    const/4 v12, 0x1

    goto :goto_2

    .line 127
    .end local v13    # "attIdx":I
    :cond_3
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 128
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_1

    .line 129
    :cond_4
    if-eqz v8, :cond_5

    .line 130
    iget-object v10, v1, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    move/from16 v12, p1

    :try_start_3
    invoke-direct {v1, v10, v8, v12}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v10

    .line 132
    .local v10, "initRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    iput v9, v10, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 99
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "nightMode":I
    .end local v10    # "initRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .end local v11    # "event":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 129
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "nightMode":I
    .restart local v11    # "event":I
    :cond_5
    move/from16 v12, p1

    .line 137
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "nightMode":I
    .end local v11    # "event":I
    :goto_6
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_c

    .line 99
    :catchall_1
    move-exception v0

    move/from16 v12, p1

    :goto_7
    move-object v8, v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "userConfigsDir":Ljava/io/File;
    .end local v4    # "configFiles":[Ljava/io/File;
    .end local v5    # "fileIndex":I
    .end local v6    # "configFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/PackageConfigPersister;
    .end local p1    # "userId":I
    :goto_8
    throw v8
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 141
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v3    # "userConfigsDir":Ljava/io/File;
    .restart local v4    # "configFiles":[Ljava/io/File;
    .restart local v5    # "fileIndex":I
    .restart local v6    # "configFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/PackageConfigPersister;
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_9

    .line 139
    :catch_1
    move-exception v0

    goto :goto_a

    .line 137
    :catch_2
    move-exception v0

    goto :goto_b

    .line 141
    :catch_3
    move-exception v0

    move/from16 v12, p1

    .line 142
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_9
    :try_start_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_d

    .line 139
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    move/from16 v12, p1

    .line 140
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 137
    :catch_5
    move-exception v0

    move/from16 v12, p1

    .line 138
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_c
    nop

    .line 89
    .end local v6    # "configFile":Ljava/io/File;
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v12, p1

    .line 145
    .end local v3    # "userConfigsDir":Ljava/io/File;
    .end local v4    # "configFiles":[Ljava/io/File;
    .end local v5    # "fileIndex":I
    monitor-exit v2

    .line 146
    return-void

    .line 145
    :catchall_3
    move-exception v0

    move/from16 v12, p1

    :goto_e
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_e

    :sswitch_data_0
    .sparse-switch
        -0x6fe3451c -> :sswitch_1
        -0x23dea296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onPackageUninstall(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 215
    .local v2, "userId":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 213
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 198
    .local v1, "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 199
    .local v2, "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 204
    .local v3, "tempList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    new-instance v4, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 207
    .end local v1    # "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .end local v2    # "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .end local v3    # "tempList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    monitor-exit v0

    .line 208
    return-void

    .line 201
    .restart local v1    # "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .restart local v2    # "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 207
    .end local v1    # "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .end local v2    # "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .locals 3
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    .line 157
    .local v1, "modifiedRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v1, :cond_0

    .line 158
    iget v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ConfigurationContainer;->setOverrideNightMode(I)Z

    .line 160
    .end local v1    # "modifiedRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :cond_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "impl"    # Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    .line 168
    .local v1, "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService$PackageConfigurationUpdaterImpl;->getNightMode()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I

    .line 170
    invoke-virtual {v1}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->isResetNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    goto :goto_1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 174
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v2

    .line 176
    .local v2, "pendingRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-nez v2, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v3

    .local v3, "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    goto :goto_0

    .line 180
    .end local v3    # "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :cond_1
    move-object v3, v2

    .line 182
    .restart local v3    # "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :goto_0
    iget v4, v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I

    iget v5, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I

    if-ne v4, v5, :cond_2

    .line 183
    monitor-exit v0

    return-void

    .line 185
    :cond_2
    iget v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I

    iput v4, v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:I

    .line 189
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v5, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 191
    .end local v1    # "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .end local v2    # "pendingRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .end local v3    # "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :goto_1
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
