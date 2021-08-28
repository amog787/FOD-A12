.class interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "InsetsControlTarget.java"


# direct methods
.method public static asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 76
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canShowTransient()Z
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedVisibility(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 46
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    return v0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideInsets(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 65
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .locals 0

    .line 33
    return-void
.end method

.method public showInsets(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 56
    return-void
.end method
