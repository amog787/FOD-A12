.class final Lcom/android/server/appop/AppOpsService$ModeCallback;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ModeCallback"
.end annotation


# static fields
.field public static final ALL_OPS:I = -0x2


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsCallback;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mFlags:I

.field final mWatchedOpCode:I

.field final mWatchingUid:I

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .param p3, "watchingUid"    # I
    .param p4, "flags"    # I
    .param p5, "watchedOp"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPid"    # I

    .line 1537
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 1539
    iput p3, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 1540
    iput p4, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    .line 1541
    iput p5, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    .line 1542
    iput p6, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    .line 1543
    iput p7, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    .line 1545
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    goto :goto_0

    .line 1546
    :catch_0
    move-exception v0

    .line 1549
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 1590
    return-void
.end method

.method public isWatchingUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1552
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1558
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ModeCallback{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    const-string v1, " watchinguid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1562
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    packed-switch v1, :pswitch_data_0

    .line 1571
    const-string v1, " op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1566
    :pswitch_0
    goto :goto_0

    .line 1568
    :pswitch_1
    const-string v1, " op=(all)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    nop

    .line 1575
    :goto_0
    const-string v1, " from uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1577
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1579
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method unlinkToDeath()V
    .locals 2

    .line 1584
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1585
    return-void
.end method
