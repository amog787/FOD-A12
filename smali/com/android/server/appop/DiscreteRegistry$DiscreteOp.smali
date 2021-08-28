.class final Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscreteOp"
.end annotation


# instance fields
.field mAttributedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1059
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # I
    .param p8, "x6"    # I
    .param p9, "x7"    # Ljava/lang/String;
    .param p10, "x8"    # I
    .param p11, "x9"    # Landroid/util/ArrayMap;

    .line 1054
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    .param p1, "x1"    # J

    .line 1054
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->offsetHistory(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    .param p1, "x1"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/util/ArrayMap;

    .line 1054
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Ljava/text/SimpleDateFormat;
    .param p3, "x3"    # Ljava/util/Date;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 1054
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 23
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 1157
    .local p5, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1158
    .local v2, "nOps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1159
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1160
    .local v4, "tag":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/util/List;

    .line 1161
    .local v14, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 1162
    .local v15, "nEvents":I
    const/4 v5, 0x0

    move v12, v5

    .local v12, "j":I
    :goto_1
    if-ge v12, v15, :cond_2

    .line 1163
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1164
    .local v13, "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    const/4 v11, 0x0

    .line 1165
    .local v11, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    iget v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 1167
    iget v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 1168
    .local v10, "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1169
    move-object v5, v10

    move-object/from16 v6, p3

    move/from16 v7, p2

    move-object v8, v4

    move/from16 v9, p4

    move-object v0, v10

    .end local v10    # "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    .local v0, "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    if-eqz v5, :cond_1

    .line 1171
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 1172
    .local v5, "proxyEvent":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    new-instance v6, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget v7, v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    iget-object v8, v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v6

    move-object v0, v11

    goto :goto_2

    .line 1168
    .end local v0    # "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    .end local v5    # "proxyEvent":Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    .restart local v10    # "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    :cond_0
    move-object v0, v10

    .line 1176
    .end local v10    # "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    :cond_1
    move-object v0, v11

    .end local v11    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :goto_2
    iget v10, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v11, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget-wide v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1177
    invoke-static {v5, v6}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v16

    iget-wide v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1178
    invoke-static {v5, v6}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v18

    .line 1176
    move-object/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v4

    move/from16 v20, v12

    move-object/from16 v21, v13

    .end local v12    # "j":I
    .end local v13    # "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    .local v20, "j":I
    .local v21, "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    move-wide/from16 v12, v16

    move-object/from16 v17, v14

    move/from16 v22, v15

    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v15    # "nEvents":I
    .local v17, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .local v22, "nEvents":I
    move-wide/from16 v14, v18

    move-object/from16 v16, v0

    invoke-virtual/range {v5 .. v16}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 1162
    .end local v0    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v21    # "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    add-int/lit8 v12, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v14, v17

    move/from16 v15, v22

    .end local v20    # "j":I
    .restart local v12    # "j":I
    goto :goto_1

    .end local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v22    # "nEvents":I
    .restart local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .restart local v15    # "nEvents":I
    :cond_2
    move/from16 v20, v12

    move-object/from16 v17, v14

    move/from16 v22, v15

    .line 1158
    .end local v4    # "tag":Ljava/lang/String;
    .end local v12    # "j":I
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v15    # "nEvents":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 1181
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 1185
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1186
    .local v0, "nAttributions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1187
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    const-string v2, "Attribution: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1191
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1192
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1193
    .local v3, "nOps":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge p5, v5, :cond_0

    goto :goto_1

    :cond_0
    sub-int v5, v3, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1194
    .local v4, "first":I
    :goto_1
    move v5, v4

    .local v5, "j":I
    :goto_2
    if-ge v5, v3, :cond_1

    .line 1195
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, p2, p3, v7}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->access$2500(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 1194
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1186
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v3    # "nOps":I
    .end local v4    # "first":I
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 17
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "filter"    # I
    .param p6, "attributionTagFilter"    # Ljava/lang/String;
    .param p7, "flagsFilter"    # I
    .param p8, "currentUid"    # I
    .param p9, "currentPkgName"    # Ljava/lang/String;
    .param p10, "currentOp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 1080
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_0

    .line 1081
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1082
    .local v2, "attributedOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    nop

    .line 1083
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1082
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iput-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1087
    .end local v2    # "attributedOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1088
    .local v2, "nTags":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1089
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1090
    .local v4, "tag":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1091
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1092
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    .line 1091
    move-object v6, v5

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, p11

    invoke-static/range {v6 .. v16}, Lcom/android/server/appop/DiscreteRegistry;->access$2200(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v5

    .line 1094
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1096
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1088
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1099
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1147
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    if-nez v0, :cond_0

    .line 1148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1149
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$deserialize$0(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I
    .locals 4
    .param p0, "a"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    .param p1, "b"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1247
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1248
    :cond_0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1247
    :goto_0
    return v0
.end method

.method private offsetHistory(J)V
    .locals 18
    .param p1, "offset"    # J

    .line 1102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1103
    .local v1, "nTags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1104
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1106
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1107
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 1108
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1109
    .local v6, "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    new-instance v15, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    iget-wide v9, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    sub-long v9, v9, p1

    iget-wide v11, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget v13, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v14, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v7, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v0, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v16, v7

    move-object v7, v15

    move/from16 v17, v1

    move-object v1, v15

    .end local v1    # "nTags":I
    .local v17, "nTags":I
    move/from16 v15, v16

    move/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v3, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .end local v6    # "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto :goto_1

    .end local v17    # "nTags":I
    .restart local v1    # "nTags":I
    :cond_0
    move/from16 v17, v1

    .line 1103
    .end local v1    # "nTags":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v4    # "n":I
    .end local v5    # "j":I
    .restart local v17    # "nTags":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1114
    .end local v2    # "i":I
    .end local v17    # "nTags":I
    .restart local v1    # "nTags":I
    :cond_1
    return-void
.end method


# virtual methods
.method addDiscreteAccess(Ljava/lang/String;IIJJII)V
    .locals 16
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "uidState"    # I
    .param p4, "accessTime"    # J
    .param p6, "accessDuration"    # J
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 1120
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1123
    .local v0, "attributedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1124
    .local v1, "nAttributedOps":I
    move v2, v1

    .line 1125
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_6

    .line 1126
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1127
    .local v3, "previousOp":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    iget-wide v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v4, v5}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v4

    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1128
    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p8

    move/from16 v12, p9

    goto :goto_1

    .line 1130
    :cond_0
    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    move/from16 v15, p2

    if-ne v4, v15, :cond_2

    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    move/from16 v14, p3

    if-ne v4, v14, :cond_3

    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    move/from16 v13, p8

    if-ne v4, v13, :cond_4

    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v12, p9

    if-ne v4, v12, :cond_5

    .line 1133
    invoke-static/range {p6 .. p7}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v6, v7}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1135
    goto :goto_1

    .line 1137
    :cond_1
    return-void

    .line 1130
    :cond_2
    move/from16 v14, p3

    :cond_3
    move/from16 v13, p8

    :cond_4
    move/from16 v12, p9

    .line 1125
    .end local v3    # "previousOp":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p8

    move/from16 v12, p9

    .line 1141
    :goto_1
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    move-object/from16 v4, p0

    iget-object v6, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    move-object v5, v3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p3

    move/from16 v12, p2

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1143
    return-void
.end method

.method deserialize(Landroid/util/TypedXmlPullParser;J)V
    .locals 26
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "beginTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1222
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1223
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    const/4 v3, 0x0

    const-string v4, "at"

    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1225
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct {v0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1227
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 1228
    .local v6, "innerDepth":I
    :cond_1
    :goto_1
    invoke-static {v1, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1229
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "e"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1230
    const-string/jumbo v7, "nt"

    invoke-interface {v1, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    .line 1231
    .local v18, "noteTime":J
    const-wide/16 v7, -0x1

    const-string/jumbo v9, "nd"

    invoke-interface {v1, v3, v9, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v20

    .line 1233
    .local v20, "noteDuration":J
    const-string/jumbo v7, "us"

    invoke-interface {v1, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1234
    .local v7, "uidState":I
    const-string v8, "f"

    invoke-interface {v1, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 1235
    .local v22, "opFlags":I
    const/4 v8, 0x0

    const-string v9, "af"

    invoke-interface {v1, v3, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 1237
    .local v23, "attributionFlags":I
    const/4 v8, -0x1

    const-string v9, "ci"

    invoke-interface {v1, v3, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v24

    .line 1239
    .local v24, "attributionChainId":I
    add-long v8, v18, v20

    cmp-long v8, v8, p2

    if-gez v8, :cond_2

    .line 1240
    goto :goto_1

    .line 1242
    :cond_2
    new-instance v25, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object v9, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    move-object/from16 v8, v25

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    move v14, v7

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-direct/range {v8 .. v17}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    .line 1244
    .local v8, "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    .end local v7    # "uidState":I
    .end local v8    # "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    .end local v18    # "noteTime":J
    .end local v20    # "noteDuration":J
    .end local v22    # "opFlags":I
    .end local v23    # "attributionFlags":I
    .end local v24    # "attributionChainId":I
    goto :goto_1

    .line 1247
    :cond_3
    sget-object v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1249
    .end local v4    # "attributionTag":Ljava/lang/String;
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v6    # "innerDepth":I
    goto/16 :goto_0

    .line 1251
    :cond_4
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;)V
    .locals 7
    .param p1, "other"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 1066
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1067
    .local v0, "nTags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1068
    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1069
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1070
    .local v3, "otherEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1071
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-static {v4, v3}, Lcom/android/server/appop/DiscreteRegistry;->access$2100(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "otherEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method serialize(Landroid/util/TypedXmlSerializer;)V
    .locals 10
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1203
    .local v0, "nAttributions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1204
    const/4 v2, 0x0

    const-string v3, "a"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1205
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1206
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1207
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "at"

    invoke-interface {p1, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1209
    :cond_0
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1210
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1211
    .local v6, "nOps":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 1212
    const-string v8, "e"

    invoke-interface {p1, v2, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-static {v9, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->access$2600(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Landroid/util/TypedXmlSerializer;)V

    .line 1214
    invoke-interface {p1, v2, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1211
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1216
    .end local v7    # "j":I
    :cond_1
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v6    # "nOps":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
