.class public Lcom/android/systemui/biometrics/UdfpsView;
.super Landroid/widget/FrameLayout;
.source "UdfpsView.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field private mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

.field private mDebugMessage:Ljava/lang/String;

.field private final mDebugTextPaint:Landroid/graphics/Paint;

.field private mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

.field private mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

.field private final mHbmType:I

.field private mIlluminationRequested:Z

.field private final mOnIlluminatedDelayMs:I

.field private mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mSensorRect:Landroid/graphics/RectF;

.field private final mSensorTouchAreaCoefficient:F


# direct methods
.method public static synthetic $r8$lambda$E79-ZFAUCc0wRcWUYo7gxLMKPpo(Lcom/android/systemui/biometrics/UdfpsView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsView;->lambda$doIlluminate$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzdric4kY7Zkp8LXS9PbLbNASyA(Lcom/android/systemui/biometrics/UdfpsView;Landroid/view/Surface;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsView;->doIlluminate(Landroid/view/Surface;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->UdfpsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->UdfpsView_sensorTouchAreaCoefficient:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorTouchAreaCoefficient:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 92
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, -0xffff01

    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x42000000    # 32.0f

    .line 94
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mOnIlluminatedDelayMs:I

    .line 99
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmType:I

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "com.android.systemui.biometrics.UdfpsSurfaceView.hbmType"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmType:I

    :goto_1
    const/4 v1, 0x0
    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmType:I
    return-void

    .line 80
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "UdfpsView must contain sensorTouchAreaCoefficient"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    throw p0
.end method

.method private doIlluminate(Landroid/view/Surface;Ljava/lang/Runnable;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "UdfpsView"

    const-string v1, "doIlluminate | surface must be non-null for GHBM"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmType:I

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsView;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/systemui/biometrics/UdfpsHbmProvider;->enableHbm(ILandroid/view/Surface;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doIlluminate$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->drawIlluminationDot(Landroid/graphics/RectF;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 249
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mOnIlluminatedDelayMs:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p0, "UdfpsView"

    const-string p1, "doIlluminate | onIlluminatedRunnable is null"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    return-object p0
.end method

.method isIlluminationRequested()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    return p0
.end method

.method isWithinSensorArea(FF)Z
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getTouchTranslation()Landroid/graphics/PointF;

    move-result-object v0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    .line 203
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 206
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    div-float/2addr v5, v4

    .line 208
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorTouchAreaCoefficient:F

    mul-float v4, v3, v0

    sub-float v4, v1, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    mul-float p1, v5, v0

    sub-float p1, v2, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    cmpg-float p1, p2, v2

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string p0, "UdfpsView"

    const-string v0, "onAttachedToWindow"

    .line 173
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string p0, "UdfpsView"

    const-string v0, "onDetachedFromWindow"

    .line 179
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/high16 v2, 0x43200000    # 160.0f

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmType:I

    if-nez v0, :cond_0

    .line 117
    sget v0, Lcom/android/systemui/R$id;->hbm_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 140
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingX()I

    move-result p1

    .line 142
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez p3, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingY()I

    move-result p2

    .line 144
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float p5, p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    int-to-float p1, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p1, :cond_2

    .line 151
    new-instance p2, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorRect:Landroid/graphics/RectF;

    invoke-direct {p2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method onTouchOutsideView()V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onTouchOutsideView()V

    :cond_0
    return-void
.end method

.method setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    return-void
.end method

.method setDebugMessage(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mDebugMessage:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public setHbmProvider(Lcom/android/systemui/biometrics/UdfpsHbmProvider;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    return-void
.end method

.method setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method

.method public startIllumination(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    .line 225
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onIlluminationStarting()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    if-eqz v0, :cond_1

    .line 230
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->setGhbmIlluminationListener(Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 232
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->startGhbmIllumination(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/biometrics/UdfpsView;->doIlluminate(Landroid/view/Surface;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public stopIllumination()V
    .locals 3

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mIlluminationRequested:Z

    .line 259
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mAnimationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onIlluminationStopped()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsSurfaceView;->setGhbmIlluminationListener(Lcom/android/systemui/biometrics/UdfpsSurfaceView$GhbmIlluminationListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mGhbmView:Lcom/android/systemui/biometrics/UdfpsSurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView;->mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    invoke-interface {p0, v1}, Lcom/android/systemui/biometrics/UdfpsHbmProvider;->disableHbm(Ljava/lang/Runnable;)V

    return-void
.end method
