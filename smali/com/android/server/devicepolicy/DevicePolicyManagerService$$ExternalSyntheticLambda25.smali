.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Lcom/android/server/devicepolicy/CallerIdentity;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$2:Lcom/android/server/devicepolicy/CallerIdentity;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$3:Landroid/os/IBinder;

    iput-boolean p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$4:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$2:Lcom/android/server/devicepolicy/CallerIdentity;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$3:Landroid/os/IBinder;

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda25;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$choosePrivateKeyAlias$38$DevicePolicyManagerService(Landroid/content/Intent;Lcom/android/server/devicepolicy/CallerIdentity;Landroid/os/IBinder;Z)V

    return-void
.end method
