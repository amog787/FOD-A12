.class Lcom/android/server/people/data/ConversationInfo$Builder;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/ConversationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mContactPhoneNumber:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mConversationFlags:I

.field private mCurrStatuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEventTimestamp:J

.field private mLocusId:Landroid/content/LocusId;

.field private mNotificationChannelId:Ljava/lang/String;

.field private mParentNotificationChannelId:Ljava/lang/String;

.field private mShortcutFlags:I

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    .line 491
    return-void
.end method

.method constructor <init>(Lcom/android/server/people/data/ConversationInfo;)V
    .locals 2
    .param p1, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    .line 494
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 495
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1000(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    goto :goto_0

    .line 497
    :cond_0
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1000(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 499
    :goto_0
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1100(Lcom/android/server/people/data/ConversationInfo;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 500
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1200(Lcom/android/server/people/data/ConversationInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 501
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1300(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 502
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1400(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 503
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1500(Lcom/android/server/people/data/ConversationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    .line 504
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1600(Lcom/android/server/people/data/ConversationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    .line 505
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1700(Lcom/android/server/people/data/ConversationInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    .line 506
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1800(Lcom/android/server/people/data/ConversationInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 507
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->access$1900(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    .line 508
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/content/LocusId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/people/data/ConversationInfo$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/people/data/ConversationInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/people/data/ConversationInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/people/data/ConversationInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/people/data/ConversationInfo$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 461
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-object v0
.end method

.method private addConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 592
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 593
    return-object p0
.end method

.method private removeConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 2
    .param p1, "flags"    # I

    .line 597
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 598
    return-object p0
.end method

.method private setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "value"    # Z

    .line 584
    if-eqz p2, :cond_0

    .line 585
    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->addConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0

    .line 587
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->removeConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 2
    .param p1, "status"    # Landroid/app/people/ConversationStatus;

    .line 612
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-object p0
.end method

.method build()Lcom/android/server/people/data/ConversationInfo;
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/people/data/ConversationInfo;-><init>(Lcom/android/server/people/data/ConversationInfo$Builder;Lcom/android/server/people/data/ConversationInfo$1;)V

    return-object v0
.end method

.method clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "statusId"    # Ljava/lang/String;

    .line 617
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    return-object p0
.end method

.method setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 564
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 526
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    .line 527
    return-object p0
.end method

.method setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 580
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 521
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    .line 522
    return-object p0
.end method

.method setConversationFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "conversationFlags"    # I

    .line 551
    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    .line 552
    return-object p0
.end method

.method setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 568
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 556
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "lastEventTimestamp"    # J

    .line 541
    iput-wide p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    .line 542
    return-object p0
.end method

.method setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 516
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    .line 517
    return-object p0
.end method

.method setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "notificationChannelId"    # Ljava/lang/String;

    .line 531
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 560
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "parentNotificationChannelId"    # Ljava/lang/String;

    .line 536
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    .line 537
    return-object p0
.end method

.method setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 576
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 572
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "shortcutFlags"    # I

    .line 546
    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    .line 547
    return-object p0
.end method

.method setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 0
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 511
    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    .line 512
    return-object p0
.end method

.method setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Lcom/android/server/people/data/ConversationInfo$Builder;"
        }
    .end annotation

    .line 602
    .local p1, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/app/people/ConversationStatus;>;"
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/people/ConversationStatus;

    .line 605
    .local v1, "status":Landroid/app/people/ConversationStatus;
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .end local v1    # "status":Landroid/app/people/ConversationStatus;
    goto :goto_0

    .line 608
    :cond_0
    return-object p0
.end method
