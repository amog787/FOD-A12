.class Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;
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
    name = "AsciiValidator"
.end annotation


# instance fields
.field private final mMaxLength:I

.field private final mMinLength:I

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)V
    .locals 0
    .param p2, "length"    # I

    .line 846
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 848
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    .line 849
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V
    .locals 0
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .line 851
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 853
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    .line 854
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3
    .param p1, "params"    # [B

    .line 860
    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    if-ge v0, v1, :cond_0

    .line 861
    const/4 v0, 0x4

    return v0

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1900(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BII)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v0

    return v0
.end method
