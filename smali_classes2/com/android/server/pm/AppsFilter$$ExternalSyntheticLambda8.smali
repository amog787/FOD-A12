.class public final synthetic Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/AppsFilter$ToString;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lcom/android/internal/util/function/QuadFunction;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;->f$2:Lcom/android/internal/util/function/QuadFunction;

    return-void
.end method


# virtual methods
.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;->f$2:Lcom/android/internal/util/function/QuadFunction;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/AppsFilter;->lambda$dumpQueries$9(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
