.class Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 263
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized requestDisplayState(IIFF)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "state"    # I
    .param p3, "brightness"    # F
    .param p4, "sdrBrightness"    # F

    monitor-enter p0

    .line 268
    const/4 v0, 0x1

    .line 269
    .local v0, "allInactive":Z
    const/4 v1, 0x1

    .line 271
    .local v1, "allOff":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 272
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$100(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 273
    .local v3, "index":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-le v3, v4, :cond_6

    .line 274
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$100(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 275
    .local v4, "currentState":I
    if-eq p2, v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 276
    .local v6, "stateChanged":Z
    :goto_0
    if-eqz v6, :cond_5

    .line 277
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerService;->access$100(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 278
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 279
    if-ne v8, v3, :cond_1

    move v9, p2

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v9}, Lcom/android/server/display/DisplayManagerService;->access$100(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 280
    .local v9, "displayState":I
    :goto_2
    if-eq v9, v5, :cond_2

    .line 281
    const/4 v1, 0x0

    .line 283
    :cond_2
    invoke-static {v9}, Landroid/view/Display;->isActiveState(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 284
    const/4 v0, 0x0

    .line 286
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 287
    goto :goto_3

    .line 278
    .end local v9    # "displayState":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 291
    .end local v4    # "currentState":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_5
    :goto_3
    goto :goto_4

    .line 292
    .end local v6    # "stateChanged":Z
    :cond_6
    const/4 v4, 0x0

    move v6, v4

    .line 294
    .end local v3    # "index":I
    .restart local v6    # "stateChanged":Z
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    if-ne p2, v5, :cond_7

    .line 298
    :try_start_2
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$200(Lcom/android/server/display/DisplayManagerService;IIFF)V

    .line 301
    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService$1;
    :cond_7
    if-eqz v6, :cond_8

    .line 302
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(ZZ)V

    .line 305
    :cond_8
    if-eq p2, v5, :cond_9

    .line 306
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$200(Lcom/android/server/display/DisplayManagerService;IIFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 308
    :cond_9
    monitor-exit p0

    return-void

    .line 294
    .end local v6    # "stateChanged":Z
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService$1;
    :catchall_0
    move-exception v3

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService$1;
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 267
    .end local v0    # "allInactive":Z
    .end local v1    # "allOff":Z
    .end local p1    # "displayId":I
    .end local p2    # "state":I
    .end local p3    # "brightness":F
    .end local p4    # "sdrBrightness":F
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
