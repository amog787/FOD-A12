.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/os/ParcelUuid;

.field public final synthetic f$2:Landroid/net/vcn/VcnConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$1:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$2:Landroid/net/vcn/VcnConfig;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$1:Landroid/os/ParcelUuid;

    iget-object v2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;->f$2:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VcnManagementService;->lambda$setVcnConfig$4$VcnManagementService(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method
