.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    iput p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKey$1$KeyCombinationManager(ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method
