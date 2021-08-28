.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    }
.end annotation


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field private final mWindowLayers:[Z


# direct methods
.method private constructor <init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "windowLayers"    # [Z
    .param p4, "newDisplayAreaSupplier"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    .line 594
    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 595
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    .line 596
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;Lcom/android/server/wm/DisplayAreaPolicyBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # [Z
    .param p4, "x3"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;
    .param p5, "x4"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$1;

    .line 585
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 585
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
