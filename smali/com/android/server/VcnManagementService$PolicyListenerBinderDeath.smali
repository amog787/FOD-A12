.class Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyListenerBinderDeath"
.end annotation


# instance fields
.field private final mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 727
    iput-object p1, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 729
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 724
    iget-object v0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 733
    invoke-static {}, Lcom/android/server/VcnManagementService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app died without removing VcnUnderlyingNetworkPolicyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/VcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 735
    return-void
.end method
