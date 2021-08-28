.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;->f$0:Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$topRunningActivity$38(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1
.end method
