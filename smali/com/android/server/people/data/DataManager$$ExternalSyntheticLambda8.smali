.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Lcom/android/server/people/data/PackageData;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/people/data/DataManager;->lambda$getRecentConversations$2$DataManager(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method
