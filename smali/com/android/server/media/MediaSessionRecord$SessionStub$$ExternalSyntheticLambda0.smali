.class public final synthetic Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord$SessionStub;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord$SessionStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->lambda$getBinderForSetQueue$0$MediaSessionRecord$SessionStub(Ljava/util/List;)V

    return-void
.end method
