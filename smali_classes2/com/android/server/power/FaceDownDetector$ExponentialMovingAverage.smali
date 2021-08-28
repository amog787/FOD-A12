.class final Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;
.super Ljava/lang/Object;
.source "FaceDownDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FaceDownDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExponentialMovingAverage"
.end annotation


# instance fields
.field private final mAlpha:F

.field private final mInitialAverage:F

.field private mMovingAverage:F

.field final synthetic this$0:Lcom/android/server/power/FaceDownDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/FaceDownDetector;F)V
    .locals 1
    .param p2, "alpha"    # F

    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;-><init>(Lcom/android/server/power/FaceDownDetector;FF)V

    .line 480
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/FaceDownDetector;FF)V
    .locals 0
    .param p2, "alpha"    # F
    .param p3, "initialAverage"    # F

    .line 482
    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput p2, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mAlpha:F

    .line 484
    iput p3, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mInitialAverage:F

    .line 485
    iput p3, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    .line 486
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;

    .line 473
    iget v0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    return v0
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 493
    iget v0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mInitialAverage:F

    iput v0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    .line 494
    return-void
.end method

.method updateMovingAverage(F)V
    .locals 2
    .param p1, "newValue"    # F

    .line 489
    iget v0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mAlpha:F

    iget v1, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/FaceDownDetector$ExponentialMovingAverage;->mMovingAverage:F

    .line 490
    return-void
.end method
