.class abstract Lcom/android/server/IpSecService$OwnedResourceRecord;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Lcom/android/server/IpSecService$IResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OwnedResourceRecord"
.end annotation


# instance fields
.field protected final mResourceId:I

.field final pid:I

.field final synthetic this$0:Lcom/android/server/IpSecService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;I)V
    .locals 1
    .param p2, "resourceId"    # I

    .line 498
    iput-object p1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->this$0:Lcom/android/server/IpSecService;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 503
    iput p2, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->mResourceId:I

    .line 504
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->pid:I

    .line 505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->uid:I

    .line 507
    invoke-virtual {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/IpSecService$ResourceTracker;->take()V

    .line 508
    return-void

    .line 501
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource ID must not be INVALID_RESOURCE_ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract freeUnderlyingResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
.end method

.method protected getUserRecord()Lcom/android/server/IpSecService$UserRecord;
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->this$0:Lcom/android/server/IpSecService;

    iget-object v0, v0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public abstract invalidate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    const-string/jumbo v1, "{mResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->mResourceId:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->pid:I

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->uid:I

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    return-object v0
.end method
