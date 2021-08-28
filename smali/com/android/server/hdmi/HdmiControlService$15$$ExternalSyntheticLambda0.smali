.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService$15;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$15;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$15$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$15;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$15$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$15$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$15;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$15$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$15;->lambda$onChange$0$HdmiControlService$15(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method
