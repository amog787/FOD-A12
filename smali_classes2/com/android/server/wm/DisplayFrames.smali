.class public Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "DisplayFrames.java"


# instance fields
.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayWidth:I

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRotation:I

.field public final mUnrestricted:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "insetsState"    # Landroid/view/InsetsState;
    .param p3, "info"    # Landroid/view/DisplayInfo;
    .param p4, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;
    .param p5, "roundedCorners"    # Landroid/view/RoundedCorners;
    .param p6, "indicatorBounds"    # Landroid/view/PrivacyIndicatorBounds;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 65
    iput p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 67
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayFrames w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 132
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 133
    .local v0, "token":J
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 134
    return-void
.end method

.method public onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z
    .locals 16
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;
    .param p3, "roundedCorners"    # Landroid/view/RoundedCorners;
    .param p4, "indicatorBounds"    # Landroid/view/PrivacyIndicatorBounds;

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v4, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v4, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 83
    iget-object v4, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 84
    .local v4, "state":Landroid/view/InsetsState;
    iget-object v5, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 85
    .local v5, "safe":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    .line 86
    .local v6, "cutout":Landroid/view/DisplayCutout;
    iget v7, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    iget v7, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v8, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v7, v8, :cond_0

    .line 87
    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-virtual {v4}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {v4}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    return v9

    .line 92
    :cond_0
    iget v7, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v7, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 93
    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v7, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 94
    iget-object v8, v0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 95
    .local v8, "unrestricted":Landroid/graphics/Rect;
    iget v10, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v8, v9, v9, v10, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    const/high16 v7, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual {v5, v7, v7, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    invoke-virtual {v4, v8}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {v4, v6}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    .line 99
    invoke-virtual {v4, v2}, Landroid/view/InsetsState;->setRoundedCorners(Landroid/view/RoundedCorners;)V

    .line 100
    invoke-virtual {v4, v3}, Landroid/view/InsetsState;->setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V

    .line 101
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v7

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    if-nez v7, :cond_5

    .line 102
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v7

    if-lez v7, :cond_1

    .line 103
    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v13

    add-int/2addr v7, v13

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 105
    :cond_1
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v7

    if-lez v7, :cond_2

    .line 106
    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v13

    add-int/2addr v7, v13

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 108
    :cond_2
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v7

    if-lez v7, :cond_3

    .line 109
    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v13

    sub-int/2addr v7, v13

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 111
    :cond_3
    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v7

    if-lez v7, :cond_4

    .line 112
    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v13

    sub-int/2addr v7, v13

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 114
    :cond_4
    invoke-virtual {v4, v12}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->left:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 116
    invoke-virtual {v4, v11}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    iget v11, v8, Landroid/graphics/Rect;->left:I

    iget v12, v8, Landroid/graphics/Rect;->top:I

    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 118
    invoke-virtual {v4, v10}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v8, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 120
    invoke-virtual {v4, v9}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/InsetsSource;->setFrame(IIII)V

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {v4, v12}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 124
    invoke-virtual {v4, v11}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 125
    invoke-virtual {v4, v10}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 126
    invoke-virtual {v4, v9}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 128
    :goto_0
    const/4 v7, 0x1

    return v7
.end method
