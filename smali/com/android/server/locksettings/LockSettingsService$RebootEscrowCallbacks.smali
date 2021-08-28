.class Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootEscrowCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 3729
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/locksettings/LockSettingsService$1;

    .line 3729
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public isUserSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 3732
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    return v0
.end method

.method public onRebootEscrowRestored(B[BI)V
    .locals 8
    .param p1, "spVersion"    # B
    .param p2, "syntheticPassword"    # [B
    .param p3, "userId"    # I

    .line 3738
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 3739
    .local v0, "authToken":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    .line 3740
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v7

    monitor-enter v7

    .line 3741
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3742
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3743
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$2300(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$2400(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    .line 3744
    return-void

    .line 3742
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
