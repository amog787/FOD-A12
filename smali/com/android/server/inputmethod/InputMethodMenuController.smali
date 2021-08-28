.class public Lcom/android/server/inputmethod/InputMethodMenuController;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;,
        Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSettingsContext:Landroid/content/Context;

.field private mShowImeWithHardKeyboard:Z

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 83
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 84
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 85
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mHandler:Landroid/os/Handler;

    .line 86
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    .line 87
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 88
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;

    .line 89
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 58
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 58
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 58
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/InputMethodMenuController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 58
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method private isScreenLocked()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 238
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0
.end method


# virtual methods
.method getHardKeyboardListener()Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodMenuController$HardKeyboardListener;

    return-object v0
.end method

.method public getSettingsContext(I)Landroid/content/Context;
    .locals 4
    .param p1, "displayId"    # I

    .line 224
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettingsContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 225
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v0

    .line 227
    .local v0, "systemUiContext":Landroid/content/Context;
    const/16 v1, 0x7dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    .line 229
    .local v1, "windowContext":Landroid/content/Context;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030223

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettingsContext:Landroid/content/Context;

    .line 231
    invoke-virtual {v2}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 233
    .end local v0    # "systemUiContext":Landroid/content/Context;
    .end local v1    # "windowContext":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettingsContext:Landroid/content/Context;

    return-object v0
.end method

.method getShowImeWithHardKeyboard()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    return v0
.end method

.method getSwitchingDialogLocked()Landroid/app/AlertDialog;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method hideInputMethodMenu()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 263
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 265
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 266
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 267
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 269
    :cond_0
    return-void
.end method

