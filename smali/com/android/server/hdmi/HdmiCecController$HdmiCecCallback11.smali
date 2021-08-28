.class final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;
.super Landroid/hardware/tv/cec/V1_1/IHdmiCecCallback$Stub;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HdmiCecCallback11"
.end annotation


# instance fields
.field private final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 0
    .param p1, "hdmiCecCallback"    # Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 1172
    invoke-direct {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCecCallback$Stub;-><init>()V

    .line 1173
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 1174
    return-void
.end method


# virtual methods
.method public onCecMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)V
    .locals 4
    .param p1, "message"    # Landroid/hardware/tv/cec/V1_0/CecMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    iget-object v0, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1189
    .local v0, "body":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1190
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget v2, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    iget v3, p1, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    .line 1193
    return-void
.end method

.method public onCecMessage_1_1(Landroid/hardware/tv/cec/V1_1/CecMessage;)V
    .locals 4
    .param p1, "message"    # Landroid/hardware/tv/cec/V1_1/CecMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    iget-object v0, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1180
    .local v0, "body":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1181
    iget-object v2, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget v2, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    iget v3, p1, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    .line 1184
    return-void
.end method

.method public onHotplugEvent(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/tv/cec/V1_0/HotplugEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget v1, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->portId:I

    iget-boolean v2, p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->connected:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    .line 1198
    return-void
.end method