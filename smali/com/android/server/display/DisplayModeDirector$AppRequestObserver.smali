.class final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private final mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 1240
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 1242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1243
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1313
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1314
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1315
    return-object v1

    .line 1317
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1318
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 1319
    return-object v4

    .line 1317
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1322
    :cond_2
    return-object v1
.end method

.method private setAppPreferredRefreshRateRangeLocked(IFF)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "requestedMinRefreshRateRange"    # F
    .param p3, "requestedMaxRefreshRateRange"    # F

    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_0

    cmpl-float v2, p3, v1

    if-lez v2, :cond_2

    .line 1285
    :cond_0
    move v2, p2

    .line 1286
    .local v2, "min":F
    cmpl-float v3, p3, v1

    if-lez v3, :cond_1

    .line 1287
    move v3, p3

    goto :goto_0

    :cond_1
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1288
    .local v3, "max":F
    :goto_0
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v4, v2, v3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    move-object v0, v4

    .line 1289
    iget v4, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_2

    iget v4, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_2

    .line 1291
    const/4 v0, 0x0

    .line 1295
    .end local v2    # "min":F
    .end local v3    # "max":F
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1296
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1295
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1297
    return-void

    .line 1300
    :cond_3
    if-eqz v0, :cond_4

    .line 1301
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1302
    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v2, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_1

    .line 1304
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1305
    const/4 v1, 0x0

    .line 1307
    .restart local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1308
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x3

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1309
    monitor-exit v2

    .line 1310
    return-void

    .line 1309
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setAppRequestedModeLocked(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1255
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    .line 1256
    .local v0, "requestedMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    return-void

    .line 1262
    :cond_0
    if-eqz v0, :cond_1

    .line 1263
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1264
    nop

    .line 1265
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forBaseModeRefreshRate(F)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 1266
    .local v1, "baseModeRefreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1267
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1266
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .local v2, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_0

    .line 1269
    .end local v1    # "baseModeRefreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v2    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1270
    const/4 v1, 0x0

    .line 1271
    .restart local v1    # "baseModeRefreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v2, 0x0

    .line 1274
    .restart local v2    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x4

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1276
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x5

    invoke-static {v3, p1, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1277
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1326
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, " -> "

    const-string v3, "    "

    if-ge v0, v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1330
    .local v1, "id":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    .line 1331
    .local v4, "mode":Landroid/view/Display$Mode;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    .end local v1    # "id":I
    .end local v4    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    .end local v0    # "i":I
    :cond_0
    const-string v0, "    mAppPreferredRefreshRateRangeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1336
    .restart local v1    # "id":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1337
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 1338
    .local v4, "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    .end local v1    # "id":I
    .end local v4    # "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1340
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setAppRequest(IIFF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I
    .param p3, "requestedMinRefreshRateRange"    # F
    .param p4, "requestedMaxRefreshRateRange"    # F

    .line 1247
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1248
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 1249
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppPreferredRefreshRateRangeLocked(IFF)V

    .line 1251
    monitor-exit v0

    .line 1252
    return-void

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
