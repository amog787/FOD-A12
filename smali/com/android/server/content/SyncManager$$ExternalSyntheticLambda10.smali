.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/content/SyncManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/content/SyncManager;->$r8$lambda$f_0Z1_2aO_5hA8fHgzsbmTPHbes(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
