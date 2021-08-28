.class Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAnalogueServiceValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 4
    .param p1, "params"    # [B

    .line 1030
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1031
    return v1

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2700(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .line 1034
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2800(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    .line 1035
    invoke-static {v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2900(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 1033
    :goto_0
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v0

    return v0
.end method
