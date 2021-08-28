.class Lcom/android/server/profcollect/ProfcollectForwardingService$1;
.super Landroid/os/UpdateEngineCallback;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;->registerOTAObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 286
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 297
    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "percent"    # F

    .line 289
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->access$900(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 292
    :cond_0
    return-void
.end method
