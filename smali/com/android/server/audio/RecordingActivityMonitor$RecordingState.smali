.class final Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordingState"
.end annotation


# instance fields
.field private mConfig:Landroid/media/AudioRecordingConfiguration;

.field private final mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

.field private mIsActive:Z

.field private final mRiid:I


# direct methods
.method constructor <init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V
    .locals 0
    .param p1, "riid"    # I
    .param p2, "handler"    # Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 73
    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/media/AudioRecordingConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/media/AudioRecordingConfiguration;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 79
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 80
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "riid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; active? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingConfiguration;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "  no config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void
.end method

.method getConfig()Landroid/media/AudioRecordingConfiguration;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    return-object v0
.end method

.method getPortId()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getRiid()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    return v0
.end method

.method hasDeathHandler()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isActiveConfiguration()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method release()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->release()V

    .line 106
    :cond_0
    return-void
.end method

.method setActive(Z)Z
    .locals 2
    .param p1, "active"    # Z

    .line 110
    iget-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 112
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method setConfig(Landroid/media/AudioRecordingConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/media/AudioRecordingConfiguration;

    .line 117
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {p1, v0}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 119
    iget-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    return v0
.end method
