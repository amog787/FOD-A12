.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/android/server/people/data/ConversationStore;

.field public final synthetic f$3:Lcom/android/server/people/data/PackageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$1:J

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/people/data/ConversationStore;

    iput-object p5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/people/data/PackageData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$1:J

    iget-object v3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/people/data/ConversationStore;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/people/data/PackageData;

    move-object v5, p1

    check-cast v5, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->lambda$pruneExpiredConversationStatuses$6$DataManager(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method
