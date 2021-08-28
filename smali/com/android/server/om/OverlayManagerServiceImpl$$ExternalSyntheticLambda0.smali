.class public final synthetic Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Predicate;

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->lambda$removeOverlaysForUser$2(ILjava/util/function/Predicate;Landroid/content/om/OverlayInfo;)Z

    move-result p1

    return p1
.end method
