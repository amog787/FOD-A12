.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCombinationManager;->lambda$interceptKey$2$KeyCombinationManager(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p1

    return p1
.end method
