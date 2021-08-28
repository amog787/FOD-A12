.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;->f$0:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getRootTask$12(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object p1

    return-object p1
.end method
