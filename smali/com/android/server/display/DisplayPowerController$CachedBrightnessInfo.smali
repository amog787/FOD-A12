.class Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedBrightnessInfo"
.end annotation


# instance fields
.field public brightness:F

.field public brightnessMax:F

.field public brightnessMin:F

.field public hbmMode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
