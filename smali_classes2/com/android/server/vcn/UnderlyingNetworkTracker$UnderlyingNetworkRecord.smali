.class public Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
.super Ljava/lang/Object;
.source "UnderlyingNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/UnderlyingNetworkTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnderlyingNetworkRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;
    }
.end annotation


# instance fields
.field public final isBlocked:Z

.field public final linkProperties:Landroid/net/LinkProperties;

.field public final network:Landroid/net/Network;

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method constructor <init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "isBlocked"    # Z

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 581
    iput-object p2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 582
    iput-object p3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 583
    iput-boolean p4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->isBlocked:Z

    .line 584
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Landroid/os/ParcelUuid;
    .param p3, "x3"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "x4"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p5, "x5"    # Landroid/os/PersistableBundle;

    .line 568
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$700(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Landroid/os/ParcelUuid;
    .param p1, "x1"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p2, "x2"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p3, "x3"    # Landroid/os/PersistableBundle;

    .line 568
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->getComparator(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method private calculatePriorityClass(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)I
    .locals 6
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p3, "currentlySelected"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p4, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 619
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 623
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    iget-boolean v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->isBlocked:Z

    const v2, 0x7fffffff

    if-eqz v1, :cond_0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network blocked for System Server: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1200(Ljava/lang/String;)V

    .line 625
    return v2

    .line 628
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1600(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    invoke-virtual {p2, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v3

    .line 641
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v3

    .line 643
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 644
    :cond_1
    return v1

    .line 648
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 649
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-static {p4}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1700(Landroid/os/PersistableBundle;)I

    move-result v5

    if-lt v4, v5, :cond_3

    if-eqz p3, :cond_3

    iget-object v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v5, p3, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 651
    invoke-virtual {v4, v5}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 652
    return v3

    .line 655
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    invoke-static {p4}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1800(Landroid/os/PersistableBundle;)I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 656
    const/4 v1, 0x2

    return v1

    .line 664
    :cond_4
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 665
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1600(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 666
    const/4 v1, 0x3

    return v1

    .line 669
    :cond_5
    return v2
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "currentlySelected"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p5, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 693
    const-string v0, "UnderlyingNetworkRecord:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 696
    nop

    .line 697
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->calculatePriorityClass(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)I

    move-result v0

    .line 699
    .local v0, "priorityClass":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1900()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLinkProperties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 707
    return-void
.end method

.method private static getComparator(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)Ljava/util/Comparator;
    .locals 1
    .param p0, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p2, "currentlySelected"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p3, "carrierConfig"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;",
            ">;"
        }
    .end annotation

    .line 677
    new-instance v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method static synthetic lambda$getComparator$0(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)I
    .locals 2
    .param p0, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p2, "currentlySelected"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p3, "carrierConfig"    # Landroid/os/PersistableBundle;
    .param p4, "left"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    .param p5, "right"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 678
    nop

    .line 679
    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->calculatePriorityClass(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)I

    move-result v0

    .line 681
    invoke-direct {p5, p0, p1, p2, p3}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->calculatePriorityClass(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)I

    move-result v1

    .line 678
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 588
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 589
    :cond_0
    instance-of v1, p1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 590
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 592
    .local v1, "that":Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;
    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v4, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v3, v4}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 593
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    iget-object v4, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 594
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->isBlocked:Z

    iget-boolean v4, v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->isBlocked:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 592
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 600
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->isBlocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
