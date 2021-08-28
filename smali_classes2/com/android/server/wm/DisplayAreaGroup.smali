.class Lcom/android/server/wm/DisplayAreaGroup;
.super Lcom/android/server/wm/RootDisplayArea;
.source "DisplayAreaGroup.java"


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "featureId"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method private isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaGroup;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    return v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaGroup;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 50
    .local v0, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v3, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_3

    move v1, v4

    .line 50
    :cond_3
    return v1
.end method


# virtual methods
.method getOrientation(I)I
    .locals 2
    .param p1, "candidate"    # I

    .line 57
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->getOrientation(I)I

    move-result v0

    .line 65
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method isOrientationDifferentFromDisplay()Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaGroup;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 72
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_0

    .line 74
    return-void

    .line 78
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 80
    .local v1, "overrideBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_1
    move-object v2, v1

    :goto_0
    move-object v1, v2

    .line 89
    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayAreaGroup;->isOrientationDifferentFromDisplay(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 91
    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1

    .line 92
    :cond_2
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_3

    .line 93
    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 96
    :cond_3
    :goto_1
    return-void
.end method
