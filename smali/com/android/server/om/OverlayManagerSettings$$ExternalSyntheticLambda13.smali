.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;->f$0:Ljava/util/function/Predicate;

    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;->f$0:Ljava/util/function/Predicate;

    iget v1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda13;->f$1:I

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$removeIf$4(Ljava/util/function/Predicate;ILandroid/content/om/OverlayInfo;)Z

    move-result p1

    return p1
.end method
