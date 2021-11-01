.class public Lcom/android/systemui/biometrics/AuthContainerView;
.super Landroid/widget/LinearLayout;
.source "AuthContainerView.java"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthDialog;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;,
        Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;,
        Lcom/android/systemui/biometrics/AuthContainerView$Injector;,
        Lcom/android/systemui/biometrics/AuthContainerView$Builder;,
        Lcom/android/systemui/biometrics/AuthContainerView$Config;
    }
.end annotation


# instance fields
.field final mBackgroundView:Landroid/widget/ImageView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBiometricScrollView:Landroid/widget/ScrollView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

.field mContainerState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCredentialAttestation:[B

.field private final mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

.field mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mEffectiveUserId:I

.field private final mFaceProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mFpProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field final mFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private final mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field private final mPanelView:Landroid/view/View;

.field mPendingCallbackReason:Ljava/lang/Integer;

.field private final mTranslationY:F

.field final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$5DFP01E41Qpmt63psMZyXBeWF9w(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$onAttachedToWindowInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oMF-WSV5YVcuos3s6avRqh8LAbU(Lcom/android/systemui/biometrics/AuthContainerView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ozJ1uOI87fzZkGt7LC3iItwQ_mw(Lcom/android/systemui/biometrics/AuthContainerView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ySF5tx7ooDt4ZBVBk1Bqeqn34DI(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lcom/android/systemui/biometrics/AuthContainerView$Injector;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/AuthContainerView$Config;",
            "Lcom/android/systemui/biometrics/AuthContainerView$Injector;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 275
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 276
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    .line 277
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFpProps:Ljava/util/List;

    .line 278
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFaceProps:Ljava/util/List;

    .line 280
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    .line 281
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    .line 283
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    .line 284
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    .line 285
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 287
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    .line 288
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 289
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 290
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 291
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    .line 293
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 294
    invoke-virtual {p2, v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->inflateContainerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 296
    invoke-virtual {p2, v2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getPanelView(Landroid/widget/FrameLayout;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    .line 297
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getPanelController(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/biometrics/AuthPanelController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 300
    iget-object p2, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    array-length p2, p2

    .line 301
    iget-object v2, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v2}, Lcom/android/systemui/biometrics/Utils;->isBiometricAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_c

    const-string v2, "BiometricPrompt/AuthContainerView"

    const/4 v5, 0x0

    if-ne p2, v4, :cond_5

    .line 303
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    aget p1, p1, v0

    .line 304
    invoke-static {p3, p1}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 306
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 307
    iget p4, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object p3, v5

    .line 313
    :goto_0
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 314
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_udfps_view:I

    .line 315
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;

    .line 316
    invoke-virtual {p1, p3}, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;->setSensorProps(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 317
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto/16 :goto_3

    .line 319
    :cond_2
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_fingerprint_view:I

    .line 320
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto/16 :goto_3

    .line 322
    :cond_3
    invoke-static {p4, p1}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 323
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_face_view:I

    .line 324
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto/16 :goto_3

    .line 327
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown sensorId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 329
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 330
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    :cond_5
    if-ne p2, v3, :cond_b

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->findFaceAndFingerprintSensors()[I

    move-result-object p1

    .line 335
    aget p2, p1, v0

    .line 336
    aget p1, p1, v4

    const/4 p4, -0x1

    if-eq p1, p4, :cond_a

    if-ne p2, p4, :cond_6

    goto :goto_2

    .line 347
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 348
    iget p4, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p4, p1, :cond_7

    goto :goto_1

    :cond_8
    move-object p3, v5

    :goto_1
    if-eqz p3, :cond_9

    .line 355
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_face_to_fingerprint_view:I

    .line 356
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;

    .line 358
    invoke-virtual {p1, p3}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->setFingerprintSensorProps(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 359
    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->setModalityListener(Lcom/android/systemui/biometrics/ModalityListener;)V

    .line 365
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto :goto_3

    .line 367
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fingerprint props not found for sensor ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 369
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 370
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    :cond_a
    :goto_2
    const-string p1, "Missing fingerprint or face for dual-sensor config"

    .line 339
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 341
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 342
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    .line 374
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported sensor array, length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 376
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 377
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    .line 382
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getBiometricScrollView(Landroid/widget/FrameLayout;)Landroid/widget/ScrollView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 383
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getBackgroundView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 385
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p2, :cond_d

    .line 389
    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean p3, p3, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    invoke-virtual {p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricView;->setRequireConfirmation(Z)V

    .line 390
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricView;->setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;)V

    .line 391
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p3, p3, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricView;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V

    .line 392
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-virtual {p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricView;->setCallback(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V

    .line 393
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setBackgroundView(Landroid/view/View;)V

    .line 394
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget p2, p2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setUserId(I)V

    .line 395
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setEffectiveUserId(I)V

    .line 399
    :cond_d
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 410
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 411
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 412
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthContainerView;)Lcom/android/systemui/biometrics/AuthContainerView$Injector;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthContainerView;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthContainerView;ZZ)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/AuthContainerView;Z)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->maybeUpdatePositionForUdfps(Z)Z

    move-result p0

    return p0
.end method

.method private addBiometricView()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addCredentialView(ZZ)V
    .locals 6

    .line 436
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getCredentialType(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown credential type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_1
    sget v2, Lcom/android/systemui/R$layout;->auth_credential_pattern_view:I

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthCredentialView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    goto :goto_1

    .line 448
    :cond_2
    :goto_0
    sget v2, Lcom/android/systemui/R$layout;->auth_credential_password_view:I

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthCredentialView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->setContainerView(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setUserId(I)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/biometrics/AuthCredentialView;->setOperationId(J)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setEffectiveUserId(I)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setCredentialType(I)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setCallback(Lcom/android/systemui/biometrics/AuthCredentialView$Callback;)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;Z)V

    .line 469
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setShouldAnimateContents(Z)V

    .line 470
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private animateAway(ZI)V
    .locals 3

    .line 695
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "BiometricPrompt/AuthContainerView"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo p1, "startDismiss(): waiting for onDialogAnimatedIn"

    .line 696
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 697
    iput p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    return-void

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 702
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already dismissing, sendReason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 705
    :cond_1
    iput v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    if-eqz p1, :cond_2

    .line 708
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 710
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 713
    :goto_0
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 718
    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private findFaceAndFingerprintSensors()[I
    .locals 9

    .line 805
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_3

    aget v7, v0, v4

    .line 806
    iget-object v8, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFpProps:Ljava/util/List;

    invoke-static {v8, v7}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v7

    goto :goto_1

    .line 808
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFaceProps:Ljava/util/List;

    invoke-static {v8, v7}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    :cond_1
    :goto_1
    if-eq v5, v3, :cond_2

    if-eq v6, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p0, 0x2

    new-array p0, p0, [I

    aput v6, p0, v2

    const/4 v0, 0x1

    aput v5, p0, v0

    return-object p0
.end method

.method static getLayoutParams(Landroid/os/IBinder;Ljava/lang/CharSequence;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 786
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1002000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 792
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 793
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "BiometricPrompt"

    .line 794
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 795
    iput-object p1, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 796
    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method private synthetic lambda$animateAway$2()V
    .locals 1

    const/4 v0, 0x4

    .line 714
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 715
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached()V

    return-void
.end method

.method private synthetic lambda$animateAway$3(Ljava/lang/Runnable;)V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 720
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 721
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 722
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 724
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 725
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 726
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 727
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 728
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 729
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 730
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 731
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 732
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 733
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 734
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 735
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 736
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 737
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 738
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 740
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 742
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 743
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 745
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 403
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendEarlyUserCanceled()V

    .line 405
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    :cond_1
    return p2
.end method

.method private synthetic lambda$onAttachedToWindowInternal$1()V
    .locals 5

    .line 516
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 518
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 519
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 521
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 526
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 539
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 540
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 541
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 542
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 543
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private maybeUpdatePositionForUdfps(Z)Z
    .locals 5

    .line 564
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/AuthContainerView;->shouldUpdatePositionForUdfps(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 572
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v1, 0x51

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported display rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BiometricPrompt/AuthContainerView"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    .line 593
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    const/16 v0, 0x13

    .line 586
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    const/16 v0, 0x15

    .line 581
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    goto :goto_0

    .line 575
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    .line 576
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    :goto_0
    if-eqz p1, :cond_5

    .line 598
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 599
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_5
    return v2
.end method

.method private removeWindowIfAttached()V
    .locals 2

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendPendingCallbackIfNotNull()V

    .line 760
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 763
    :cond_0
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 764
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private sendPendingCallbackIfNotNull()V
    .locals 3

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onDismissed(I[B)V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private setScrollViewGravity(I)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 607
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 608
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 609
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static shouldUpdatePositionForUdfps(Landroid/view/View;)Z
    .locals 4

    .line 549
    instance-of v0, p0, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 553
    :cond_0
    instance-of v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 554
    check-cast p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->getActiveSensorType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->isFingerprintUdfps()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method animateAway(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 691
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    return-void
.end method

.method public animateToCredentialUI()V
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    return-void
.end method

.method public dismissFromSystemServer()V
    .locals 1

    const/4 v0, 0x0

    .line 642
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    return-void
.end method

.method public dismissWithoutCallback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 634
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached()V

    :goto_0
    return-void
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isAllowDeviceCredentials()Z
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 486
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onAttachedToWindowInternal()V

    return-void
.end method

.method onAttachedToWindowInternal()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isBiometricAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->addBiometricView()V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    .line 503
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->maybeUpdatePositionForUdfps(Z)Z

    .line 505
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 506
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    goto :goto_1

    .line 508
    :cond_1
    iput v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 511
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setY(F)V

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 515
    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 499
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 500
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAuthenticationFailed(ILjava/lang/String;)V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationSucceeded()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 614
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method onDialogAnimatedIn()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 769
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "BiometricPrompt/AuthContainerView"

    const-string v1, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    .line 770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 774
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 775
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onDialogAnimatedIn()V

    .line 777
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onDialogAnimatedIn()V

    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 662
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onHelp(ILjava/lang/String;)V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(ILjava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 475
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 476
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/biometrics/AuthPanelController;->setContainerDimensions(II)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 481
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->maybeUpdatePositionForUdfps(Z)Z

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 4

    .line 667
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "container_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "biometric_showing"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "credential_showing"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p0, :cond_2

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onSaveState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x1

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    return-void
.end method

.method sendEarlyUserCanceled()V
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onSystemEvent(I)V

    return-void
.end method

.method public show(Landroid/view/WindowManager;Landroid/os/Bundle;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->restoreState(Landroid/os/Bundle;)V

    .line 628
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->getLayoutParams(Landroid/os/IBinder;Ljava/lang/CharSequence;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
