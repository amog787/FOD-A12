.class Lcom/android/server/location/contexthub/ContextHubService$3;
.super Landroid/database/ContentObserver;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 277
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$3;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 280
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$3;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->access$600(Lcom/android/server/location/contexthub/ContextHubService;Z)V

    .line 281
    return-void
.end method
