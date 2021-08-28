.class public Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/ArtStatsLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtStatsLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(JIILjava/lang/String;IJIILjava/lang/String;)V
    .locals 18
    .param p1, "sessionId"    # J
    .param p3, "uid"    # I
    .param p4, "compilationReason"    # I
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "kind"    # I
    .param p7, "value"    # J
    .param p9, "dexMetadataType"    # I
    .param p10, "apkType"    # I
    .param p11, "isa"    # Ljava/lang/String;

    .line 284
    nop

    .line 288
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->access$000()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 290
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 298
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->access$200()Ljava/util/Map;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 298
    move-object/from16 v15, p11

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 284
    const/16 v3, 0x14c

    const/4 v11, 0x1

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v12, p6

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-static/range {v3 .. v17}, Lcom/android/internal/art/ArtStatsLog;->write(IJIIIJIIJIII)V

    .line 300
    return-void
.end method
