.class Lcom/android/server/wm/BlurController$3;
.super Landroid/database/ContentObserver;
.source "BlurController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/BlurController;-><init>(Landroid/content/Context;Landroid/os/PowerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlurController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/BlurController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 83
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {v0}, Lcom/android/server/wm/BlurController;->access$400(Lcom/android/server/wm/BlurController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/BlurController;->access$302(Lcom/android/server/wm/BlurController;Z)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {v0}, Lcom/android/server/wm/BlurController;->access$100(Lcom/android/server/wm/BlurController;)V

    .line 88
    return-void
.end method
