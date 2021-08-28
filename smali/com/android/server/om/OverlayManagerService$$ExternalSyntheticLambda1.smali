.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/om/PackageAndUser;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerService;->lambda$groupTargetsByUserId$1(Landroid/util/SparseArray;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method
