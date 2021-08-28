.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeDataForUser$7(ILjava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
