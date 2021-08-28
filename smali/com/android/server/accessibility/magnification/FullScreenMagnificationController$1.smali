.class Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;
.super Landroid/os/AsyncTask;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->persistScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field final synthetic val$scale:F

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;FI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 1085
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->val$scale:F

    iput p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->val$userId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1085
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1088
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->access$000(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->val$scale:F

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$1;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->putMagnificationScale(FI)V

    .line 1089
    const/4 v0, 0x0

    return-object v0
.end method
