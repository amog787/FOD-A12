.class public final synthetic Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

.field public final synthetic f$1:Landroid/service/autofill/Dataset;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/Dataset;

    iput p3, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/Dataset;

    iget v2, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createInlineSuggestions$1(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    return-void
.end method
