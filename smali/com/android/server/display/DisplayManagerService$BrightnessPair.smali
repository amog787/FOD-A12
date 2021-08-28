.class Lcom/android/server/display/DisplayManagerService$BrightnessPair;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessPair"
.end annotation


# instance fields
.field public brightness:F

.field public sdrBrightness:F

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;FF)V
    .locals 0
    .param p2, "brightness"    # F
    .param p3, "sdrBrightness"    # F

    .line 3367
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3368
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 3369
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 3370
    return-void
.end method
