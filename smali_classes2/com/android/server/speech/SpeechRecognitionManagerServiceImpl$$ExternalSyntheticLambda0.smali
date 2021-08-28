.class public final synthetic Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/speech/RemoteSpeechRecognitionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iput p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iget v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$0$SpeechRecognitionManagerServiceImpl(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    return-void
.end method
