.class final Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/LogicalDisplayMapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogicalDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 2181
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .line 2181
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayGroupEventLocked(II)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "event"    # I

    .line 2213
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;II)V

    .line 2214
    return-void
.end method

.method public onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 1
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "event"    # I

    .line 2184
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2206
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$2400(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_0

    .line 2202
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$2300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2203
    goto :goto_0

    .line 2198
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2199
    goto :goto_0

    .line 2194
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2195
    goto :goto_0

    .line 2190
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$2000(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2191
    goto :goto_0

    .line 2186
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    .line 2187
    nop

    .line 2209
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .locals 3

    .line 2218
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$2600(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 2220
    monitor-exit v0

    .line 2221
    return-void

    .line 2220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
