.class public final synthetic Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskLaunchParamsModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskLaunchParamsModifier;

    iput p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskLaunchParamsModifier;

    iget v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$calculate$0$TaskLaunchParamsModifier(IILcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
