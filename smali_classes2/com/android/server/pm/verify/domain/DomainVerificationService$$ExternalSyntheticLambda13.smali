.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/util/ArraySet;ILandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$1:Landroid/util/ArraySet;

    iput p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$3:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$1:Landroid/util/ArraySet;

    iget v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda13;->f$3:Landroid/util/ArraySet;

    check-cast p1, Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$setDomainVerificationStatusInternal$2$DomainVerificationService(Landroid/util/ArraySet;ILandroid/util/ArraySet;Ljava/util/function/Function;)V

    return-void
.end method
