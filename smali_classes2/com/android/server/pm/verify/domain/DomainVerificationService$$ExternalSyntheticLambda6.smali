.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/util/TypedXmlSerializer;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;ZLandroid/util/TypedXmlSerializer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iput-boolean p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$2:Landroid/util/TypedXmlSerializer;

    iput p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-boolean v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$2:Landroid/util/TypedXmlSerializer;

    iget v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda6;->f$3:I

    check-cast p1, Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$writeSettings$10$DomainVerificationService(ZLandroid/util/TypedXmlSerializer;ILjava/util/function/Function;)V

    return-void
.end method
