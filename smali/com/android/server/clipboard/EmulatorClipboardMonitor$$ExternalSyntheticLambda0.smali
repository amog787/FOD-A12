.class public final synthetic Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/EmulatorClipboardMonitor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    iput-object p2, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    iget-object v1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->lambda$new$0$EmulatorClipboardMonitor(Ljava/util/function/Consumer;)V

    return-void
.end method
