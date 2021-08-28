.class final Lcom/android/server/display/DisplayModeDirector$VoteSummary;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VoteSummary"
.end annotation


# instance fields
.field public baseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public maxRefreshRate:F

.field public minRefreshRate:F

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 233
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 237
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 238
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 239
    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    .line 241
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 242
    return-void
.end method
