.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodClientIdSource"
.end annotation


# static fields
.field private static sNextValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 643
    const/4 v0, 0x0

    sput v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    return-void
.end method

.method static declared-synchronized getNext()I
    .locals 3

    const-class v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;

    monitor-enter v0

    .line 649
    :try_start_0
    sget v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    move v2, v1

    .line 650
    .local v2, "result":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    .line 651
    if-gez v1, :cond_0

    .line 652
    const/4 v1, 0x0

    sput v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :cond_0
    monitor-exit v0

    return v2

    .line 648
    .end local v2    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
