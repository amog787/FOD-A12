.class public final synthetic Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController;

.field public final synthetic f$1:Landroid/view/displayhash/DisplayHash;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/view/displayhash/DisplayHash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayHashController;

    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;->f$1:Landroid/view/displayhash/DisplayHash;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayHashController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;->f$1:Landroid/view/displayhash/DisplayHash;

    check-cast p1, Landroid/service/displayhash/IDisplayHashingService;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/DisplayHashController;->lambda$verifyDisplayHash$0$DisplayHashController(Landroid/view/displayhash/DisplayHash;Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V

    return-void
.end method
