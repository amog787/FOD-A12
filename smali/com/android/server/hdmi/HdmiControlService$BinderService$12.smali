.class Lcom/android/server/hdmi/HdmiControlService$BinderService$12;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioVolume(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$maxIndex:I

.field final synthetic val$newIndex:I

.field final synthetic val$oldIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 2020
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$oldIndex:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$newIndex:I

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$maxIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2023
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 2024
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_0

    .line 2025
    const-string v1, "HdmiControlService"

    const-string v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return-void

    .line 2028
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$oldIndex:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$newIndex:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$maxIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeVolume(III)V

    .line 2029
    return-void
.end method
