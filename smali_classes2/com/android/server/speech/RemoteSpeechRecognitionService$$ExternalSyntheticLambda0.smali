.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

.field public final synthetic f$2:Landroid/content/AttributionSource;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iget-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$2:Landroid/content/AttributionSource;

    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$startListening$1(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V

    return-void
.end method
