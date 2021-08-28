.class public final synthetic Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionService;->lambda$onStart$0$MediaSessionService(Landroid/media/AudioPlaybackConfiguration;Z)V

    return-void
.end method