.method isisInputMethodPickerShownForTestLocked()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    return v0

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$showInputMethodMenu$0$InputMethodMenuController(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 142
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    return-void
.end method

.method public synthetic lambda$showInputMethodMenu$1$InputMethodMenuController(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 169
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 173
    return-void
.end method

.method public synthetic lambda$showInputMethodMenu$2$InputMethodMenuController(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_4

    array-length v2, v1

    if-le v2, p3, :cond_4

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    if-eqz v2, :cond_4

    array-length v3, v2

    if-gt v3, p3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    aget-object v1, v1, p3

    .line 184
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    aget v2, v2, p3

    .line 185
    .local v2, "subtypeId":I
    iput p3, p1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 186
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 188
    if-eqz v1, :cond_3

    .line 189
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 190
    :cond_1
    const/4 v2, -0x1

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 194
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtypeId":I
    :cond_3
    monitor-exit v0

    .line 195
    return-void

    .line 181
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method showInputMethodMenu(ZI)V
    .locals 25
    .param p1, "showAuxSubtypes"    # Z
    .param p2, "displayId"    # I

    .line 95
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isScreenLocked()Z

    move-result v2

    .line 97
    .local v2, "isScreenLocked":Z
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 101
    .local v4, "lastInputMethodSubtypeId":I
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 102
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 103
    move/from16 v6, p1

    :try_start_1
    invoke-virtual {v0, v6, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListForImeMenuLocked(ZZ)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v7, :cond_0

    .line 106
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 212
    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :catchall_0
    move-exception v0

    move/from16 v15, p2

    move/from16 v17, v2

    goto/16 :goto_4

    .line 109
    .restart local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 111
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 112
    :try_start_4
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 113
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 114
    .local v8, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v8, :cond_1

    .line 115
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentMethodId()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "curMethodId":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 117
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 118
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 117
    invoke-static {v10, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v11

    .line 122
    .end local v8    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9    # "curMethodId":Ljava/lang/String;
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v13, v8

    .line 123
    .local v13, "size":I
    new-array v8, v13, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v8, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 124
    new-array v8, v13, [I

    iput-object v8, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    const/4 v8, 0x0

    .line 126
    .local v8, "checkedItem":I
    const/4 v9, 0x0

    move v14, v8

    .end local v8    # "checkedItem":I
    .local v9, "i":I
    .local v14, "checkedItem":I
    :goto_0
    if-ge v9, v13, :cond_5

    .line 127
    :try_start_6
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 128
    .local v8, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v11, v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v11, v10, v9

    .line 129
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    iget v11, v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v11, v10, v9

    .line 130
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 131
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    aget v10, v10, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    .local v10, "subtypeId":I
    if-eq v10, v7, :cond_3

    if-ne v4, v7, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    if-ne v10, v4, :cond_4

    .line 135
    :cond_3
    move v11, v9

    move v14, v11

    .line 126
    .end local v8    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v10    # "subtypeId":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 140
    .end local v9    # "i":I
    :cond_5
    move/from16 v15, p2

    :try_start_7
    invoke-virtual {v1, v15}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSettingsContext(I)Landroid/content/Context;

    move-result-object v7

    move-object v12, v7

    .line 141
    .local v12, "settingsContext":Landroid/content/Context;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 142
    new-instance v8, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v11, v7

    .line 145
    .local v11, "dialogContext":Landroid/content/Context;
    sget-object v7, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v8, 0x101005d

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v8, v7

    .line 148
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 150
    .local v7, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 154
    const-class v9, Landroid/view/LayoutInflater;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move/from16 v17, v2

    .end local v2    # "isScreenLocked":Z
    .local v17, "isScreenLocked":Z
    const v2, 0x109008a

    :try_start_8
    invoke-virtual {v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "tv":Landroid/view/View;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 160
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 161
    const v10, 0x10202ee

    .line 162
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 163
    move-object/from16 v18, v2

    .end local v2    # "tv":Landroid/view/View;
    .local v18, "tv":Landroid/view/View;
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/16 v2, 0x8

    .line 163
    :goto_1
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v10, 0x10202ef

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 167
    .local v2, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 168
    new-instance v10, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v2, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    new-instance v16, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    const v10, 0x109008b

    const/16 v19, 0x0

    move-object/from16 v20, v7

    .end local v7    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .local v20, "dialogIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v7, v16

    move-object/from16 v21, v8

    .end local v8    # "a":Landroid/content/res/TypedArray;
    .local v21, "a":Landroid/content/res/TypedArray;
    move-object v8, v11

    move-object/from16 v22, v9

    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .local v22, "inflater":Landroid/view/LayoutInflater;
    move v9, v10

    move-object v10, v0

    move-object/from16 v23, v11

    .end local v11    # "dialogContext":Landroid/content/Context;
    .local v23, "dialogContext":Landroid/content/Context;
    move v11, v14

    move-object/from16 v24, v12

    .end local v12    # "settingsContext":Landroid/content/Context;
    .local v24, "settingsContext":Landroid/content/Context;
    move-object/from16 v12, v19

    invoke-direct/range {v7 .. v12}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/android/server/inputmethod/InputMethodMenuController$1;)V

    move-object/from16 v7, v16

    .line 177
    .local v7, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    new-instance v8, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1, v7}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V

    .line 196
    .local v8, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v7, v14, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 199
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 201
    .local v9, "w":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 202
    .local v10, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x7dc

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 206
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v11, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 207
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 208
    const-string v11, "Select input method"

    invoke-virtual {v10, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 210
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 211
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 212
    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v2    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v7    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .end local v8    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v9    # "w":Landroid/view/Window;
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "size":I
    .end local v14    # "checkedItem":I
    .end local v18    # "tv":Landroid/view/View;
    .end local v20    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "a":Landroid/content/res/TypedArray;
    .end local v22    # "inflater":Landroid/view/LayoutInflater;
    .end local v23    # "dialogContext":Landroid/content/Context;
    .end local v24    # "settingsContext":Landroid/content/Context;
    monitor-exit v5

    .line 213
    return-void

    .line 212
    .end local v17    # "isScreenLocked":Z
    .local v2, "isScreenLocked":Z
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move/from16 v6, p1

    :goto_2
    move/from16 v15, p2

    :goto_3
    move/from16 v17, v2

    .end local v2    # "isScreenLocked":Z
    .restart local v17    # "isScreenLocked":Z
    :goto_4
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4
.end method

.method updateKeyboardFromSettingsLocked()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 243
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 247
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method
