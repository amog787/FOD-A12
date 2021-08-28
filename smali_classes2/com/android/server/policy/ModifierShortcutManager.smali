.class Lcom/android/server/policy/ModifierShortcutManager;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConsumeSearchKeyUp:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchKeyShortcutPending:Z

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 76
    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 95
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/android/server/policy/ModifierShortcutManager;->loadShortcuts()V

    .line 97
    return-void
.end method

.method private getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 5
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 115
    const/4 v0, 0x0

    .line 118
    .local v0, "shortcut":Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 119
    .local v1, "isShiftOn":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 122
    .local v2, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;>;"
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 123
    .local v3, "shortcutChar":I
    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;

    .line 128
    :cond_2
    if-nez v0, :cond_3

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 130
    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;

    .line 135
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method

.method private handleIntentShortcut(Landroid/view/KeyCharacterMap;II)Z
    .locals 7
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 283
    iget-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    const-string v1, "ShortcutManager"

    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iput-boolean v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 286
    iput-boolean v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    goto :goto_0

    .line 288
    :cond_0
    return v4

    .line 290
    :cond_1
    const/high16 v0, 0x70000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    .line 292
    const v0, -0x70001

    and-int/2addr p3, v0

    .line 313
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/ModifierShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v0

    .line 314
    .local v0, "shortcutIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_1

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping shortcut key combination because the activity to which it is registered was not found: META+ or SEARCH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v1, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v3

    .line 325
    :cond_2
    return v4

    .line 295
    .end local v0    # "shortcutIntent":Landroid/content/Intent;
    :cond_3
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 297
    const-string v4, "android.intent.action.MAIN"

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 298
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    goto :goto_2

    .line 301
    :catch_1
    move-exception v2

    .line 302
    .restart local v2    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-static {v1, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_2
    return v3

    .line 309
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    return v4
.end method

.method private handleShortcutService(II)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 240
    int-to-long v0, p1

    .line 241
    .local v0, "shortcutCode":J
    and-int/lit16 v2, p2, 0x1000

    if-eqz v2, :cond_0

    .line 242
    const-wide v2, 0x100000000000L

    or-long/2addr v0, v2

    .line 245
    :cond_0
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    .line 246
    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    .line 249
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 250
    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    .line 253
    :cond_2
    const/high16 v2, 0x10000

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    .line 254
    const-wide/high16 v2, 0x1000000000000L

    or-long/2addr v0, v2

    .line 257
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IShortcutService;

    .line 258
    .local v2, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v2, :cond_4

    .line 260
    :try_start_0
    invoke-interface {v2, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v3

    .line 262
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 264
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 266
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private loadShortcuts()V
    .locals 21

    .line 139
    move-object/from16 v1, p0

    const-string v2, "Got exception parsing bookmarks."

    const-string v3, "ShortcutManager"

    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 141
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1170004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0

    .line 143
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const-string v0, "bookmarks"

    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 146
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 148
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 149
    goto/16 :goto_5

    .line 152
    :cond_0
    const-string v0, "bookmark"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    goto/16 :goto_5

    .line 156
    :cond_1
    const-string v0, "package"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 157
    .local v8, "packageName":Ljava/lang/String;
    const-string v0, "class"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 158
    .local v9, "className":Ljava/lang/String;
    const-string v0, "shortcut"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 159
    .local v10, "shortcutName":Ljava/lang/String;
    const-string v0, "category"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 160
    .local v11, "categoryName":Ljava/lang/String;
    const-string v0, "shift"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 162
    .local v7, "shiftName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, "/"

    if-eqz v0, :cond_2

    .line 163
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get shortcut for: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    goto :goto_0

    .line 167
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v14, v0

    .line 168
    .local v14, "shortcutChar":I
    if-eqz v7, :cond_3

    const-string v0, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v13

    :goto_1
    move v15, v0

    .line 172
    .local v15, "isShiftShortcut":Z
    const-string v13, "android.intent.action.MAIN"

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 173
    const/16 v17, 0x0

    .line 174
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v0

    .line 176
    .local v18, "componentName":Landroid/content/ComponentName;
    const v6, 0xc2000

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .end local v18    # "componentName":Landroid/content/ComponentName;
    .local v5, "componentName":Landroid/content/ComponentName;
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_3
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 194
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_2

    .line 180
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v20, v18

    .line 181
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x1

    :try_start_4
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v0, v6

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 183
    .local v16, "packages":[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    aget-object v6, v16, v6

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v0

    .line 185
    const v6, 0xc2000

    :try_start_5
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 193
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    nop

    .line 196
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v6, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 200
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .local v0, "title":Ljava/lang/String;
    goto :goto_3

    .line 189
    .end local v0    # "title":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "packages":[Ljava/lang/String;
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 190
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to add bookmark: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v20

    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v3, v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    move-object/from16 v5, v19

    goto/16 :goto_0

    .line 172
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    move-object/from16 v19, v5

    .line 200
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v11, :cond_6

    .line 201
    invoke-static {v13, v11}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v6, v0

    .line 202
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, ""

    .line 209
    .local v0, "title":Ljava/lang/String;
    :goto_3
    new-instance v5, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 210
    .local v5, "shortcut":Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    if-eqz v15, :cond_5

    .line 211
    iget-object v12, v1, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 213
    :cond_5
    iget-object v12, v1, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    .end local v0    # "title":Ljava/lang/String;
    .end local v5    # "shortcut":Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "shiftName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "shortcutName":Ljava/lang/String;
    .end local v11    # "categoryName":Ljava/lang/String;
    .end local v14    # "shortcutChar":I
    .end local v15    # "isShiftShortcut":Z
    :goto_4
    move-object/from16 v5, v19

    goto/16 :goto_0

    .line 204
    .restart local v7    # "shiftName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "shortcutName":Ljava/lang/String;
    .restart local v11    # "categoryName":Ljava/lang/String;
    .restart local v14    # "shortcutChar":I
    .restart local v15    # "isShiftShortcut":Z
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add bookmark for shortcut "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": missing package/class or category attributes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 206
    move-object/from16 v5, v19

    goto/16 :goto_0

    .line 218
    .end local v7    # "shiftName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "shortcutName":Ljava/lang/String;
    .end local v11    # "categoryName":Ljava/lang/String;
    .end local v14    # "shortcutChar":I
    .end local v15    # "isShiftShortcut":Z
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 217
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    nop

    .line 221
    :goto_6
    return-void
.end method


# virtual methods
.method interceptKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    return v1

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    .line 340
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 341
    .local v2, "keyCode":I
    const/16 v3, 0x54

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 342
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 343
    iput-boolean v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 344
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_0

    .line 346
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 347
    iget-boolean v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_2

    .line 348
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 349
    return v4

    .line 352
    :cond_2
    :goto_0
    return v1

    .line 355
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    return v1

    .line 359
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 360
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/policy/ModifierShortcutManager;->handleIntentShortcut(Landroid/view/KeyCharacterMap;II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 361
    return v4

    .line 364
    :cond_5
    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/ModifierShortcutManager;->handleShortcutService(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 365
    return v4

    .line 368
    :cond_6
    return v1
.end method

.method registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 3
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    .line 226
    .local v0, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Key already exists."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 231
    return-void
.end method
