.class Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintValueAnimator"
.end annotation


# instance fields
.field private max:[F

.field private min:[F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1227
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method public static varargs ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .locals 5
    .param p0, "evaluator"    # Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .line 1233
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-direct {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;-><init>()V

    .line 1234
    .local v0, "anim":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1235
    invoke-virtual {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1236
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1239
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, [F

    .line 1240
    .local v1, "m":[F
    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 1241
    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 1242
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1243
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v2

    .line 1244
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 1242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 1237
    .end local v1    # "m":[F
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getMax()[F
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    return-object v0
.end method

.method public getMin()[F
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    return-object v0
.end method

.method public updateMinMaxComponents()V
    .locals 5

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1251
    .local v0, "value":[F
    if-nez v0, :cond_0

    .line 1252
    return-void

    .line 1254
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1255
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1256
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    aget v3, v2, v1

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1258
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
