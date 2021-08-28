.class final Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverrideRequestRecord"
.end annotation


# static fields
.field public static final STATUS_ACTIVE:I = 0x1

.field public static final STATUS_CANCELED:I = 0x3

.field public static final STATUS_SUSPENDED:I = 0x2

.field public static final STATUS_UNKNOWN:I


# instance fields
.field private final mFlags:I

.field private mLastNotifiedStatus:I

.field private final mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

.field private final mRequestedState:Lcom/android/server/devicestate/DeviceState;

.field private mStatus:I

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;Lcom/android/server/devicestate/DeviceState;I)V
    .locals 0
    .param p2, "processRecord"    # Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestedState"    # Lcom/android/server/devicestate/DeviceState;
    .param p5, "flags"    # I

    .line 773
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mStatus:I

    .line 770
    iput p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mLastNotifiedStatus:I

    .line 774
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 775
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mToken:Landroid/os/IBinder;

    .line 776
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mRequestedState:Lcom/android/server/devicestate/DeviceState;

    .line 777
    iput p5, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mFlags:I

    .line 778
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    .line 740
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mRequestedState:Lcom/android/server/devicestate/DeviceState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    .line 740
    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mFlags:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    .line 740
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    .line 740
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;

    .line 740
    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mStatus:I

    return v0
.end method


# virtual methods
.method public notifyStatusIfNeeded()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->access$1400(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 807
    :try_start_0
    iget v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mLastNotifiedStatus:I

    iget v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mStatus:I

    if-ne v1, v2, :cond_0

    .line 808
    monitor-exit v0

    return-void

    .line 811
    :cond_0
    move v1, v2

    .line 812
    .local v1, "stateToReport":I
    iput v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mLastNotifiedStatus:I

    .line 813
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)V

    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestSuspendedAsync(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)V

    goto :goto_0

    .line 819
    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)V

    .line 822
    :cond_3
    :goto_0
    return-void

    .line 813
    .end local v1    # "stateToReport":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStatusLocked(I)V
    .locals 1
    .param p1, "status"    # I

    .line 781
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->setStatusLocked(IZ)V

    .line 782
    return-void
.end method

.method public setStatusLocked(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "markDirty"    # Z

    .line 785
    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mStatus:I

    if-eq v0, p1, :cond_2

    .line 786
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 791
    iput p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mStatus:I

    .line 793
    if-ne p1, v1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->access$1200(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 795
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mProcessRecord:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_0
    if-eqz p2, :cond_2

    .line 799
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->access$1300(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 787
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not alter the status of a request after set to CANCELED."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_2
    :goto_0
    return-void
.end method

.method public statusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .line 748
    packed-switch p1, :pswitch_data_0

    .line 758
    const/4 v0, 0x0

    return-object v0

    .line 754
    :pswitch_0
    const-string v0, "CANCELED"

    return-object v0

    .line 752
    :pswitch_1
    const-string v0, "SUSPENDED"

    return-object v0

    .line 750
    :pswitch_2
    const-string v0, "ACTIVE"

    return-object v0

    .line 756
    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
