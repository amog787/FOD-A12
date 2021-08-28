.class final Lcom/android/server/input/InputManagerService$InputMonitorHost;
.super Landroid/view/IInputMonitorHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputMonitorHost"
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;

    .line 3235
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    .line 3236
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    .line 3237
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 3246
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$2300(JLandroid/os/IBinder;)V

    .line 3247
    return-void
.end method

.method public pilferPointers()V
    .locals 3

    .line 3241
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$2200(JLandroid/os/IBinder;)V

    .line 3242
    return-void
.end method
