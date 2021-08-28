.class public Lcom/android/server/wm/DisplayArea;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayArea$Type;,
        Lcom/android/server/wm/DisplayArea$Dimmable;,
        Lcom/android/server/wm/DisplayArea$Tokens;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mFeatureId:I

.field protected mIgnoreOrientationRequest:Z

.field private final mName:Ljava/lang/String;

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field private final mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field protected final mType:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;

    .line 85
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "featureId"    # I

    .line 89
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 75
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 91
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayArea;->mOrientation:I

    .line 92
    iput-object p2, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 93
    iput-object p3, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 94
    iput p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 95
    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 96
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 98
    return-void
.end method

.method private findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/DisplayArea;

    .line 233
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    .line 234
    .local v0, "childType":Lcom/android/server/wm/DisplayArea$Type;
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 236
    return v1

    .line 234
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/DisplayArea;

    .line 243
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    .line 244
    .local v0, "childType":Lcom/android/server/wm/DisplayArea$Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 246
    return v1

    .line 244
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I
    .locals 3
    .param p1, "requestPosition"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayArea;

    .line 218
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 225
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v0

    .line 227
    .local v0, "maxPosition":I
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v1

    .line 229
    .local v1, "minPosition":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 219
    .end local v0    # "maxPosition":I
    .end local v1    # "minPosition":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 320
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    return-object p0
.end method

.method asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 1

    .line 325
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 287
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 288
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIgnoreOrientationRequest=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->hasRequestedOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    :cond_1
    return-void
.end method

.method dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 297
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "doublePrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    .line 300
    .local v2, "childArea":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    if-nez v2, :cond_0

    .line 301
    goto :goto_1

    .line 303
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 309
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 298
    .end local v2    # "childArea":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 275
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 276
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v2

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 280
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 281
    const-wide v2, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 283
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 260
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayArea;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 331
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .locals 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskDisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_0

    .line 360
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 364
    .local v0, "childCount":I
    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 365
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 366
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 368
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 371
    :cond_2
    if-eqz p2, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v1, v3

    .line 372
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_0

    .line 373
    :cond_4
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z
    .locals 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 339
    return v2

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 343
    .local v0, "childCount":I
    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 344
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 345
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 347
    .local v3, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    .line 348
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    return v5

    .line 351
    :cond_2
    if-eqz p2, :cond_3

    const/4 v5, -0x1

    :cond_3
    add-int/2addr v1, v5

    .line 352
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_0

    .line 353
    :cond_4
    return v2
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 536
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    return-object p0
.end method

.method getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .locals 4

    .line 498
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Landroid/window/DisplayAreaInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/window/WindowContainerToken;II)V

    .line 500
    .local v0, "info":Landroid/window/DisplayAreaInfo;
    iget-object v1, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 501
    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getIgnoreOrientationRequest()Z
    .locals 1

    .line 207
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    return v0
.end method

.method getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/DisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/DisplayArea;TR;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "item":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/TaskDisplayArea;TR;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 412
    return-object v2

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 416
    .local v0, "childCount":I
    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 417
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 418
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 420
    .local v3, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 421
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    .line 422
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v4

    .line 423
    .local v4, "result":Ljava/lang/Object;, "TR;"
    if-eqz v4, :cond_2

    .line 424
    return-object v4

    .line 427
    .end local v4    # "result":Ljava/lang/Object;, "TR;"
    :cond_2
    if-eqz p2, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v1, v4

    .line 428
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_0

    .line 429
    :cond_4
    return-object v2
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 265
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation(I)I
    .locals 1
    .param p1, "candidate"    # I

    .line 142
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, -0x2

    return v0

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 315
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const-wide v0, 0x10b00000004L

    return-wide v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 509
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->getBounds(Landroid/graphics/Rect;)V

    .line 511
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 517
    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 1

    .line 152
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOrganized()Z
    .locals 1

    .line 493
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTaskDisplayArea()Z
    .locals 1

    .line 525
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method needsZBoost()Z
    .locals 1

    .line 255
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 102
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayArea$Type;->checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 107
    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 114
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 115
    .local v1, "top":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 116
    .local v2, "bottom":Lcom/android/server/wm/WindowContainer;
    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 117
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayArea$Type;->checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 113
    .end local v1    # "top":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "bottom":Lcom/android/server/wm/WindowContainer;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 466
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 467
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 472
    :cond_0
    return-void
.end method

.method onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p1, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 159
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-nez v0, :cond_0

    .line 160
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 68
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "includingParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 127
    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I

    move-result v0

    .line 131
    .local v0, "targetPosition":I
    const/4 v1, 0x0

    invoke-super {p0, v0, p2, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 134
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_1

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_2

    .line 136
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 138
    :cond_2
    return-void
.end method

.method public providesMaxBounds()Z
    .locals 1

    .line 521
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .param p3, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/wm/TaskDisplayArea;TR;TR;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_0

    .line 381
    return-object p2

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 385
    .local v0, "childCount":I
    if-eqz p3, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 386
    .local v1, "i":I
    :goto_0
    move-object v2, p2

    .line 387
    .local v2, "result":Ljava/lang/Object;, "TR;"
    :goto_1
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    .line 388
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 390
    .local v3, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 391
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    .line 392
    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 394
    :cond_2
    if-eqz p3, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    add-int/2addr v1, v4

    .line 395
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_1

    .line 396
    :cond_4
    return-object v2
.end method

.method removeImmediately()V
    .locals 1

    .line 530
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 531
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 532
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 476
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 478
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 479
    .local v1, "overrideBounds":Landroid/graphics/Rect;
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 480
    .local v2, "overrideAppBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 483
    .local v3, "parentAppBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 484
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 485
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 486
    .local v4, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 487
    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 489
    .end local v4    # "appBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method sendDisplayAreaAppeared()V
    .locals 2

    .line 454
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 456
    return-void
.end method

.method sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 459
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    if-nez p1, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 462
    return-void
.end method

.method setIgnoreOrientationRequest(Z)Z
    .locals 4
    .param p1, "ignoreOrientationRequest"    # Z

    .line 170
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 171
    return v1

    .line 173
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_1

    .line 177
    return v1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 184
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 188
    :cond_2
    if-nez p1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    return v0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    .line 193
    .local v0, "lastOrientation":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 194
    .local v2, "lastOrientationSource":Lcom/android/server/wm/WindowContainer;
    const/4 v3, -0x2

    if-eq v0, v3, :cond_7

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    goto :goto_1

    .line 199
    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 203
    :cond_5
    return v1

    .line 201
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v1

    return v1

    .line 197
    :cond_7
    :goto_1
    return v1
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 433
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 434
    return-void
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .locals 2
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "skipDisplayAreaAppeared"    # Z

    .line 437
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-ne v0, p1, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 446
    .local v0, "lastOrganizer":Landroid/window/IDisplayAreaOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V

    .line 448
    if-nez p2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaAppeared()V

    .line 451
    :cond_1
    return-void

    .line 439
    .end local v0    # "lastOrganizer":Landroid/window/IDisplayAreaOrganizer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t organize or trigger events for unavailable or untrusted display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
