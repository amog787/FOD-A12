.class public final Lcom/android/server/audio/FadeOutManager;
.super Ljava/lang/Object;
.source "FadeOutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FADEABLE_USAGES:[I

.field private static final FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field static final FADE_OUT_DURATION_MS:J = 0x7d0L

.field private static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field private static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.FadeOutManager"

.field private static final UNFADEABLE_CONTENT_TYPES:[I

.field private static final UNFADEABLE_PLAYER_TYPES:[I


# instance fields
.field private final mFadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/FadeOutManager$FadedOutApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 45
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 49
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 51
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v2, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 53
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 56
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_PLAYER_TYPES:[I

    .line 61
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    sput-object v3, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    .line 65
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    .line 71
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 71
    return-void

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()Landroid/media/VolumeShaper$Configuration;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method static synthetic access$100()Landroid/media/VolumeShaper$Operation;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/VolumeShaper$Operation;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static canBeFadedOut(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 3
    .param p0, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .line 104
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_PLAYER_TYPES:[I

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    return v1

    .line 108
    :cond_0
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    .line 109
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    .line 108
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    return v1

    .line 116
    :cond_1
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    return v1

    .line 122
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static canCauseFadeOut(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .locals 3
    .param p0, "requester"    # Lcom/android/server/audio/FocusRequester;
    .param p1, "loser"    # Lcom/android/server/audio/FocusRequester;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 88
    return v1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 92
    return v1

    .line 95
    :cond_1
    return v2
.end method

.method static getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .locals 4
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 126
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    return-wide v1

    .line 129
    :cond_0
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    return-wide v1

    .line 132
    :cond_1
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method


# virtual methods
.method declared-synchronized checkFade(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 2
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .local v0, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    if-nez v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    .end local p1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 199
    .local v1, "da":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v1    # "da":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    goto :goto_0

    .line 201
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized fadeOutUid(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p2, "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 141
    :try_start_0
    const-string v0, "AudioService.FadeOutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 146
    .local v0, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 147
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_0

    .line 149
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p1    # "uid":I
    .end local p2    # "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized forgetUid(I)V
    .locals 0
    .param p1, "uid"    # I

    monitor-enter p0

    .line 164
    monitor-exit p0

    return-void
.end method

.method declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 3
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 190
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v1, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    if-nez v1, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 184
    .end local v0    # "uid":I
    .end local v1    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    .end local p1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unfadeOutUid(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p2, "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 152
    :try_start_0
    const-string v0, "AudioService.FadeOutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unfadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v0, "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    if-nez v0, :cond_0

    .line 155
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeUnfadeAll(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 151
    .end local v0    # "fa":Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    .end local p0    # "this":Lcom/android/server/audio/FadeOutManager;
    .end local p1    # "uid":I
    .end local p2    # "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
