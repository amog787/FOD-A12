.class final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field private mAttributionChainId:I

.field private mAttributionFlags:I

.field private mAttributionTag:Ljava/lang/String;

.field private mClientId:Landroid/os/IBinder;

.field private mFlags:I

.field private mOnDeath:Ljava/lang/Runnable;

.field private mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field private mStartElapsedTime:J

.field private mStartTime:J

.field private mUidState:I

.field numUnfinishedStarts:I


# direct methods
.method private constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "onDeath"    # Ljava/lang/Runnable;
    .param p8, "uidState"    # I
    .param p9, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p10, "flags"    # I
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 763
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 764
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 765
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 766
    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 767
    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 768
    iput-object p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 769
    iput p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    .line 770
    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    .line 771
    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    .line 773
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 774
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;IIILcom/android/server/appop/AppOpsService$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Landroid/os/IBinder;
    .param p6, "x3"    # Ljava/lang/String;
    .param p7, "x4"    # Ljava/lang/Runnable;
    .param p8, "x5"    # I
    .param p9, "x6"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p10, "x7"    # I
    .param p11, "x8"    # I
    .param p12, "x9"    # I
    .param p13, "x10"    # Lcom/android/server/appop/AppOpsService$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-direct/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .param p1, "x1"    # J

    .line 706
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 706
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 706
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 706
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .param p1, "x1"    # J

    .line 706
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide p1
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 784
    return-void
.end method

.method public finish()V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 779
    return-void
.end method

.method public getAttributionChainId()I
    .locals 1

    .line 864
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    return v0
.end method

.method public getAttributionFlags()I
    .locals 1

    .line 859
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    return v0
.end method

.method public getClientId()Landroid/os/IBinder;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return v0
.end method

.method public getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public getStartElapsedTime()J
    .locals 2

    .line 834
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 829
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "startElapsedTime"    # J
    .param p5, "clientId"    # Landroid/os/IBinder;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "onDeath"    # Ljava/lang/Runnable;
    .param p8, "uidState"    # I
    .param p9, "flags"    # I
    .param p10, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "II",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "II",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    .local p13, "proxyPool":Landroid/util/Pools$Pool;, "Landroid/util/Pools$Pool<Landroid/app/AppOpsManager$OpEventProxyInfo;>;"
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 810
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 811
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 812
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 813
    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 814
    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 815
    iput p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    .line 817
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_0

    .line 818
    invoke-interface {p13, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 820
    :cond_0
    iput-object p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 821
    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    .line 822
    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    .line 824
    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 825
    return-void
.end method
