.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/telephony/SubscriptionManager;

.field public final synthetic f$2:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;->f$2:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;->f$2:Landroid/os/ParcelUuid;

    invoke-static {v0, v1, v2}, Lcom/android/server/VcnManagementService;->lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    return-void
.end method
