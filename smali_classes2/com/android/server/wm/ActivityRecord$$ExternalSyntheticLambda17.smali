.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$showStartingWindow$10$ActivityRecord(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
