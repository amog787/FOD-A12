.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->f$0:Z

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->f$0:Z

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$getDumpActivities$39(ZLjava/util/ArrayList;Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method
