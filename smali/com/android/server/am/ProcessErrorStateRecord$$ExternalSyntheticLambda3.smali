.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(IILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:I

    iget v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$1(IILjava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
