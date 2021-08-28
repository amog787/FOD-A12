.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/ClipboardService;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/content/ClipData;

.field public final synthetic f$3:Landroid/view/textclassifier/TextClassifier;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/clipboard/ClipboardService;

    iput-object p2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ClipData;

    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$3:Landroid/view/textclassifier/TextClassifier;

    iput p5, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ClipData;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$3:Landroid/view/textclassifier/TextClassifier;

    iget v4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/clipboard/ClipboardService;->lambda$startClassificationLocked$3$ClipboardService(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    return-void
.end method
