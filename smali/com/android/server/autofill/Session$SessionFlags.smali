.class final Lcom/android/server/autofill/Session$SessionFlags;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionFlags"
.end annotation


# instance fields
.field private mAugmentedAutofillOnly:Z

.field private mAutofillDisabled:Z

.field private mExpiredResponse:Z

.field private mInlineSupportedByService:Z

.field private mShowingSaveUi:Z

.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/Session;
    .param p2, "x1"    # Lcom/android/server/autofill/Session$1;

    .line 399
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session$SessionFlags;-><init>(Lcom/android/server/autofill/Session;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;

    .line 399
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/autofill/Session$SessionFlags;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;
    .param p1, "x1"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;

    .line 399
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/autofill/Session$SessionFlags;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;
    .param p1, "x1"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/autofill/Session$SessionFlags;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;
    .param p1, "x1"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mAutofillDisabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;

    .line 399
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/autofill/Session$SessionFlags;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;
    .param p1, "x1"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;

    .line 399
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/autofill/Session$SessionFlags;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session$SessionFlags;
    .param p1, "x1"    # Z

    .line 399
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    return p1
.end method
