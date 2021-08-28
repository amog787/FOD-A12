.class abstract Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MimeGroupsAwareIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/util/Pair<",
        "+",
        "Landroid/content/pm/parsing/component/ParsedComponent;",
        "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
        ">;R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/IntentResolver<",
        "TF;TR;>;"
    }
.end annotation


# instance fields
.field private mIsUpdatingMimeGroup:Z

.field private final mMimeGroupToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1249
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1245
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 1250
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<",
            "TF;TR;>;)V"
        }
    .end annotation

    .line 1253
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "orig":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1245
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 1246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 1255
    iget-object v1, p1, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1256
    iget-boolean v0, p1, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 1257
    return-void
.end method

.method private applyMimeGroups(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 1333
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1335
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1336
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$300()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/parsing/component/ParsedComponent;

    .line 1337
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    .line 1336
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1339
    .local v2, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "typeIndex":I
    :goto_1
    if-ltz v3, :cond_0

    .line 1340
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1343
    .local v4, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    goto :goto_2

    .line 1344
    :catch_0
    move-exception v5

    .line 1339
    .end local v4    # "mimeType":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1335
    .end local v2    # "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "typeIndex":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1351
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private equalLists(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1317
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "first":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "second":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1318
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1319
    :cond_1
    if-nez p2, :cond_2

    .line 1320
    return v0

    .line 1323
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1324
    return v0

    .line 1327
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1328
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1329
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateFilter(Landroid/util/Pair;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 1308
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1309
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v1

    .line 1310
    .local v1, "oldTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Landroid/util/Pair;)V

    .line 1312
    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v2

    .line 1313
    .local v2, "newTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method


# virtual methods
.method public addFilter(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 1261
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1262
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->applyMimeGroups(Landroid/util/Pair;)V

    .line 1263
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 1265
    iget-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_0

    .line 1266
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 1269
    :cond_0
    return-void
.end method

.method public bridge synthetic addFilter(Ljava/lang/Object;)V
    .locals 0

    .line 1242
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Landroid/util/Pair;)V

    return-void
.end method

.method protected removeFilterInternal(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 1273
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/util/Pair;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1274
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_0

    .line 1275
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 1279
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 1280
    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    .line 1281
    return-void
.end method

.method protected bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .locals 0

    .line 1242
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilterInternal(Landroid/util/Pair;)V

    return-void
.end method

.method public updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mimeGroup"    # Ljava/lang/String;

    .line 1292
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;, "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    .line 1293
    .local v0, "filters":[Landroid/util/Pair;, "[TF;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1295
    .local v2, "n":I
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 1296
    const/4 v3, 0x0

    .line 1298
    .local v3, "hasChanges":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    move-object v6, v5

    .local v6, "filter":Landroid/util/Pair;, "TF;"
    if-eqz v5, :cond_2

    .line 1299
    invoke-virtual {p0, p1, v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1300
    invoke-direct {p0, v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->updateFilter(Landroid/util/Pair;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 1298
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1303
    .end local v4    # "i":I
    .end local v6    # "filter":Landroid/util/Pair;, "TF;"
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 1304
    return v3
.end method
