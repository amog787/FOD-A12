.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/SystemServer;->lambda$spawnFdLeakCheckThread$0(III)V

    return-void
.end method
