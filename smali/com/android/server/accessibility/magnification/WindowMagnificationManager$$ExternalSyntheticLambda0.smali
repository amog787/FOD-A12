.class public final synthetic Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iput p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$$ExternalSyntheticLambda0;->f$1:F

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->lambda$persistScale$0$WindowMagnificationManager(F)V

    return-void
.end method
