.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$1:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$1:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/VcnManagementService;->lambda$clearVcnConfig$5$VcnManagementService(Landroid/os/ParcelUuid;)V

    return-void
.end method
