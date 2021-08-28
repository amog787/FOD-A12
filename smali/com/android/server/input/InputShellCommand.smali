.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field private static final DEFAULT_BUTTON_STATE:I = 0x0

.field private static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final DEFAULT_EDGE_FLAGS:I = 0x0

.field private static final DEFAULT_FLAGS:I = 0x0

.field private static final DEFAULT_META_STATE:I = 0x0

.field private static final DEFAULT_PRECISION_X:F = 1.0f

.field private static final DEFAULT_PRECISION_Y:F = 1.0f

.field private static final DEFAULT_PRESSURE:F = 1.0f

.field private static final DEFAULT_SIZE:F = 1.0f

.field private static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field private static final INVALID_DISPLAY_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for display ID."

.field private static final NO_PRESSURE:F

.field private static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/server/input/InputShellCommand$1;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand$1;-><init>()V

    sput-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private getAction()I
    .locals 7

    .line 418
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "actionString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 429
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :pswitch_0
    return v3

    .line 425
    :pswitch_1
    return v4

    .line 423
    :pswitch_2
    return v5

    .line 421
    :pswitch_3
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_3
        0x201ca2 -> :sswitch_2
        0x2433d1 -> :sswitch_1
        0x760d227a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDisplayId()I
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "displayArg":Ljava/lang/String;
    const-string v1, "INVALID_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 87
    return v2

    .line 88
    :cond_0
    const-string v1, "DEFAULT_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 89
    return v3

    .line 92
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, "displayId":I
    if-ne v1, v2, :cond_2

    .line 94
    return v2

    .line 96
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 97
    .end local v1    # "displayId":I
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error: Invalid arguments for display ID."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getInputDeviceId(I)I
    .locals 7
    .param p1, "inputSource"    # I

    .line 74
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 75
    .local v0, "devIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 76
    .local v4, "devId":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 77
    .local v5, "inputDev":Landroid/view/InputDevice;
    invoke-virtual {v5, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    return v4

    .line 75
    .end local v4    # "devId":I
    .end local v5    # "inputDev":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_1
    return v2
.end method

.method private getSource(II)I
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "defaultSource"    # I

    .line 147
    if-nez p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private getToolType(I)I
    .locals 1
    .param p1, "inputSource"    # I

    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 159
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 155
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 164
    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x4002 -> :sswitch_0
        0xc002 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x100008 -> :sswitch_2
        0x200000 -> :sswitch_2
    .end sparse-switch
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 69
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 71
    return-void
.end method

.method private injectKeyEventAsync(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 489
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 491
    return-void
.end method

.method private injectMotionEvent(IIJJFFFI)V
    .locals 21
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "when"    # J
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pressure"    # F
    .param p10, "displayId"    # I

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    new-array v9, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 119
    .local v9, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 120
    .local v8, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 121
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v9, v2

    .line 122
    aget-object v3, v9, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 123
    aget-object v3, v9, v2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 124
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v8, v2

    .line 125
    aget-object v3, v8, v2

    move/from16 v6, p7

    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 126
    aget-object v3, v8, v2

    move/from16 v4, p8

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 127
    aget-object v3, v8, v2

    move/from16 v5, p9

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 128
    aget-object v3, v8, v2

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v6, p7

    move/from16 v4, p8

    move/from16 v5, p9

    .line 130
    .end local v2    # "i":I
    const/4 v1, -0x1

    move/from16 v2, p10

    if-ne v2, v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x0

    .end local p10    # "displayId":I
    .local v1, "displayId":I
    goto :goto_1

    .line 134
    .end local v1    # "displayId":I
    .restart local p10    # "displayId":I
    :cond_1
    move v1, v2

    .end local p10    # "displayId":I
    .restart local v1    # "displayId":I
    :goto_1
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 136
    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v18, 0x0

    .line 134
    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move/from16 v6, p2

    move-object/from16 v19, v8

    .end local v8    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v19, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move-object v8, v9

    move-object/from16 v20, v9

    .end local v9    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .local v20, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v9, v19

    move/from16 v16, p1

    move/from16 v17, v1

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 138
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 140
    return-void
.end method

.method private lerp(FFF)F
    .locals 1
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "alpha"    # F

    .line 143
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private runDragAndDrop(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 394
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 395
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 396
    return-void
.end method

.method private runKeyCombination(II)V
    .locals 6
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 468
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "arg":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v1, "keyCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 472
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    .line 473
    .local v2, "keyCode":I
    if-eqz v2, :cond_0

    .line 476
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 478
    .end local v2    # "keyCode":I
    goto :goto_0

    .line 474
    .restart local v2    # "keyCode":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown keycode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    .end local v2    # "keyCode":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 485
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILjava/util/ArrayList;I)V

    .line 486
    return-void

    .line 482
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keycombination requires at least 2 keycodes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private runKeyEvent(II)V
    .locals 4
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 286
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "--longpress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 288
    .local v1, "longpress":Z
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_0
    const-string v2, "--doubletap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 292
    .local v2, "doubleTap":Z
    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    .line 295
    .local v3, "keycode":I
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyDoubleTap(III)V

    .line 296
    return-void

    .line 301
    .end local v2    # "doubleTap":Z
    .end local v3    # "keycode":I
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, "keycode":I
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 303
    .end local v2    # "keycode":I
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_2

    .line 304
    return-void

    .line 303
    :cond_2
    goto :goto_0
.end method

.method private runMotionEvent(II)V
    .locals 9
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 434
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 435
    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v0

    .line 436
    .local v0, "action":I
    const/4 v1, 0x0

    .local v1, "x":F
    const/4 v2, 0x0

    .line 437
    .local v2, "y":F
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "xString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "yString":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 447
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 448
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v7, v1

    move v8, v2

    goto :goto_1

    .line 452
    .end local v3    # "xString":Ljava/lang/String;
    .end local v4    # "yString":Ljava/lang/String;
    :cond_1
    move v7, v1

    move v8, v2

    goto :goto_1

    .line 440
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 441
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v7, v1

    move v8, v2

    .line 452
    .end local v1    # "x":F
    .end local v2    # "y":F
    .local v7, "x":F
    .local v8, "y":F
    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    .line 453
    return-void
.end method

.method private runPress(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 348
    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    .line 350
    return-void
.end method

.method private runRoll(II)V
    .locals 2
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 399
    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 400
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 401
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 400
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    .line 402
    return-void
.end method

.method private runSwipe(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 353
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 355
    return-void
.end method

.method private runTap(II)V
    .locals 2
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 335
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 336
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 337
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 336
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    .line 338
    return-void
.end method

.method private runText(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 246
    const/16 v0, 0x101

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 247
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    .line 248
    return-void
.end method

.method private sendKeyCombination(ILjava/util/ArrayList;I)V
    .locals 21
    .param p1, "inputSource"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 494
    .local p2, "keyCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 495
    .local v15, "now":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 496
    .local v14, "count":I
    new-array v13, v14, [Landroid/view/KeyEvent;

    .line 497
    .local v13, "events":[Landroid/view/KeyEvent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v14, :cond_0

    .line 498
    new-instance v17, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v2, v17

    move-wide v3, v15

    move-wide v5, v15

    move/from16 v12, v18

    move-object/from16 v20, v13

    .end local v13    # "events":[Landroid/view/KeyEvent;
    .local v20, "events":[Landroid/view/KeyEvent;
    move/from16 v13, v19

    move/from16 v18, v14

    .end local v14    # "count":I
    .local v18, "count":I
    move/from16 v14, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 501
    .local v2, "event":Landroid/view/KeyEvent;
    move/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 502
    move-object/from16 v4, v20

    .end local v20    # "events":[Landroid/view/KeyEvent;
    .local v4, "events":[Landroid/view/KeyEvent;
    aput-object v2, v4, v0

    .line 497
    .end local v2    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v0, v0, 0x1

    move-object v13, v4

    move/from16 v14, v18

    goto :goto_0

    .end local v4    # "events":[Landroid/view/KeyEvent;
    .end local v18    # "count":I
    .restart local v13    # "events":[Landroid/view/KeyEvent;
    .restart local v14    # "count":I
    :cond_0
    move/from16 v3, p3

    move-object v4, v13

    move/from16 v18, v14

    .line 505
    .end local v0    # "i":I
    .end local v13    # "events":[Landroid/view/KeyEvent;
    .end local v14    # "count":I
    .restart local v4    # "events":[Landroid/view/KeyEvent;
    .restart local v18    # "count":I
    array-length v0, v4

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_1

    aget-object v6, v4, v5

    .line 508
    .local v6, "event":Landroid/view/KeyEvent;
    invoke-direct {v1, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    .line 505
    .end local v6    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 512
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_2

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 517
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    array-length v0, v4

    :goto_3
    if-ge v2, v0, :cond_2

    aget-object v5, v4, v2

    .line 518
    .local v5, "event":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    .line 517
    .end local v5    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 520
    :cond_2
    return-void
.end method

.method private sendKeyDoubleTap(III)V
    .locals 3
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "displayId"    # I

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 327
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 331
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    .line 332
    return-void
.end method

.method private sendKeyEvent(IIZI)V
    .locals 17
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "longpress"    # Z
    .param p4, "displayId"    # I

    .line 307
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 309
    .local v14, "now":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p2

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 312
    .local v1, "event":Landroid/view/KeyEvent;
    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 314
    invoke-direct {v0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 315
    const/4 v3, 0x1

    if-eqz p3, :cond_0

    .line 317
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    add-long/2addr v4, v14

    .line 318
    .local v4, "nextEventTime":J
    const/16 v6, 0x80

    invoke-static {v1, v4, v5, v3, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 321
    .end local v4    # "nextEventTime":J
    :cond_0
    invoke-static {v1, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 322
    return-void
.end method

.method private sendMotionEvent(IIFFI)V
    .locals 15
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "displayId"    # I

    .line 457
    move/from16 v11, p2

    const/4 v0, 0x0

    .line 459
    .local v0, "pressure":F
    if-eqz v11, :cond_1

    const/4 v1, 0x2

    if-ne v11, v1, :cond_0

    goto :goto_0

    :cond_0
    move v12, v0

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v12, v0

    .line 463
    .end local v0    # "pressure":F
    .local v12, "pressure":F
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 464
    .local v13, "now":J
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v13

    move-wide v5, v13

    move/from16 v7, p3

    move/from16 v8, p4

    move v9, v12

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 465
    return-void
.end method

.method private sendMove(IFFI)V
    .locals 13
    .param p1, "inputSource"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "displayId"    # I

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 413
    .local v11, "now":J
    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 415
    return-void
.end method

.method private sendSwipe(IIZ)V
    .locals 28
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I
    .param p3, "isDragDrop"    # Z

    .line 359
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 360
    .local v13, "x1":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 361
    .local v14, "y1":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 362
    .local v15, "x2":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 363
    .local v11, "y2":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v16

    .line 364
    .local v16, "durationArg":Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 365
    .local v0, "duration":I
    :goto_0
    if-gez v0, :cond_1

    .line 366
    const/16 v0, 0x12c

    move v10, v0

    goto :goto_1

    .line 365
    :cond_1
    move v10, v0

    .line 369
    .end local v0    # "duration":I
    .local v10, "duration":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 370
    .local v17, "down":J
    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v17

    move v8, v13

    move v9, v14

    move/from16 v19, v10

    .end local v10    # "duration":I
    .local v19, "duration":I
    move v10, v0

    move/from16 v20, v14

    move v14, v11

    .end local v11    # "y2":F
    .local v14, "y2":F
    .local v20, "y1":F
    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 372
    if-eqz p3, :cond_2

    .line 375
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_2

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 380
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 381
    .local v0, "now":J
    move/from16 v11, v19

    .end local v19    # "duration":I
    .local v11, "duration":I
    int-to-long v2, v11

    add-long v21, v17, v2

    move-wide/from16 v23, v0

    .line 382
    .end local v0    # "now":J
    .local v21, "endTime":J
    .local v23, "now":J
    :goto_3
    cmp-long v0, v23, v21

    if-gez v0, :cond_3

    .line 383
    sub-long v9, v23, v17

    .line 384
    .local v9, "elapsedTime":J
    long-to-float v0, v9

    int-to-float v1, v11

    div-float/2addr v0, v1

    .line 385
    .local v0, "alpha":F
    const/4 v3, 0x2

    .line 386
    invoke-direct {v12, v13, v15, v0}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    move/from16 v6, v20

    .end local v20    # "y1":F
    .local v6, "y1":F
    invoke-direct {v12, v6, v14, v0}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    .line 385
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v17

    move/from16 v25, v6

    .end local v6    # "y1":F
    .local v25, "y1":F
    move-wide/from16 v6, v23

    move-wide/from16 v26, v9

    .end local v9    # "elapsedTime":J
    .local v26, "elapsedTime":J
    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v19, v11

    .end local v11    # "duration":I
    .restart local v19    # "duration":I
    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 388
    .end local v0    # "alpha":F
    .end local v26    # "elapsedTime":J
    move/from16 v11, v19

    move/from16 v20, v25

    goto :goto_3

    .line 389
    .end local v19    # "duration":I
    .end local v25    # "y1":F
    .restart local v11    # "duration":I
    .restart local v20    # "y1":F
    :cond_3
    move/from16 v19, v11

    .end local v11    # "duration":I
    .restart local v19    # "duration":I
    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v23

    move v8, v15

    move v9, v14

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 391
    return-void
.end method

.method private sendTap(IFFI)V
    .locals 13
    .param p1, "inputSource"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "displayId"    # I

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 342
    .local v11, "now":J
    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 344
    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 345
    return-void
.end method

.method private sendText(ILjava/lang/String;I)V
    .locals 8
    .param p1, "source"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 259
    .local v1, "escapeFlag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 260
    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    .line 263
    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 264
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    .line 268
    const/4 v1, 0x1

    .line 259
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 273
    .local v2, "chars":[C
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 274
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v3, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v4

    .line 275
    .local v4, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 276
    aget-object v6, v4, v5

    .line 277
    .local v6, "e":Landroid/view/KeyEvent;
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    if-eq p1, v7, :cond_3

    .line 278
    invoke-virtual {v6, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 280
    :cond_3
    invoke-virtual {v6, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 281
    invoke-direct {p0, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 275
    .end local v6    # "e":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 283
    .end local v5    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 171
    move-object v0, p1

    .line 172
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, "inputSource":I
    sget-object v2, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    const/4 v2, -0x1

    .line 181
    .local v2, "displayId":I
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result v2

    .line 183
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_1
    :try_start_0
    const-string/jumbo v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto :goto_0

    .line 189
    :cond_2
    const-string/jumbo v3, "keyevent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_0

    .line 191
    :cond_3
    const-string/jumbo v3, "tap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_0

    .line 193
    :cond_4
    const-string/jumbo v3, "swipe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 194
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_0

    .line 195
    :cond_5
    const-string v3, "draganddrop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_0

    .line 197
    :cond_6
    const-string/jumbo v3, "press"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 198
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_0

    .line 199
    :cond_7
    const-string/jumbo v3, "roll"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_0

    .line 201
    :cond_8
    const-string/jumbo v3, "motionevent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 202
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_0

    .line 203
    :cond_9
    const-string/jumbo v3, "keycombination"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 204
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_0

    .line 206
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    nop

    .line 211
    const/4 v3, 0x0

    return v3

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Invalid arguments for command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final onHelp()V
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 217
    .local v0, "out":Ljava/io/PrintWriter;
    :try_start_0
    const-string v1, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 219
    const-string v1, "The sources are: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    sget-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "src":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .end local v2    # "src":Ljava/lang/String;
    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 224
    const-string v1, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, -0x1

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 228
    const-string v1, "The commands and default sources are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string v1, "      text <string> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v1, "      keyevent [--longpress|--doubletap] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v1, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v1, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string v1, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v1, "      press (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v1, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v1, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v1, "      keycombination <key code 1> <key code 2> ... (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 243
    .end local v0    # "out":Ljava/io/PrintWriter;
    :cond_1
    return-void

    .line 216
    .restart local v0    # "out":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method
