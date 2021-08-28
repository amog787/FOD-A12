.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$3:I

    iput-object p6, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$1:J

    iget-object v3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$3:I

    iget-object v5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$4:Ljava/util/List;

    move-object v6, p1

    check-cast v6, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/people/data/DataManager;->lambda$pruneOldRecentConversations$4$DataManager(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method
