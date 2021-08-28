.class final Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.super Ljava/lang/Object;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;,
        Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

.field private static final MAX_UPDATE_TIMEOUT_MILLIS:J = 0x1770L

.field private static final OP_MESSAGE:Ljava/lang/String; = "Providing hotword detection result to VoiceInteractionService"

.field private static final TAG:Ljava/lang/String; = "HotwordDetectionConnection"

.field private static final VALIDATION_TIMEOUT_MILLIS:J = 0xbb8L


# instance fields
.field private final mAudioCopyExecutor:Ljava/util/concurrent/Executor;

.field private mAudioFlinger:Landroid/os/IBinder;

.field private final mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field private mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

.field final mDetectionComponentName:Landroid/content/ComponentName;

.field volatile mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

.field private mLastRestartInstant:Ljava/time/Instant;

.field final mLock:Ljava/lang/Object;

.field private mPerformingSoftwareHotwordDetection:Z

.field private mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

.field private mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field private final mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mUser:I

.field private mValidatingDspTrigger:Z

.field final mVoiceInteractionServiceUid:I

.field private final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public static synthetic $r8$lambda$i8F8xvsj0XTRcMx3FdDlXqkF-FE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->audioServerDied()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 96
    nop

    .line 97
    const-wide/16 v0, 0x1770

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 20
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "voiceInteractionServiceUid"    # I
    .param p4, "voiceInteractorIdentity"    # Landroid/media/permission/Identity;
    .param p5, "serviceName"    # Landroid/content/ComponentName;
    .param p6, "userId"    # I
    .param p7, "bindInstantServiceAllowed"    # Z
    .param p8, "options"    # Landroid/os/PersistableBundle;
    .param p9, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p10, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    .line 101
    nop

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v5, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 125
    iput-boolean v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 136
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 137
    move-object/from16 v13, p2

    iput-object v13, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 138
    move/from16 v14, p3

    iput v14, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 139
    move-object/from16 v15, p4

    iput-object v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 140
    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectionComponentName:Landroid/content/ComponentName;

    .line 141
    move/from16 v12, p6

    iput v12, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUser:I

    .line 142
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.service.voice.HotwordDetectionService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v7

    .line 143
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 146
    new-instance v7, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    move/from16 v11, p7

    invoke-direct {v7, v0, v10, v11}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;Z)V

    iput-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 148
    invoke-virtual {v7}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 150
    if-nez v4, :cond_0

    .line 151
    invoke-virtual {v0, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 152
    return-void

    .line 154
    :cond_0
    iput-object v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 156
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 157
    invoke-direct {v0, v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 161
    new-instance v7, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    const-wide/16 v8, 0x1e

    const-wide/16 v16, 0x1e

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v19, v10

    .end local v10    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    move-wide/from16 v10, v16

    move-object/from16 v12, v18

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionsForDataDelivery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;

    .line 88
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .param p1, "x1"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "x2"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 88
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 88
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 88
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .param p1, "x1"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V

    return-void
.end method

.method private audioServerDied()V
    .locals 2

    .line 193
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static bestEffortClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 884
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Failed closing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static createPipe()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 842
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .local v0, "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 848
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 843
    .end local v0    # "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Failed to create audio stream pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    const/4 v1, 0x0

    return-object v1
.end method

.method private detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 4
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "externalCallback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 464
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "detectFromDspSource"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 505
    .local v0, "internalCallback":Landroid/service/voice/IDspHotwordDetectionCallback;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 507
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 4
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "externalCallback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 411
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "detectFromDspSourceForTest"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 450
    .local v0, "internalCallback":Landroid/service/voice/IDspHotwordDetectionCallback;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 452
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v2, v3}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 458
    monitor-exit v1

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 917
    invoke-static {p0, p1, p2, p3}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 919
    .local v0, "status":I
    if-nez v0, :cond_0

    .line 925
    return-void

    .line 920
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 923
    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 921
    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermissionsForDataDelivery()V
    .locals 1

    .line 894
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 903
    return-void
.end method

.method private handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 16
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 643
    move-object/from16 v9, p0

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "#handleExternalSourceHotwordDetection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v11, v0

    .line 647
    .local v11, "audioSource":Ljava/io/InputStream;
    invoke-static {}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->createPipe()Landroid/util/Pair;

    move-result-object v12

    .line 648
    .local v12, "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    if-nez v12, :cond_0

    .line 650
    return-void

    .line 652
    :cond_0
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    .line 653
    .local v13, "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    .line 655
    .local v14, "serviceAudioSource":Landroid/os/ParcelFileDescriptor;
    iget-object v1, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_0
    iput-object v13, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 657
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    iget-object v0, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioCopyExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;

    invoke-direct {v1, v9, v11, v13}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 688
    iget-object v0, v9, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v15, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v13

    move-object v7, v11

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    invoke-virtual {v0, v15}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 722
    return-void

    .line 657
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initAudioFlingerLocked()V
    .locals 4

    .line 174
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "initAudioFlingerLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "media.audio_flinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    .line 177
    if-eqz v1, :cond_0

    .line 181
    const-string v1, "Obtained audio_flinger binder."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Audio server died before we registered a DeathRecipient; retrying init."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlingerLocked()V

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service media.audio_flinger wasn\'t found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isBound()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$detectFromDspSource$6(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 6
    .param p0, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p1, "internalCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .param p2, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 508
    nop

    .line 510
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    .line 508
    const-wide/16 v3, 0xbb8

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$detectFromDspSourceForTest$5(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 6
    .param p0, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p1, "internalCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .param p2, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    nop

    .line 455
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    .line 453
    const-wide/16 v3, 0xbb8

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$startListeningFromMicLocked$4(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 6
    .param p0, "internalCallback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method static synthetic lambda$updateAudioFlinger$9(Landroid/os/IBinder;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 0
    .param p0, "audioFlinger"    # Landroid/os/IBinder;
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 853
    invoke-interface {p1, p0}, Landroid/service/voice/IHotwordDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$updateContentCaptureManager$10(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 2
    .param p0, "binderService"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 861
    new-instance v0, Landroid/content/ContentCaptureOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p1, p0, v0}, Landroid/service/voice/IHotwordDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static synthetic lambda$updateStateLocked$3(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 1
    .param p0, "options"    # Landroid/os/PersistableBundle;
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p2, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method private restartProcessLocked()V
    .locals 5

    .line 527
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Restarting hotword detection process"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 533
    .local v1, "oldConnection":Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v4, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v4}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to call #rejected"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 545
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    .line 548
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 551
    const-string v2, "Started the new process, issuing #onProcessRestarted"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onProcessRestarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    goto :goto_1

    .line 555
    :catch_1
    move-exception v2

    .line 556
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "Failed to communicate #onProcessRestarted"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v2, :cond_1

    .line 561
    const-string v2, "Process restarted: calling startRecognition() again"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 566
    const-string v2, "Closing external audio stream to hotword detector: process restarted"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    .line 568
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 572
    :cond_2
    const-string v2, "#onProcessRestarted called, unbinding from the old process"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->ignoreConnectionStatusEvents()V

    .line 575
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->unbind()V

    .line 576
    return-void
.end method

.method private startListeningFromMicLocked()V
    .locals 3

    .line 319
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 349
    .local v0, "internalCallback":Landroid/service/voice/IDspHotwordDetectionCallback;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 356
    return-void
.end method

.method private stopListeningLocked()V
    .locals 3

    .line 384
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    const-string v1, "HotwordDetectionConnection"

    if-nez v0, :cond_0

    .line 385
    const-string v0, "Hotword detection is not running"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    .line 390
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    sget-object v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 392
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 393
    const-string v0, "Closing audio stream to hotword detector: stopping requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->bestEffortClose(Ljava/io/Closeable;)V

    .line 396
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 397
    return-void
.end method

.method private static updateAudioFlinger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "connection"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .param p1, "audioFlinger"    # Landroid/os/IBinder;

    .line 853
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 854
    return-void
.end method

.method private static updateContentCaptureManager(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 3
    .param p0, "connection"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 857
    nop

    .line 858
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 859
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 860
    .local v1, "binderService":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(Landroid/view/contentcapture/IContentCaptureManager;)V

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 863
    return-void
.end method

.method private updateServiceIdentity(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 866
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-virtual {p1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 880
    return-void
.end method

.method private updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 4
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 206
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "updateStateAfterProcessStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 262
    return-void
.end method


# virtual methods
.method cancelLocked()V
    .locals 3

    .line 272
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "cancelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->unbind()V

    .line 276
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 277
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    .line 278
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCancellationTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 281
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioServerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 284
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 629
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->isBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mValidatingDspTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mValidatingDspTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mPerformingSoftwareHotwordDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mRestartCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->access$500(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mLastRestartInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method forceRestart()V
    .locals 2

    .line 518
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Requested to restart the service internally. Performing the restart"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$enforcePermissionsForDataDelivery$12$HotwordDetectionConnection()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    .line 896
    const-string v0, "android:record_audio_hotword"

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 897
    .local v0, "hotwordOp":I
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v3, v2, Landroid/media/permission/Identity;->uid:I

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v4, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v5, v2, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    const-string v6, "Providing hotword detection result to VoiceInteractionService"

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    const-string v4, "Providing hotword detection result to VoiceInteractionService"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public synthetic lambda$handleExternalSourceHotwordDetection$7$HotwordDetectionConnection(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "audioSource"    # Ljava/io/InputStream;
    .param p2, "serviceAudioSink"    # Landroid/os/ParcelFileDescriptor;

    .line 660
    move-object v0, p1

    .line 661
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 664
    .local v2, "fos":Ljava/io/OutputStream;
    const/16 v3, 0x400

    :try_start_1
    new-array v4, v3, [B

    .line 666
    .local v4, "buffer":[B
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 668
    .local v6, "bytesRead":I
    if-gez v6, :cond_1

    .line 669
    nop

    .line 677
    .end local v4    # "buffer":[B
    .end local v6    # "bytesRead":I
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v2    # "fos":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 680
    .end local v0    # "source":Ljava/io/InputStream;
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 681
    :try_start_4
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 682
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 675
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "bytesRead":I
    :cond_1
    :try_start_5
    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 676
    .end local v6    # "bytesRead":I
    goto :goto_0

    .line 660
    .end local v4    # "buffer":[B
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "source":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .end local p1    # "audioSource":Ljava/io/InputStream;
    .end local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .restart local p1    # "audioSource":Ljava/io/InputStream;
    .restart local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .end local p1    # "audioSource":Ljava/io/InputStream;
    .end local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_2
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 680
    .end local v0    # "source":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
    .restart local p1    # "audioSource":Ljava/io/InputStream;
    .restart local p2    # "serviceAudioSink":Landroid/os/ParcelFileDescriptor;
    :catchall_5
    move-exception v0

    goto :goto_4

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    const-string v2, "HotwordDetectionConnection"

    const-string v3, "Failed supplying audio data to validator"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 680
    nop

    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_b
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 682
    monitor-exit v0

    .line 683
    :goto_3
    nop

    .line 684
    return-void

    .line 682
    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    .line 680
    :goto_4
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 681
    :try_start_c
    iput-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCurrentAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 682
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 683
    throw v0

    .line 682
    :catchall_7
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0
.end method

.method public synthetic lambda$handleExternalSourceHotwordDetection$8$HotwordDetectionConnection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
    .locals 7
    .param p1, "serviceAudioSource"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "serviceAudioSink"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "audioSource"    # Ljava/io/InputStream;
    .param p6, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .param p7, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    const/4 v2, 0x2

    move-object v0, p7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method

.method public synthetic lambda$new$0$HotwordDetectionConnection()V
    .locals 2

    .line 163
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Time to restart the process, TTL has passed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updateServiceIdentity$11$HotwordDetectionConnection(Landroid/service/voice/IHotwordDetectionService;)V
    .locals 1
    .param p1, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 866
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/IHotwordDetectionService;->ping(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public synthetic lambda$updateStateAfterProcessStart$1$HotwordDetectionConnection(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "service"    # Landroid/service/voice/IHotwordDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 210
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/infra/AndroidFuture;)V

    .line 238
    .local v1, "statusCallback":Landroid/os/IRemoteCallback;
    :try_start_0
    invoke-interface {p3, p1, p2, v1}, Landroid/service/voice/IHotwordDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HotwordDetectionConnection"

    const-string v4, "Failed to updateState for HotwordDetectionService"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public synthetic lambda$updateStateAfterProcessStart$2$HotwordDetectionConnection(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "res"    # Ljava/lang/Void;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 246
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    const-string v1, "HotwordDetectionConnection"

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "updateState timed out"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/16 v2, 0x64

    invoke-interface {v0, v2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to report initialization status UNKNOWN"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 256
    :cond_1
    if-eqz p2, :cond_2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    :goto_1
    return-void
.end method

.method public startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 2
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 364
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "startListeningFromExternalSource"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->handleExternalSourceHotwordDetection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V

    .line 372
    return-void
.end method

.method startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 3
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "callback"    # Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 302
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "startListeningFromMic"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 306
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Hotword validation is already in progress, ignoring."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v0

    return-void

    .line 311
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mPerformingSoftwareHotwordDetection:Z

    .line 313
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V

    .line 314
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopListening()V
    .locals 2

    .line 376
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->stopListeningLocked()V

    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method triggerHardwareRecognitionEventForTestLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 403
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "triggerHardwareRecognitionEventForTestLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    .line 406
    return-void
.end method

.method updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 2
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 289
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLastRestartInstant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->updateStateAfterProcessStart(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 296
    :goto_0
    return-void
.end method
