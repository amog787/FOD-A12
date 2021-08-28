.class public final synthetic Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    iput-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->lambda$process$0$EnsureActivitiesVisibleHelper(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
