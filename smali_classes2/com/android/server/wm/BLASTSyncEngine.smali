.class Lcom/android/server/wm/BLASTSyncEngine;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;,
        Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BLASTSyncEngine"


# instance fields
.field private final mActiveSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mNextSyncId:I

.field private final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BLASTSyncEngine;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BLASTSyncEngine;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method abort(I)V
    .locals 1
    .param p1, "id"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->access$500(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 174
    return-void
.end method

.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-static {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->access$300(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowContainer;)V

    .line 159
    return-void
.end method

.method onSurfacePlacement()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->access$600(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 178
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method setReady(I)V
    .locals 1
    .param p1, "id"    # I

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)V

    .line 167
    return-void
.end method

.method setReady(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "ready"    # Z

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-static {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->access$400(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 163
    return-void
.end method

.method startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I
    .locals 11
    .param p1, "listener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 150
    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 151
    .local v0, "id":I
    new-instance v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILcom/android/server/wm/BLASTSyncEngine$1;)V

    .line 152
    .local v1, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget-object v3, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v3, :cond_0

    int-to-long v3, v0

    .local v3, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x20d347fe

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v6, v7, v9, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    return v0
.end method
