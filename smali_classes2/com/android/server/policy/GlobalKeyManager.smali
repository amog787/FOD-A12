.class final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DISPATCH_WHEN_NON_INTERACTIVE:Ljava/lang/String; = "dispatchWhenNonInteractive"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mBeganFromNonInteractive:Z

.field private mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    const-string v0, "GlobalKeyManager"

    const/4 v1, 0x0

    .line 127
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 128
    const-string v2, "global_keys"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 129
    const-string v2, "version"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 132
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 133
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 135
    goto :goto_1

    .line 137
    :cond_0
    const-string v5, "key"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    const-string v5, "keyCode"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "keyCodeName":Ljava/lang/String;
    const-string v6, "component"

    invoke-interface {v1, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "componentName":Ljava/lang/String;
    const-string v7, "dispatchWhenNonInteractive"

    .line 141
    invoke-interface {v1, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "dispatchWhenNonInteractive":Ljava/lang/String;
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, "keyCode":I
    if-eqz v8, :cond_1

    .line 144
    iget-object v9, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-direct {v10, p0, v6, v7}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;-><init>(Lcom/android/server/policy/GlobalKeyManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "keyCodeName":Ljava/lang/String;
    .end local v6    # "componentName":Ljava/lang/String;
    .end local v7    # "dispatchWhenNonInteractive":Ljava/lang/String;
    .end local v8    # "keyCode":I
    :cond_1
    goto :goto_0

    .line 157
    .end local v2    # "version":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 158
    :goto_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    .line 157
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "I/O exception reading global keys file"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 158
    goto :goto_2

    .line 152
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "XML parser exception reading global keys file"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    nop

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_3

    .line 158
    goto :goto_2

    .line 150
    :catch_2
    move-exception v2

    .line 151
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "global keys file not found"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    nop

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v1, :cond_3

    .line 158
    goto :goto_2

    .line 161
    :cond_3
    :goto_3
    return-void

    .line 157
    :goto_4
    if-eqz v1, :cond_4

    .line 158
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 160
    :cond_4
    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 165
    .local v0, "numKeys":I
    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyMapping.size=0"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyMapping={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->access$000(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    const-string v2, ",dispatchWhenNonInteractive="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->access$100(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "}"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 78
    .local v0, "action":Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    if-eqz v0, :cond_1

    .line 79
    new-instance v2, Lcom/android/server/policy/GlobalKeyIntent;

    invoke-static {v0}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->access$000(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    invoke-direct {v2, v3, p3, v4}, Lcom/android/server/policy/GlobalKeyIntent;-><init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V

    .line 80
    invoke-virtual {v2}, Lcom/android/server/policy/GlobalKeyIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 81
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 84
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 86
    :cond_0
    return v4

    .line 89
    .end local v0    # "action":Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return v1
.end method

.method setBeganFromNonInteractive()V
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 113
    return-void
.end method

.method shouldDispatchFromNonInteractive(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 104
    .local v0, "action":Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    return v1

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->access$100(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result v1

    return v1
.end method

.method shouldHandleGlobalKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
