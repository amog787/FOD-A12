.class Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;
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
    name = "AnalogueTimerValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .line 911
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 5
    .param p1, "params"    # [B

    .line 914
    array-length v0, p1

    const/4 v1, 0x4

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 915
    return v1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    .line 918
    invoke-static {v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2100(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v4, p1, v3

    .line 919
    invoke-static {v0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2200(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    .line 920
    invoke-static {v0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2300(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    .line 921
    invoke-static {v0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2400(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v1, p1, v1

    .line 922
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2500(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    .line 923
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2400(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    .line 924
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2600(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    .line 925
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2700(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/16 v1, 0x8

    .line 927
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    .line 926
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2800(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    .line 928
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$2900(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    .line 917
    :goto_0
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v0

    return v0
.end method
