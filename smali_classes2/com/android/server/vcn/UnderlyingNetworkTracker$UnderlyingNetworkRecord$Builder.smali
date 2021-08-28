.class Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;
.super Ljava/lang/Object;
.source "UnderlyingNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

.field mIsBlocked:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field mWasIsBlockedSet:Z


# direct methods
.method private constructor <init>(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 722
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Network;Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Network;
    .param p2, "x1"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$1;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;-><init>(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->setLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;
    .param p1, "x1"    # Z

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->setIsBlocked(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    .line 710
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    .line 710
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->build()Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v0

    return-object v0
.end method

.method private build()Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .locals 5

    .line 755
    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget-boolean v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;-><init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    return-object v0

    .line 756
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called build before UnderlyingNetworkRecord was valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNetwork()Landroid/net/Network;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method private getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method private isValid()Z
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setIsBlocked(Z)V
    .locals 1
    .param p1, "isBlocked"    # Z

    .line 745
    iput-boolean p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 748
    return-void
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 740
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 742
    return-void
.end method

.method private setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 730
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 732
    return-void
.end method
