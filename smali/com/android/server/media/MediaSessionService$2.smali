.class Lcom/android/server/media/MediaSessionService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 247
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$2;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$2;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$400(Lcom/android/server/media/MediaSessionService;)V

    .line 251
    return-void
.end method
