.class public final synthetic Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/ITextToSpeechSessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Landroid/speech/tts/ITextToSpeechSessionCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Landroid/speech/tts/ITextToSpeechSessionCallback;

    invoke-static {v0}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->lambda$createSession$0(Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    return-void
.end method
