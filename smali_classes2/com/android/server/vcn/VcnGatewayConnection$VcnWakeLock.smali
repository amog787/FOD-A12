.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcnWakeLock"
.end annotation


# instance fields
.field private final mImpl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 2497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2499
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    .line 2500
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2501
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    .line 2509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    monitor-exit p0

    return-void

    .line 2508
    .end local p0    # "this":Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 2518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    monitor-exit p0

    return-void

    .line 2517
    .end local p0    # "this":Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
