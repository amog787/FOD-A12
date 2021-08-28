.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;ILandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/om/OverlayManagerService;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$3:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$3:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/om/OverlayManagerService;->lambda$updateTargetPackagesLocked$0$OverlayManagerService(Ljava/util/List;ILandroid/util/ArraySet;)V

    return-void
.end method
