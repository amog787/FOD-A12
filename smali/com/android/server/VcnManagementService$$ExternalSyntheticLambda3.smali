.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;->f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;->f$1:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/VcnManagementService;->lambda$removeVcnUnderlyingNetworkPolicyListener$7$VcnManagementService(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    return-void
.end method
