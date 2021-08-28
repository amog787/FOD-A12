.class final Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscreteUidOps"
.end annotation


# instance fields
.field mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 840
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Ljava/text/SimpleDateFormat;
    .param p3, "x3"    # Ljava/util/Date;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 835
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # [Ljava/lang/String;
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # I
    .param p10, "x8"    # I
    .param p11, "x9"    # Landroid/util/ArrayMap;

    .line 835
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->filter(JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .param p1, "x1"    # J

    .line 835
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->offsetHistory(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .param p1, "x1"    # Ljava/lang/String;

    .line 835
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->clearPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .param p1, "x1"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/util/ArrayMap;

    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V
    .locals 4
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 906
    .local p3, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 907
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 908
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, p1, p2, v3, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->access$1500(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private clearPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 925
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 926
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 927
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    const-string v2, "Package: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 931
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->access$1600(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private filter(JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .locals 16
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "filter"    # I
    .param p6, "packageNameFilter"    # Ljava/lang/String;
    .param p7, "opNamesFilter"    # [Ljava/lang/String;
    .param p8, "attributionTagFilter"    # Ljava/lang/String;
    .param p9, "flagsFilter"    # I
    .param p10, "currentUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 860
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_0

    .line 861
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 862
    .local v2, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iput-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 865
    .end local v2    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 866
    .local v14, "nPackages":I
    add-int/lit8 v2, v14, -0x1

    move v15, v2

    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_2

    .line 867
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 868
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 867
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->access$1300(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;JJI[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 870
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 871
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 866
    :cond_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 874
    .end local v15    # "i":I
    :cond_2
    return-void
.end method

.method private getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 897
    .local v0, "result":Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    if-nez v0, :cond_0

    .line 898
    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    move-object v0, v1

    .line 899
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    :cond_0
    return-object v0
.end method

.method private offsetHistory(J)V
    .locals 3
    .param p1, "offset"    # J

    .line 877
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 878
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 879
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->access$1400(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;J)V

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJII)V
    .locals 13
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "uidState"    # I
    .param p6, "accessTime"    # J
    .param p8, "accessDuration"    # J
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 891
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v2

    move v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->addDiscreteAccess(ILjava/lang/String;IIJJII)V

    .line 893
    return-void
.end method

.method deserialize(Landroid/util/TypedXmlPullParser;J)V
    .locals 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "beginTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 936
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 937
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    const/4 v1, 0x0

    const-string/jumbo v2, "pn"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->deserialize(Landroid/util/TypedXmlPullParser;J)V

    .line 941
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 943
    :cond_1
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;)V
    .locals 5
    .param p1, "other"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 847
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 848
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 849
    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 850
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 851
    .local v3, "p":Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;)V

    .line 848
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method serialize(Landroid/util/TypedXmlSerializer;)V
    .locals 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 915
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 916
    const/4 v2, 0x0

    const-string/jumbo v3, "p"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 917
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "pn"

    invoke-interface {p1, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    invoke-virtual {v4, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->serialize(Landroid/util/TypedXmlSerializer;)V

    .line 919
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
