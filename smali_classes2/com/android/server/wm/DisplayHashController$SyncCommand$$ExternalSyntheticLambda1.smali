.class public final synthetic Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/DisplayHashController$Command;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/displayhash/IDisplayHashingService;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->lambda$run$1$DisplayHashController$SyncCommand(Ljava/util/function/BiConsumer;Landroid/service/displayhash/IDisplayHashingService;)V

    return-void
.end method
