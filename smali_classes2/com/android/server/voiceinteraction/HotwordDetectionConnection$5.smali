.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$handleExternalSourceHotwordDetection$8$HotwordDetectionConnection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field final synthetic val$audioSource:Ljava/io/InputStream;

.field final synthetic val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field final synthetic val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$serviceAudioSource:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 695
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSource:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$audioSource:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 2
    .param p1, "triggerResult"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1100(Ljava/io/Closeable;)V

    .line 710
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSource:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1100(Ljava/io/Closeable;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$100(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 712
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    .line 714
    if-eqz p1, :cond_0

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Egressed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits from hotword trusted process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$audioSource:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1100(Ljava/io/Closeable;)V

    .line 720
    return-void
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 1
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1100(Ljava/io/Closeable;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSource:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1100(Ljava/io/Closeable;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$audioSource:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1100(Ljava/io/Closeable;)V

    .line 704
    return-void
.end method
