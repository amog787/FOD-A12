.class final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatcherStartCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field private mInfo:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 698
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 699
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onStart(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManagerService"

    const-string v2, "Failed to notify media projection has stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
