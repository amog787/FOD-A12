.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>([I[ILandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;->f$0:[I

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;->f$1:[I

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;->f$0:[I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;->f$1:[I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;->f$2:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$addToGlobalAndConsumeLimit$35([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V

    return-void
.end method
