.class Lcom/android/server/wm/BlurController$1;
.super Landroid/view/TunnelModeEnabledListener;
.source "BlurController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlurController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlurController;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/BlurController;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-direct {p0, p2}, Landroid/view/TunnelModeEnabledListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onTunnelModeEnabledChanged(Z)V
    .locals 1
    .param p1, "tunnelModeEnabled"    # Z

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {v0, p1}, Lcom/android/server/wm/BlurController;->access$002(Lcom/android/server/wm/BlurController;Z)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {v0}, Lcom/android/server/wm/BlurController;->access$100(Lcom/android/server/wm/BlurController;)V

    .line 57
    return-void
.end method
