.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iget v1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getOrientation$3$TaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
