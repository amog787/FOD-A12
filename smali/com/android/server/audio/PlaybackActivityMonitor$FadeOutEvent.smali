.class final Lcom/android/server/audio/PlaybackActivityMonitor$FadeOutEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FadeOutEvent"
.end annotation


# direct methods
.method constructor <init>(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 0
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "skipRamp"    # Z

    .line 1080
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 1081
    return-void
.end method


# virtual methods
.method getVSAction()Ljava/lang/String;
    .locals 1

    .line 1076
    const-string v0, "fading out"

    return-object v0
.end method
