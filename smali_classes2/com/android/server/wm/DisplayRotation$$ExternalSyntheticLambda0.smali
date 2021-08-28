.class public final synthetic Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotation;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->lambda$continueRotation$0$DisplayRotation(Lcom/android/server/wm/Task;)V

    return-void
.end method
