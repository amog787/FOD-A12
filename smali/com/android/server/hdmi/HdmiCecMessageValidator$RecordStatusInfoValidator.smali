.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;
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
    name = "RecordStatusInfoValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .line 823
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 6
    .param p1, "params"    # [B

    .line 826
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 827
    const/4 v0, 0x4

    return v0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/4 v4, 0x7

    invoke-static {v0, v3, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1800(Lcom/android/server/hdmi/HdmiCecMessageValidator;III)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v3, p1, v2

    const/16 v4, 0x9

    const/16 v5, 0xe

    .line 830
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1800(Lcom/android/server/hdmi/HdmiCecMessageValidator;III)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v3, p1, v2

    const/16 v4, 0x10

    const/16 v5, 0x17

    .line 831
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1800(Lcom/android/server/hdmi/HdmiCecMessageValidator;III)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v3, p1, v2

    const/16 v4, 0x1a

    const/16 v5, 0x1b

    .line 832
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1800(Lcom/android/server/hdmi/HdmiCecMessageValidator;III)Z

    move-result v0

    if-nez v0, :cond_2

    aget-byte v0, p1, v2

    const/16 v3, 0x1f

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 829
    :goto_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v0

    return v0
.end method
