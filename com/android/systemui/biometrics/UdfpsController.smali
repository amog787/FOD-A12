.class public Lcom/android/systemui/biometrics/UdfpsController;
.super Ljava/lang/Object;
.source "UdfpsController.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/biometrics/UdfpsHbmProvider;

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;,
        Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;
    }
.end annotation


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivePointerId:I

.field private mAodInterruptRunnable:Ljava/lang/Runnable;

.field private mAttemptedToDismissKeyguard:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelAodTimeoutAction:Ljava/lang/Runnable;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContext:Landroid/content/Context;

.field private final mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoodCaptureReceived:Z

.field private final mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAodInterruptActive:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnFingerDown:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mOnHoverListener:Landroid/view/View$OnHoverListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field final mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenOn:Z

.field final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mTouchLogTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mView:Lcom/android/systemui/biometrics/UdfpsView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$0AXkyi8mXuaGbMdTDIPYNaTd4ao(Lcom/android/systemui/biometrics/UdfpsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$87RtbLWSYXi0PZ14GfkKs_SbhlE(Lcom/android/systemui/biometrics/UdfpsController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SYo1So9EjMPvSqfweYaB2JhTAp0(Lcom/android/systemui/biometrics/UdfpsController;IIFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$onAodInterrupt$4(IIFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$U5oNTGO6y9Lck6qs0JIz2JuebDE(Lcom/android/systemui/biometrics/UdfpsController;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$3()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UUpOzsDvURtkKeH0EyQpEo-lg3c(Lcom/android/systemui/biometrics/UdfpsController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zr7gLvj-3y7jXN2vEL9zkfbh12U(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$onFingerDown$5()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 162
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 164
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 165
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/Execution;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/ScreenLifecycle;Landroid/os/Vibrator;Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Landroid/view/LayoutInflater;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Landroid/os/Vibrator;",
            "Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmProvider;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Landroid/hardware/display/DisplayManager;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 137
    iput v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 171
    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 314
    new-instance v3, Lcom/android/systemui/biometrics/UdfpsController$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/UdfpsController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 343
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 347
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 529
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    move-object v4, p2

    .line 530
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    .line 532
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v4, p18

    .line 533
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Landroid/os/Vibrator;

    move-object v4, p3

    .line 534
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    .line 537
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object v5, p5

    .line 538
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v5, p7

    .line 539
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v5, p8

    .line 540
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v5, p6

    .line 541
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v5, p21

    .line 542
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v5, p9

    .line 543
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v5, p10

    .line 544
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v5, p11

    .line 545
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v5, p12

    .line 546
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v5, p13

    .line 547
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v5, p14

    .line 548
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v5, p15

    .line 549
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v5, p16

    .line 550
    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v5, 0x0

    move-object/from16 v6, p20

    .line 551
    invoke-virtual {v6, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    move-object/from16 v5, p17

    .line 552
    invoke-virtual {v5, v2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 553
    invoke-virtual/range {p17 .. p17}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    .line 554
    new-instance v2, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    new-instance v7, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    move-object/from16 v8, p23

    move-object/from16 v9, p24

    invoke-direct {v2, p1, v7, v8, v9}, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    move-object/from16 v2, p22

    .line 562
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v2, p25

    .line 563
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->findFirstUdfps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 567
    :goto_1
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 569
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7ea

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getCoreLayoutParamFlags()I

    move-result v7

    const/4 v8, -0x3

    invoke-direct {v2, v5, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "UdfpsController"

    .line 573
    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v5, 0x33

    .line 575
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x3

    .line 576
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 v5, 0x20000000

    .line 578
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 580
    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {v4, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 582
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 583
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v1, p19

    .line 586
    invoke-virtual {v1, p0}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->setUdfpsController(Lcom/android/systemui/biometrics/UdfpsController;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/biometrics/UdfpsController;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsController;)Ljava/lang/Runnable;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/biometrics/UdfpsController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/biometrics/UdfpsController;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mGoodCaptureReceived:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private computeLayoutParams(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingX()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingY()I

    move-result v0

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getCoreLayoutParamFlags()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_2

    .line 659
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->listenForTouchesOutsideView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 660
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 665
    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    mul-int/lit8 v3, v5, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 666
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v5, v3

    .line 667
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 669
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 671
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 674
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 687
    :cond_3
    instance-of p1, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 688
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 691
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr v2, v4

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 693
    iget v1, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 676
    :cond_5
    instance-of p1, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 677
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 680
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 682
    iget v1, v2, Landroid/graphics/Point;->y:I

    iget v2, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 702
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p1, " "

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static computePointerSpeed(Landroid/view/VelocityTracker;I)F
    .locals 4

    .line 309
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 310
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 311
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private findFirstUdfps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 2

    .line 614
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 615
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCoreLayoutParamFlags()I
    .locals 0

    const p0, 0x1000128

    return p0
.end method

.method private hideUdfpsOverlay()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const-string v1, "UdfpsController"

    if-eqz v0, :cond_0

    const-string v0, "hideUdfpsOverlay | removing window"

    .line 816
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 819
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 820
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 821
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsView;->setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 825
    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    goto :goto_0

    :cond_0
    const-string v0, "hideUdfpsOverlay | the overlay is already hidden"

    .line 827
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;->disable()V

    return-void
.end method

.method private inflateUdfpsAnimation(I)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation for reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UdfpsController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 797
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_fpm_other_view:I

    .line 798
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;

    .line 799
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 800
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsFpmOtherViewController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/systemui/biometrics/UdfpsFpmOtherViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsFpmOtherView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0

    .line 770
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_keyguard_view:I

    .line 771
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    .line 772
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 773
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v7, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v8, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v9, p0, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v0, p1

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/biometrics/UdfpsController;)V

    return-object p1

    .line 788
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_bp_view:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsBpView;

    .line 789
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 790
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsBpViewController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/systemui/biometrics/UdfpsBpViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsBpView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0

    .line 759
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_enroll_view:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    .line 761
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 762
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    return-object p1
.end method

.method private isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 360
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsView;->isWithinSensorArea(FF)Z

    move-result p0

    return p0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p1

    if-nez p1, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getSensorLocation()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p4, 0x1

    :cond_2
    :goto_0
    return p4
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 341
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 345
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateTouchListener()V

    return-void
.end method

.method private synthetic lambda$new$3()Lkotlin/Unit;
    .locals 0

    .line 557
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onOrientationChanged()V

    .line 558
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$onAodInterrupt$4(IIFF)V
    .locals 4

    const/4 v0, 0x1

    .line 845
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    .line 850
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    .line 853
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    return-void
.end method

.method private synthetic lambda$onFingerDown$5()V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->onUiReady(I)V

    const-string p0, "UdfpsController.e2e.startIllumination"

    const/4 v0, 0x0

    .line 914
    invoke-static {p0, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method private onFingerDown(IIFF)V
    .locals 9

    .line 890
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    .line 891
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v0, :cond_0

    const-string p0, "UdfpsController"

    const-string p1, "Null view in onFingerDown"

    .line 892
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 896
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 897
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setUserHasDeviceEntryIntent(Z)V

    .line 901
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Z)V

    .line 908
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 909
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(IIIFF)V

    const-string p1, "UdfpsController.e2e.onPointerDown"

    .line 910
    invoke-static {p1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    const-string p1, "UdfpsController.e2e.startIllumination"

    .line 911
    invoke-static {p1, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 912
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsView;->startIllumination(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFingerUp()V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v0, -0x1

    .line 920
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v0, 0x0

    .line 921
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mGoodCaptureReceived:Z

    .line 922
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v1, :cond_0

    const-string p0, "UdfpsController"

    const-string v0, "Null view in onFingerUp"

    .line 923
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 926
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-eqz v1, :cond_1

    .line 927
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(I)V

    .line 929
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 930
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->stopIllumination()V

    :cond_2
    return-void
.end method

.method private onOrientationChanged()V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    .line 714
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 11

    .line 386
    check-cast p1, Lcom/android/systemui/biometrics/UdfpsView;

    .line 387
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested()Z

    move-result v0

    .line 389
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "UdfpsController"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_c

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_c

    if-eq v1, v6, :cond_0

    const/4 v9, 0x7

    if-eq v1, v9, :cond_1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_e

    const/16 p1, 0xa

    if-eq v1, p1, :cond_c

    goto/16 :goto_7

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->onTouchOutsideView()V

    return v4

    :cond_1
    const-string v1, "UdfpsController.onTouch.ACTION_MOVE"

    .line 436
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 437
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    if-ne v1, v2, :cond_2

    .line 438
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 440
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 442
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-direct {p0, p1, v2, v9, p3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    move-result p1

    if-nez p3, :cond_3

    if-eqz p1, :cond_5

    .line 445
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p1, "onTouch | dismiss keyguard ACTION_MOVE"

    .line 446
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez p1, :cond_4

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    .line 450
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 451
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    goto/16 :goto_7

    :cond_5
    if-eqz p1, :cond_a

    .line 455
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_6

    .line 458
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 460
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 462
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 p3, 0x3e8

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 464
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    invoke-static {p1, p3}, Lcom/android/systemui/biometrics/UdfpsController;->computePointerSpeed(Landroid/view/VelocityTracker;I)F

    move-result p1

    .line 465
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result p3

    .line 466
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v1

    const v2, 0x443b8000    # 750.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_7

    move v2, v4

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 470
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v7

    const-string p1, "minor: %.1f, major: %.1f, v: %.1f, exceedsVelocityThreshold: %b"

    .line 468
    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v9, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    sub-long/2addr v6, v9

    if-nez v0, :cond_8

    .line 472
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mGoodCaptureReceived:Z

    if-nez v0, :cond_8

    if-nez v2, :cond_8

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    .line 476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTouch | finger down: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    .line 478
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v8, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_2

    :cond_8
    const-wide/16 p2, 0x32

    cmp-long p2, v6, p2

    if-ltz p2, :cond_9

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTouch | finger move: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    :cond_9
    move v4, v5

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_a
    const-string p1, "onTouch | finger outside"

    .line 486
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 490
    :cond_b
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    :cond_c
    const-string p1, "UdfpsController.onTouch.ACTION_UP"

    .line 496
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 497
    iput v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 498
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_d

    .line 499
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 500
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_d
    const-string p1, "onTouch | finger up"

    .line 502
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iput-boolean v5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 505
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 p1, 0xd

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 506
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    :cond_e
    const-string v0, "UdfpsController.onTouch.ACTION_DOWN"

    .line 395
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    .line 399
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 403
    :cond_f
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 407
    :goto_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string v0, "UdfpsController.e2e.onPointerDown"

    .line 409
    invoke-static {v0, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    const-string v0, "onTouch | action down"

    .line 410
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    if-ne v0, v2, :cond_10

    .line 416
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    goto :goto_5

    .line 417
    :cond_10
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 418
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 420
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    .line 419
    invoke-direct {p0, v1, v2, v6, p2}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    move p2, v4

    goto :goto_6

    :cond_11
    move p2, v5

    :goto_6
    if-nez p1, :cond_12

    if-eqz p3, :cond_14

    .line 423
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "onTouch | dismiss keyguard ACTION_DOWN"

    .line 424
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez p1, :cond_13

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    .line 428
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 429
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 431
    :cond_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move v5, p2

    :goto_7
    return v5
.end method
# .method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
#     .locals 11

#     .line 372
#     check-cast p1, Lcom/android/systemui/biometrics/UdfpsView;

#     .line 373
#     invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested()Z

#     move-result v0

#     .line 375
#     invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

#     move-result v1

#     const-string v2, "UdfpsController"

#     const/4 v3, 0x1

#     const/4 v4, 0x0

#     if-eqz v1, :cond_e

#     const/4 v5, -0x1

#     if-eq v1, v3, :cond_c

#     const/4 v6, 0x4

#     const/4 v7, 0x3

#     const/4 v8, 0x2

#     if-eq v1, v8, :cond_1

#     if-eq v1, v7, :cond_c

#     if-eq v1, v6, :cond_0

#     const/4 v9, 0x7

#     if-eq v1, v9, :cond_1

#     const/16 v0, 0x9

#     if-eq v1, v0, :cond_e

#     const/16 p1, 0xa

#     if-eq v1, p1, :cond_c

#     goto/16 :goto_6

#     .line 377
#     :cond_0
#     invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->onTouchOutsideView()V

#     return v3

#     :cond_1
#     const-string v1, "UdfpsController.onTouch.ACTION_MOVE"

#     .line 417
#     invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

#     .line 418
#     iget v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

#     if-ne v1, v5, :cond_2

#     .line 419
#     invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

#     move-result v1

#     goto :goto_0

#     .line 420
#     :cond_2
#     invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

#     move-result v1

#     .line 421
#     :goto_0
#     invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

#     move-result v5

#     if-ne v1, v5, :cond_b

#     .line 423
#     invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

#     move-result v5

#     invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

#     move-result v9

#     invoke-direct {p0, p1, v5, v9, p3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

#     move-result p1

#     if-nez p3, :cond_3

#     if-eqz p1, :cond_5

#     .line 426
#     :cond_3
#     invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

#     move-result p3

#     if-eqz p3, :cond_5

#     const-string p1, "onTouch | dismiss keyguard ACTION_MOVE"

#     .line 427
#     invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 428
#     iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

#     if-nez p1, :cond_4

#     .line 429
#     invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

#     .line 431
#     :cond_4
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

#     invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

#     .line 432
#     iput-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

#     goto/16 :goto_6

#     :cond_5
#     if-eqz p1, :cond_a

#     .line 436
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     if-nez p1, :cond_6

#     .line 439
#     invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

#     move-result-object p1

#     iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     .line 441
#     :cond_6
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

#     .line 443
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     const/16 p3, 0x3e8

#     invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

#     .line 445
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     iget p3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

#     invoke-static {p1, p3}, Lcom/android/systemui/biometrics/UdfpsController;->computePointerSpeed(Landroid/view/VelocityTracker;I)F

#     move-result p1

#     .line 446
#     invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

#     move-result p3

#     .line 447
#     invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

#     move-result v1

#     const v5, 0x443b8000    # 750.0f

#     cmpl-float v5, p1, v5

#     if-lez v5, :cond_7

#     move v5, v3

#     goto :goto_1

#     :cond_7
#     move v5, v4

#     :goto_1
#     new-array v6, v6, [Ljava/lang/Object;

#     .line 451
#     invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

#     move-result-object v9

#     aput-object v9, v6, v4

#     invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

#     move-result-object v9

#     aput-object v9, v6, v3

#     invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

#     move-result-object p1

#     aput-object p1, v6, v8

#     invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

#     move-result-object p1

#     aput-object p1, v6, v7

#     const-string p1, "minor: %.1f, major: %.1f, v: %.1f, exceedsVelocityThreshold: %b"

#     .line 449
#     invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

#     move-result-object p1

#     .line 452
#     invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

#     move-result-wide v6

#     iget-wide v9, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

#     sub-long/2addr v6, v9

#     if-nez v0, :cond_8

#     .line 453
#     iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mGoodCaptureReceived:Z

#     if-nez v0, :cond_8

#     if-nez v5, :cond_8

#     .line 455
#     invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

#     move-result v0

#     float-to-int v0, v0

#     invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

#     move-result p2

#     float-to-int p2, p2

#     invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

#     .line 457
#     new-instance p2, Ljava/lang/StringBuilder;

#     invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

#     const-string p3, "onTouch | finger down: "

#     invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#     invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#     invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

#     move-result-object p1

#     invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 458
#     invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

#     move-result-wide p1

#     iput-wide p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

#     .line 459
#     iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

#     invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

#     move-result-wide p1

#     invoke-virtual {p0, p1, p2, v8, v4}, Landroid/os/PowerManager;->userActivity(JII)V

#     goto :goto_2

#     :cond_8
#     const-wide/16 p2, 0x32

#     cmp-long p2, v6, p2

#     if-ltz p2, :cond_9

#     .line 463
#     new-instance p2, Ljava/lang/StringBuilder;

#     invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

#     const-string p3, "onTouch | finger move: "

#     invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#     invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#     invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

#     move-result-object p1

#     invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 464
#     invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

#     move-result-wide p1

#     iput-wide p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

#     :cond_9
#     move v3, v4

#     :goto_2
#     move v4, v3

#     goto :goto_3

#     :cond_a
#     const-string p1, "onTouch | finger outside"

#     .line 467
#     invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 468
#     invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

#     .line 471
#     :cond_b
#     :goto_3
#     invoke-static {}, Landroid/os/Trace;->endSection()V

#     goto/16 :goto_6

#     :cond_c
#     const-string p1, "UdfpsController.onTouch.ACTION_UP"

#     .line 477
#     invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

#     .line 478
#     iput v5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

#     .line 479
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     if-eqz p1, :cond_d

#     .line 480
#     invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

#     const/4 p1, 0x0

#     .line 481
#     iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     :cond_d
#     const-string p1, "onTouch | finger up"

#     .line 483
#     invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 484
#     iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

#     .line 485
#     invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

#     .line 486
#     iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

#     const/16 p1, 0xd

#     invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

#     .line 487
#     invoke-static {}, Landroid/os/Trace;->endSection()V

#     goto :goto_6

#     :cond_e
#     const-string v0, "UdfpsController.onTouch.ACTION_DOWN"

#     .line 381
#     invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

#     .line 384
#     iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     if-nez v0, :cond_f

#     .line 385
#     invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

#     move-result-object v0

#     iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     goto :goto_4

#     .line 389
#     :cond_f
#     invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

#     .line 393
#     :goto_4
#     invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

#     move-result v0

#     invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

#     move-result v1

#     invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

#     move-result p1

#     if-eqz p1, :cond_10

#     const-string v0, "UdfpsController.e2e.onPointerDown"

#     .line 395
#     invoke-static {v0, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

#     const-string v0, "onTouch | action down"

#     .line 396
#     invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 400
#     invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

#     move-result v0

#     iput v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

#     .line 401
#     iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

#     invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

#     move p2, v3

#     goto :goto_5

#     :cond_10
#     move p2, v4

#     :goto_5
#     if-nez p1, :cond_11

#     if-eqz p3, :cond_13

#     .line 404
#     :cond_11
#     invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

#     move-result p1

#     if-eqz p1, :cond_13

#     const-string p1, "onTouch | dismiss keyguard ACTION_DOWN"

#     .line 405
#     invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

#     .line 406
#     iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

#     if-nez p1, :cond_12

#     .line 407
#     invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

#     .line 409
#     :cond_12
#     iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

#     invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

#     .line 410
#     iput-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

#     .line 412
#     :cond_13
#     invoke-static {}, Landroid/os/Trace;->endSection()V

#     move v4, p2

#     :goto_6
#     return v4
# .end method

.method private shouldTryToDismissKeyguard()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 498
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 499
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;)V
    .locals 5

    .line 718
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    .line 720
    iget p1, p1, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mRequestReason:I

    .line 721
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const-string v1, "UdfpsController"

    if-nez v0, :cond_2

    .line 723
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUdfpsOverlay | adding window reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->udfps_view:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 726
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 727
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/UdfpsView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    #iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    #invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/UdfpsView;->setHbmProvider(Lcom/android/systemui/biometrics/UdfpsHbmProvider;)V
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/UdfpsView;->setHbmProvider(Lcom/android/systemui/biometrics/UdfpsHbmProvider;)V

    .line 729
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->inflateUdfpsAnimation(I)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object v0

    .line 730
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 731
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 732
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/biometrics/UdfpsView;->setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 733
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/BiometricOrientationEventListener;->enable()V

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 740
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 743
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsController;->computeLayoutParams(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 746
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateTouchListener()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showUdfpsOverlay | failed to add window"

    .line 748
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string p0, "showUdfpsOverlay | the overlay is already showing"

    .line 751
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateOverlay()V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-eqz v0, :cond_0

    .line 647
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    :goto_0
    return-void
.end method

.method private updateTouchListener()V
    .locals 3

    .line 936
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v0, :cond_0

    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 942
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 945
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public getSensorLocation()Landroid/graphics/RectF;
    .locals 5

    .line 637
    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int v4, p0, v2

    int-to-float v4, v4

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int/2addr p0, v2

    int-to-float p0, p0

    invoke-direct {v0, v3, v4, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public isFingerDown()Z
    .locals 0

    .line 886
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    return p0
.end method

.method onAodInterrupt(IIFF)V
    .locals 7

    .line 840
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-eqz v0, :cond_0

    return-void

    .line 844
    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/biometrics/UdfpsController;IIFF)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    .line 856
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    if-eqz p1, :cond_1

    .line 857
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 858
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method onCancelUdfps()V
    .locals 1

    .line 874
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 875
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-nez v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 879
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method public playStartHaptic()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 596
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    sget-object v5, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-string/jumbo v4, "udfps-onStart"

    .line 595
    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_0
    return-void
.end method

.method public enableHbm(ILandroid/view/Surface;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 973
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public disableHbm(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 981
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
