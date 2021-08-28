.class Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecAtomWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageReportedGenericArgs"
.end annotation


# instance fields
.field final mDestinationLogicalAddress:I

.field final mDirection:I

.field final mInitiatorLogicalAddress:I

.field final mOpcode:I

.field final mSendMessageResult:I

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "direction"    # I
    .param p4, "initiatorLogicalAddress"    # I
    .param p5, "destinationLogicalAddress"    # I
    .param p6, "opcode"    # I
    .param p7, "sendMessageResult"    # I

    .line 181
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    .line 183
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    .line 184
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    .line 185
    iput p5, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    .line 186
    iput p6, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    .line 187
    iput p7, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    .line 188
    return-void
.end method
