.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/util/List;Landroid/util/IndentingPrintWriter;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$2:Landroid/util/IndentingPrintWriter;

    iput-object p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$2:Landroid/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Integer;

    check-cast p1, Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$printOwnersForDomains$15$DomainVerificationService(Ljava/util/List;Landroid/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/util/function/Function;)V

    return-void
.end method
