.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;[Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$3:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda38;->f$3:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$uninstallCaCerts$34$DevicePolicyManagerService(Lcom/android/server/devicepolicy/CallerIdentity;[Ljava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method
