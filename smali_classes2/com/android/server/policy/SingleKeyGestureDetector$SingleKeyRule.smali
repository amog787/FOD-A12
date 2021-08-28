.class abstract Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SingleKeyRule"
.end annotation


# instance fields
.field private final mKeyCode:I

.field private final mSupportedGestures:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "supportedGestures"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 94
    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 88
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .param p1, "x1"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->shouldInterceptKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 88
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 88
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    return v0
.end method

.method private shouldInterceptKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .line 101
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private supportLongPress()Z
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private supportVeryLongPress()Z
    .locals 1

    .line 115
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getMaxMultiPressCount()I
    .locals 1

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method onLongPress(J)V
    .locals 0
    .param p1, "eventTime"    # J

    .line 139
    return-void
.end method

.method onMultiPress(JI)V
    .locals 0
    .param p1, "downTime"    # J
    .param p3, "count"    # I

    .line 135
    return-void
.end method

.method abstract onPress(J)V
.end method

.method onVeryLongPress(J)V
    .locals 0
    .param p1, "eventTime"    # J

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", VeryLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MaxMultiPressCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0
.end method
