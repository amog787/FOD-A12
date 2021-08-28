.class Lcom/android/server/wm/Transition;
.super Landroid/os/Binder;
.source "Transition.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$ChangeInfo;,
        Lcom/android/server/wm/Transition$TransitionState;
    }
.end annotation


# static fields
.field private static final STATE_ABORT:I = 0x3

.field private static final STATE_COLLECTING:I = 0x0

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Transition"


# instance fields
.field final mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Lcom/android/server/wm/TransitionController;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mFlags:I

.field final mParticipants:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyCalled:Z

.field private mRemoteTransition:Landroid/window/IRemoteTransition;

.field private mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mState:I

.field private final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field private mSyncId:I

.field private mTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mType:I


# direct methods
.method constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Lcom/android/server/wm/TransitionController;
    .param p4, "syncEngine"    # Lcom/android/server/wm/BLASTSyncEngine;

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 111
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 112
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 119
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 122
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 125
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTargets:Landroid/util/ArraySet;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 128
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mReadyCalled:Z

    .line 132
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 133
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 134
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 135
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 136
    invoke-virtual {p4, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowContainer;

    .line 71
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    return v0
.end method

.method private static addMembersInOrder(Lcom/android/server/wm/WindowContainer;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "root"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p1, "members":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 682
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-static {v1, p1, p2}, Lcom/android/server/wm/Transition;->addMembersInOrder(Lcom/android/server/wm/WindowContainer;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 683
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 687
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rootLeash"    # Landroid/view/SurfaceControl;

    .line 238
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 240
    .local v0, "tmpPos":Landroid/graphics/Point;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 241
    .local v1, "displays":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 242
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 243
    .local v3, "target":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 244
    invoke-static {v3}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v4

    .line 245
    .local v4, "targetLeash":Landroid/view/SurfaceControl;
    invoke-static {v3}, Lcom/android/server/wm/Transition;->getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v5

    .line 247
    .local v5, "origParent":Landroid/view/SurfaceControl;
    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 248
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 249
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 250
    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p1, v4, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 251
    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 252
    invoke-virtual {p1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 253
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v3    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "targetLeash":Landroid/view/SurfaceControl;
    .end local v5    # "origParent":Landroid/view/SurfaceControl;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 259
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 260
    :cond_2
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 258
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 262
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 265
    :cond_4
    return-void
.end method

.method static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 601
    .local p0, "participants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p1, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xb00f028

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v6, "Start calculating TransitionInfo based on participants: %s"

    invoke-static {v3, v4, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 604
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 606
    .local v0, "topTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 608
    .local v3, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v4, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 615
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 620
    .local v7, "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v7, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 621
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v8, :cond_1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x2813544e

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v8, v11, v2

    const-string v12, "  Rejecting as no-op: %s"

    invoke-static {v9, v10, v2, v12, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 622
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    goto :goto_0

    .line 627
    :cond_3
    const/4 v8, 0x0

    .line 628
    .local v8, "topParent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 629
    invoke-static {v6}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 630
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .local v9, "p":Lcom/android/server/wm/WindowContainer;
    :goto_1
    if-eqz v9, :cond_8

    .line 633
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 635
    goto :goto_2

    .line 637
    :cond_5
    invoke-virtual {p0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 638
    move-object v8, v9

    .line 639
    goto :goto_2

    .line 640
    :cond_6
    invoke-static {v9}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 641
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    goto :goto_1

    .line 644
    .end local v9    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_8
    :goto_2
    if-eqz v8, :cond_b

    .line 647
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 648
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 650
    .local v10, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v1

    if-ge v9, v11, :cond_9

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    goto :goto_4

    :cond_9
    move-object v11, v8

    :goto_4
    iput-object v11, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 647
    .end local v10    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 652
    .end local v9    # "i":I
    :cond_a
    goto/16 :goto_0

    .line 655
    :cond_b
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "changeInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    .end local v8    # "topParent":Lcom/android/server/wm/WindowContainer;
    goto/16 :goto_0

    .line 660
    :cond_c
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_5
    if-ltz v5, :cond_e

    .line 661
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v6, :cond_d

    .line 662
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Transition$ChangeInfo;->addChild(Lcom/android/server/wm/WindowContainer;)V

    .line 660
    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 666
    .end local v5    # "i":I
    :cond_e
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x6df17644

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v5, v8, v2

    const-string v9, "  Initial targets: %s"

    invoke-static {v6, v7, v2, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 667
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_f
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x5ea5c1f3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    const-string v8, "  Top targets: %s"

    invoke-static {v6, v7, v2, v8, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 671
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_10
    :goto_6
    invoke-static {v0, v3, p1}, Lcom/android/server/wm/Transition;->tryPromote(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    .line 674
    :cond_11
    return-object v3
.end method

.method static calculateTransitionInfo(IILandroid/util/ArraySet;Landroid/util/ArrayMap;)Landroid/window/TransitionInfo;
    .locals 18
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Landroid/window/TransitionInfo;"
        }
    .end annotation

    .line 717
    .local p2, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p3, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move-object/from16 v0, p2

    new-instance v1, Landroid/window/TransitionInfo;

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v1, v2, v3}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 719
    .local v1, "out":Landroid/window/TransitionInfo;
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 720
    .local v4, "appTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 721
    .local v5, "wallpapers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 722
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-static {v7}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    goto :goto_1

    :cond_0
    move-object v7, v4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 721
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 726
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .line 727
    .local v6, "ancestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    if-ltz v7, :cond_2

    .line 728
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 729
    .local v8, "wc":Lcom/android/server/wm/WindowContainer;
    move-object v6, v8

    .line 732
    .end local v7    # "i":I
    .end local v8    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_2
    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 733
    new-instance v8, Landroid/view/SurfaceControl;

    invoke-direct {v8}, Landroid/view/SurfaceControl;-><init>()V

    invoke-virtual {v1, v8, v7, v7}, Landroid/window/TransitionInfo;->setRootLeash(Landroid/view/SurfaceControl;II)V

    .line 734
    return-object v1

    .line 736
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 740
    :goto_2
    if-eqz v6, :cond_5

    .line 741
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_3
    if-ltz v8, :cond_5

    .line 742
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 743
    .local v9, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v9, v6}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 744
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 745
    goto :goto_2

    .line 741
    .end local v9    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 753
    .end local v8    # "i":I
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v8, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-static {v6, v0, v8}, Lcom/android/server/wm/Transition;->addMembersInOrder(Lcom/android/server/wm/WindowContainer;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 757
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 758
    .local v7, "leashReference":Lcom/android/server/wm/WindowContainer;
    :goto_4
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v6, :cond_6

    .line 759
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    goto :goto_4

    .line 761
    :cond_6
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transition Root: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 761
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 762
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v9

    .line 763
    .local v9, "rootLeash":Landroid/view/SurfaceControl;
    iget-object v10, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceControl$Transaction;

    .line 764
    .local v10, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 765
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 766
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 767
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v9, v11, v12}, Landroid/window/TransitionInfo;->setRootLeash(Landroid/view/SurfaceControl;II)V

    .line 770
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_5
    if-ltz v11, :cond_8

    .line 771
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowContainer;

    .line 773
    .local v12, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v12, v6}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_6

    .line 774
    :cond_7
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .end local v12    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 778
    .end local v11    # "i":I
    :cond_8
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 779
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v11, :cond_c

    .line 780
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowContainer;

    .line 781
    .local v13, "target":Lcom/android/server/wm/WindowContainer;
    move-object/from16 v14, p3

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 782
    .local v15, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    new-instance v0, Landroid/window/TransitionInfo$Change;

    .line 783
    iget-object v2, v13, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v2, :cond_9

    iget-object v2, v13, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_8

    .line 784
    :cond_9
    const/4 v2, 0x0

    :goto_8
    invoke-static {v13}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 786
    .local v0, "change":Landroid/window/TransitionInfo$Change;
    iget-object v2, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_a

    .line 787
    iget-object v2, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 789
    :cond_a
    invoke-virtual {v15, v13}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 790
    iget-object v2, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 791
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 792
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 793
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v16

    move-object/from16 v17, v4

    .end local v4    # "appTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v17, "appTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 792
    invoke-virtual {v0, v2, v3}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 794
    invoke-virtual {v15, v13}, Lcom/android/server/wm/Transition$ChangeInfo;->getChangeFlags(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 795
    iget v2, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 796
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 797
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_b

    .line 798
    new-instance v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 799
    .local v3, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 800
    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 802
    .end local v3    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_b
    invoke-virtual {v1, v0}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 779
    .end local v0    # "change":Landroid/window/TransitionInfo$Change;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "target":Lcom/android/server/wm/WindowContainer;
    .end local v15    # "info":Lcom/android/server/wm/Transition$ChangeInfo;
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, v17

    goto/16 :goto_7

    .line 805
    .end local v12    # "i":I
    .end local v17    # "appTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v4    # "appTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_c
    return-object v1
.end method

.method private static canPromote(Lcom/android/server/wm/WindowContainer;Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .locals 16
    .param p0, "target"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 477
    .local p1, "topTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 478
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 479
    .local v4, "parentChanges":Lcom/android/server/wm/Transition$ChangeInfo;
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v4, :cond_11

    .line 480
    invoke-virtual {v4, v2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_4

    .line 485
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 486
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x796524ed

    check-cast v3, [Ljava/lang/Object;

    const-string v8, "      SKIP: is wallpaper"

    invoke-static {v5, v7, v6, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_2
    return v6

    .line 489
    :cond_3
    const/4 v7, 0x0

    .line 493
    .local v7, "mode":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v5

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_10

    .line 494
    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 495
    .local v9, "sibling":Lcom/android/server/wm/WindowContainer;
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x29ef387a

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v10, v13, v6

    const-string v14, "      check sibling %s"

    invoke-static {v11, v12, v6, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 498
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .local v10, "j":I
    :goto_2
    if-ltz v10, :cond_d

    .line 499
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    invoke-static {v11, v9}, Lcom/android/server/wm/Transition;->getChildDepth(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)I

    move-result v11

    .line 500
    .local v11, "depth":I
    if-gez v11, :cond_5

    .line 498
    .end local v11    # "depth":I
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 501
    .restart local v11    # "depth":I
    :cond_5
    if-nez v11, :cond_b

    .line 502
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v12, v9}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v12

    .line 503
    .local v12, "siblingMode":I
    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v13, :cond_6

    invoke-static {v12}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam0":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v15, 0x19a54060

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v13, v3, v6

    const-string v5, "        sibling is a top target with mode %s"

    invoke-static {v14, v15, v6, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 506
    .end local v13    # "protoLogParam0":Ljava/lang/String;
    :cond_6
    if-nez v7, :cond_8

    .line 507
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x46bc13da

    const/4 v13, 0x0

    move-object v14, v13

    check-cast v14, [Ljava/lang/Object;

    const-string v13, "          no common mode yet, so set it"

    invoke-static {v3, v5, v6, v13, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :cond_7
    move v3, v12

    move v7, v3

    const/4 v10, 0x0

    .end local v7    # "mode":I
    .local v3, "mode":I
    goto :goto_3

    .line 510
    .end local v3    # "mode":I
    .restart local v7    # "mode":I
    :cond_8
    if-eq v7, v12, :cond_a

    .line 511
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_9

    invoke-static {v7}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x5793e434

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v3, v14, v6

    const-string v15, "          SKIP: common mode mismatch. was %s"

    invoke-static {v5, v13, v6, v15, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 514
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    return v6

    .line 510
    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    .line 519
    .end local v12    # "siblingMode":I
    :cond_b
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_c

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x1aa0e7ca

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v6

    const-string v14, "        SKIP: sibling contains top target %s"

    invoke-static {v5, v12, v6, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 522
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_c
    return v6

    .line 526
    .end local v10    # "j":I
    .end local v11    # "depth":I
    :cond_d
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 528
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x2f4ce560

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    const-string v11, "        SKIP: sibling is visible but not part of transition"

    invoke-static {v3, v5, v6, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 530
    :cond_e
    return v6

    .line 526
    :cond_f
    const/4 v10, 0x0

    .line 493
    .end local v9    # "sibling":Lcom/android/server/wm/WindowContainer;
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move-object v3, v10

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 533
    .end local v8    # "i":I
    :cond_10
    const/4 v3, 0x1

    return v3

    .line 481
    .end local v7    # "mode":I
    :cond_11
    :goto_4
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_13

    if-nez v2, :cond_12

    const-string v3, "no parent"

    goto :goto_5

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent can\'t be target "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2c5b2735

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const-string v9, "      SKIP: %s"

    invoke-static {v5, v7, v6, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 483
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_13
    return v6
.end method

.method static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 809
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/Transition;

    return-object v0
.end method

.method private static getChildDepth(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)I
    .locals 3
    .param p0, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p1, "ancestor"    # Lcom/android/server/wm/WindowContainer;

    .line 452
    move-object v0, p0

    .line 453
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    .line 454
    .local v1, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 455
    if-ne v0, p1, :cond_0

    .line 456
    return v1

    .line 458
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private static getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .locals 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 691
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 692
    .local v0, "asDC":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method private static getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 701
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method private handleNonAppWindowsInTransition(III)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "transit"    # I
    .param p3, "flags"    # I

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 400
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 401
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    const/4 v1, 0x7

    if-ne p2, v1, :cond_6

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v1, :cond_6

    .line 406
    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 410
    :goto_0
    invoke-interface {v1, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 412
    .local v1, "anim":Landroid/view/animation/Animation;
    if-eqz v1, :cond_2

    .line 413
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 414
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    .line 413
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 415
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 418
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_2
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    and-int/lit8 v5, p3, 0x8

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    .line 422
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 422
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 425
    :cond_6
    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_7

    .line 426
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardOcclusionChange()I

    .line 428
    :cond_7
    return-void
.end method

.method private static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 465
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 447
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static tryPromote(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 545
    .local p0, "topTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p1, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$ChangeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x52004dce

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    const-string v7, "  --- Start combine pass ---"

    invoke-static {v3, v5, v4, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 548
    .local v5, "targ":Lcom/android/server/wm/WindowContainer;
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x1e5fe76a

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v6, v10, v4

    const-string v11, "    checking %s"

    invoke-static {v8, v9, v4, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 549
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    invoke-static {v5, v0, v2}, Lcom/android/server/wm/Transition;->canPromote(Lcom/android/server/wm/WindowContainer;Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 550
    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 554
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 555
    .local v6, "parentInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v8, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x568ff406

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v8, v11, v4

    const-string v12, "      CAN PROMOTE: promoting to parent %s"

    invoke-static {v9, v10, v4, v12, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 557
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_a

    .line 562
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 563
    .local v9, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 564
    .local v10, "idx":I
    if-ltz v10, :cond_8

    .line 565
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 566
    .local v11, "childInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    invoke-static {v9}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 567
    iput-object v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 568
    invoke-virtual {v6, v9}, Lcom/android/server/wm/Transition$ChangeInfo;->addChild(Lcom/android/server/wm/WindowContainer;)V

    .line 569
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v12, :cond_8

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x1f7aee4c

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v12, v15, v4

    const-string v7, "        keep as target %s"

    invoke-static {v13, v14, v4, v7, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 570
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    goto :goto_2

    .line 572
    :cond_4
    iget-object v7, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    if-eqz v7, :cond_6

    .line 573
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    iget-object v12, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x32fbdccb    # -1.3855624E8f

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v4

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const-string v2, "        merging children in from %s: %s"

    invoke-static {v13, v14, v4, v2, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 576
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_5
    iget-object v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/Transition$ChangeInfo;->addChildren(Landroid/util/ArraySet;)V

    .line 578
    :cond_6
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_7

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0xaddf948

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v2, v14, v4

    const-string v13, "        remove from targets %s"

    invoke-static {v7, v12, v4, v13, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 580
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 583
    .end local v11    # "childInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_8
    :goto_2
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x120545f7

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v4

    const-string v12, "        remove from topTargets %s"

    invoke-static {v7, v11, v4, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 585
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 561
    .end local v9    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v10    # "idx":I
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v2, p2

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 587
    .end local v8    # "i":I
    :cond_a
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 588
    const/4 v2, 0x1

    return v2

    .line 590
    .end local v3    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "targ":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "parentInfo":Lcom/android/server/wm/Transition$ChangeInfo;
    :cond_b
    return v4
.end method


# virtual methods
.method abort()V
    .locals 2

    .line 296
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 297
    :cond_0
    if-nez v0, :cond_1

    .line 300
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->abort(I)V

    .line 303
    return-void

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to abort."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cleanUpOnFailure()V
    .locals 2

    .line 386
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->finishTransition()V

    .line 395
    return-void
.end method

.method collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 8
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 165
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_0

    return-void

    .line 166
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5d73beb3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v7, "Collecting in transition %d: %s"

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .end local v0    # "protoLogParam0":J
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .local v0, "curr":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v2, v0}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    .line 174
    .end local v0    # "curr":Lcom/android/server/wm/WindowContainer;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 177
    .local v0, "info":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_4

    .line 178
    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    move-object v0, v1

    .line 179
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 182
    iget-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-eqz v1, :cond_5

    .line 184
    nop

    .line 185
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 186
    .local v1, "wallpaper":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_5

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 190
    .end local v1    # "wallpaper":Lcom/android/server/wm/WindowContainer;
    :cond_5
    return-void
.end method

.method collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 9
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 202
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_0

    return-void

    .line 203
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x152255b1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v0, v6, v1

    const-string v7, "Existence Changed in transition %d: %s"

    invoke-static {v4, v5, v1, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam0":J
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 207
    return-void
.end method

.method finishTransition()V
    .locals 9

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 273
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 279
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 280
    .local v1, "ar":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1fb6ed11

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    const-string v8, "  Commit activity becoming invisible: %s"

    invoke-static {v5, v6, v3, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 283
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v4

    .line 286
    .local v4, "wt":Lcom/android/server/wm/WallpaperWindowToken;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_3

    .line 287
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2937b08e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    const-string v8, "  Commit wallpaper becoming invisible: %s"

    invoke-static {v6, v7, v3, v8, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 278
    .end local v1    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "wt":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 274
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t finish a non-playing transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRemoteTransition()Landroid/window/IRemoteTransition;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    return-object v0
.end method

.method getSyncId()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return v0
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 9
    .param p1, "syncId"    # I
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 315
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-eq p1, v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Sync ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 321
    .local v2, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 323
    .end local v2    # "container":Lcom/android/server/wm/WindowContainer;
    goto :goto_0

    .line 325
    :cond_2
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-ne v1, v2, :cond_3

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->abort(Lcom/android/server/wm/Transition;)V

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 329
    iput v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 330
    return-void

    .line 333
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 334
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->moveToPlaying(Lcom/android/server/wm/Transition;)V

    .line 336
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    iget v1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Landroid/util/ArraySet;

    .line 342
    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v4, p0, Lcom/android/server/wm/Transition;->mFlags:I

    iget-object v5, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v2, v4, v1, v5}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILandroid/util/ArraySet;Landroid/util/ArrayMap;)Landroid/window/TransitionInfo;

    move-result-object v1

    .line 344
    .local v1, "info":Landroid/window/TransitionInfo;
    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v4, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/wm/Transition;->handleNonAppWindowsInTransition(III)V

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 354
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 355
    .local v5, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_6

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v6, :cond_5

    goto :goto_2

    .line 356
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 353
    .end local v5    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 359
    .end local v2    # "i":I
    :cond_7
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 360
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 361
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 362
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 364
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x427958e9

    const-string v7, "Calling onTransitionReady: %s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v4, v8

    invoke-static {v5, v6, v8, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 366
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v2, p0, v1, p2, v4}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 368
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 372
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_4

    .line 375
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 377
    :goto_4
    iput v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 378
    return-void
.end method

.method setReady()V
    .locals 1

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->setReady(Z)V

    .line 229
    return-void
.end method

.method setReady(Z)V
    .locals 10
    .param p1, "ready"    # Z

    .line 216
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 218
    iput-boolean p1, p0, Lcom/android/server/wm/Transition;->mReadyCalled:Z

    .line 219
    return-void

    .line 221
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_2

    move v0, p1

    .local v0, "protoLogParam0":Z
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v2

    .local v2, "protoLogParam1":J
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x3425bbc3    # -2.8608634E7f

    const/4 v6, 0x7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v1, "Set transition ready=%b %d"

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .end local v0    # "protoLogParam0":Z
    .end local v2    # "protoLogParam1":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)V

    .line 224
    return-void
.end method

.method setRemoteTransition(Landroid/window/IRemoteTransition;)V
    .locals 0
    .param p1, "remoteTransition"    # Landroid/window/IRemoteTransition;

    .line 306
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 307
    return-void
.end method

.method start()V
    .locals 8

    .line 150
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition already started: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Transition"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 154
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3b6c688c

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Starting Transition %d"

    invoke-static {v0, v4, v1, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .end local v2    # "protoLogParam0":J
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mReadyCalled:Z

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->setReady()V

    .line 159
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
