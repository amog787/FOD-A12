.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>([Z[ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;->f$0:[Z

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;->f$1:[Z

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;->f$2:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;->f$0:[Z

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;->f$1:[Z

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;->f$2:Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$startPowerModeLaunchIfNeeded$38([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
