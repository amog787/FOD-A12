.class Lcom/android/server/hdmi/HdmiCecConfig$Value;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Value"
.end annotation


# instance fields
.field private final mIntValue:Ljava/lang/Integer;

.field private final mStringValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Integer;

    .line 210
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 213
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/String;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 207
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 208
    return-void
.end method


# virtual methods
.method getIntValue()Ljava/lang/Integer;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-object v0
.end method

.method getStringValue()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
