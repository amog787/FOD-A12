.class final Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoftInputShowHideHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;
    }
.end annotation


# static fields
.field private static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

.field private mNextIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 760
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mNextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 757
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 757
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    .line 803
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mNextIndex:I

    .line 804
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    aput-object p1, v1, v0

    .line 805
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mNextIndex:I

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mNextIndex:I

    .line 806
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 809
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 812
    .local v0, "dataFormat":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 813
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->mNextIndex:I

    add-int/2addr v3, v1

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 814
    .local v2, "entry":Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;
    if-nez v2, :cond_0

    .line 815
    goto/16 :goto_1

    .line 817
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoftInputShowHideHistory #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mWallTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mReason:I

    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " inFullscreenMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " focusedWindowName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestWindowName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imeControlTargetName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imeTargetNameFromWm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    const-string v3, " editorInfo: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " inputType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " privateImeOptions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " fieldId (viewId)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " focusedWindowSoftInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    .end local v2    # "entry":Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 854
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
