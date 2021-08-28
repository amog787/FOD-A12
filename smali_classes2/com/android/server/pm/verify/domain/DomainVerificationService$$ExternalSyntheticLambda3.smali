.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/util/ArraySet;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/lang/String;Landroid/util/ArraySet;ILandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    iput p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$4:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    iget v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda3;->f$4:Landroid/util/ArraySet;

    move-object v5, p1

    check-cast v5, Ljava/util/function/Function;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$setDomainVerificationStatusInternal$3$DomainVerificationService(Ljava/lang/String;Landroid/util/ArraySet;ILandroid/util/ArraySet;Ljava/util/function/Function;)V

    return-void
.end method
