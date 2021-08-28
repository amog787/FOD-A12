.class final Lcom/android/server/inputmethod/AdditionalSubtypeUtils;
.super Ljava/lang/Object;
.source "AdditionalSubtypeUtils.java"


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field private static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "AdditionalSubtypeUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;
    .locals 3
    .param p0, "inputMethodDir"    # Ljava/io/File;

    .line 92
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "subtypes.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v0, "subtypeFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    const-string v2, "input-subtypes"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getInputMethodDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 78
    if-nez p0, :cond_0

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    :goto_0
    nop

    .line 81
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "inputmethod"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static load(Landroid/util/ArrayMap;I)V
    .locals 24
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;I)V"
        }
    .end annotation

    .line 196
    .local p0, "allSubtypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const-string v0, "1"

    const-string v1, "AdditionalSubtypeUtils"

    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->clear()V

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v2

    .line 199
    .local v2, "subtypesFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 205
    .local v4, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v5

    .line 208
    .local v5, "type":I
    :cond_1
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    move v5, v6

    .line 209
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    .line 213
    :cond_2
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "firstNodeName":Ljava/lang/String;
    const-string/jumbo v9, "subtypes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 217
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    .line 218
    .local v9, "depth":I
    const/4 v10, 0x0

    .line 219
    .local v10, "currentImiId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 220
    .local v11, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_0
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v5, v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    .line 221
    :try_start_2
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-le v12, v9, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v13, p0

    move-object/from16 v16, v2

    goto/16 :goto_5

    .line 203
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "type":I
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .end local v10    # "currentImiId":Ljava/lang/String;
    .end local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v16, v2

    move-object v2, v0

    goto/16 :goto_7

    .line 221
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v5    # "type":I
    .restart local v8    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    .restart local v10    # "currentImiId":Ljava/lang/String;
    .restart local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    :goto_1
    if-eq v5, v6, :cond_c

    .line 222
    if-eq v5, v7, :cond_5

    .line 223
    move-object/from16 v13, p0

    move-object/from16 v21, v0

    move-object/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_3

    .line 225
    :cond_5
    :try_start_3
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 226
    .local v12, "nodeName":Ljava/lang/String;
    const-string v13, "imi"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v14, 0x0

    if-eqz v13, :cond_7

    .line 227
    :try_start_4
    const-string v13, "id"

    invoke-interface {v4, v14, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 228
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 229
    const-string v13, "Invalid imi id found in subtypes.xml"

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_0

    .line 232
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v13

    .line 233
    move-object/from16 v13, p0

    :try_start_5
    invoke-virtual {v13, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v21, v0

    move-object/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_4

    .line 203
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "type":I
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .end local v10    # "currentImiId":Ljava/lang/String;
    .end local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "nodeName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v0

    goto/16 :goto_7

    .line 234
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v5    # "type":I
    .restart local v8    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    .restart local v10    # "currentImiId":Ljava/lang/String;
    .restart local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v12    # "nodeName":Ljava/lang/String;
    :cond_7
    move-object/from16 v13, p0

    :try_start_6
    const-string/jumbo v15, "subtype"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 235
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    if-nez v11, :cond_8

    move-object/from16 v21, v0

    move-object/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v12

    goto/16 :goto_2

    .line 239
    :cond_8
    const-string v15, "icon"

    invoke-interface {v4, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 240
    .local v15, "icon":I
    const-string/jumbo v6, "label"

    invoke-interface {v4, v14, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 241
    .local v6, "label":I
    const-string v7, "imeSubtypeLocale"

    .line 242
    invoke-interface {v4, v14, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "imeSubtypeLocale":Ljava/lang/String;
    const-string/jumbo v14, "languageTag"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 244
    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .local v16, "subtypesFile":Landroid/util/AtomicFile;
    :try_start_7
    invoke-interface {v4, v2, v14}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 245
    .local v14, "languageTag":Ljava/lang/String;
    const-string v2, "imeSubtypeMode"

    .line 246
    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "type":I
    .local v17, "type":I
    invoke-interface {v4, v5, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "imeSubtypeMode":Ljava/lang/String;
    const-string v5, "imeSubtypeExtraValue"

    .line 248
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "firstNodeName":Ljava/lang/String;
    .local v18, "firstNodeName":Ljava/lang/String;
    invoke-interface {v4, v8, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string v8, "isAuxiliary"

    .line 250
    move/from16 v19, v9

    const/4 v9, 0x0

    .end local v9    # "depth":I
    .local v19, "depth":I
    invoke-interface {v4, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 251
    .local v8, "isAuxiliary":Z
    const-string v9, "isAsciiCapable"

    .line 252
    move-object/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "nodeName":Ljava/lang/String;
    .local v20, "nodeName":Ljava/lang/String;
    invoke-interface {v4, v12, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 251
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 254
    .local v9, "isAsciiCapable":Z
    new-instance v12, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 255
    invoke-virtual {v12, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 256
    invoke-virtual {v12, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 257
    invoke-virtual {v12, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 258
    invoke-virtual {v12, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 259
    invoke-virtual {v12, v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 260
    invoke-virtual {v12, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 261
    invoke-virtual {v12, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 262
    invoke-virtual {v12, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v12

    .line 263
    .local v12, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    move-object/from16 v21, v0

    const-string/jumbo v0, "subtypeId"

    move-object/from16 v22, v2

    .end local v2    # "imeSubtypeMode":Ljava/lang/String;
    .local v22, "imeSubtypeMode":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "imeSubtypeExtraValue":Ljava/lang/String;
    .local v23, "imeSubtypeExtraValue":Ljava/lang/String;
    invoke-interface {v4, v5, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "subtypeId":I
    if-eqz v0, :cond_9

    .line 266
    invoke-virtual {v12, v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 268
    :cond_9
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 235
    .end local v0    # "subtypeId":I
    .end local v6    # "label":I
    .end local v7    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v14    # "languageTag":Ljava/lang/String;
    .end local v15    # "icon":I
    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v17    # "type":I
    .end local v18    # "firstNodeName":Ljava/lang/String;
    .end local v19    # "depth":I
    .end local v20    # "nodeName":Ljava/lang/String;
    .end local v22    # "imeSubtypeMode":Ljava/lang/String;
    .end local v23    # "imeSubtypeExtraValue":Ljava/lang/String;
    .local v2, "subtypesFile":Landroid/util/AtomicFile;
    .local v5, "type":I
    .local v8, "firstNodeName":Ljava/lang/String;
    .local v9, "depth":I
    .local v12, "nodeName":Ljava/lang/String;
    :cond_a
    move-object/from16 v21, v0

    move-object/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v12

    .line 236
    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v5    # "type":I
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .end local v12    # "nodeName":Ljava/lang/String;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v17    # "type":I
    .restart local v18    # "firstNodeName":Ljava/lang/String;
    .restart local v19    # "depth":I
    .restart local v20    # "nodeName":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME uninstalled or not valid.: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 237
    nop

    .line 220
    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v17    # "type":I
    .end local v18    # "firstNodeName":Ljava/lang/String;
    .end local v19    # "depth":I
    .end local v20    # "nodeName":Ljava/lang/String;
    .restart local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v5    # "type":I
    .restart local v8    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    :goto_3
    move-object/from16 v2, v16

    move/from16 v5, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v0, v21

    const/4 v6, 0x1

    const/4 v7, 0x2

    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v5    # "type":I
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v17    # "type":I
    .restart local v18    # "firstNodeName":Ljava/lang/String;
    .restart local v19    # "depth":I
    goto/16 :goto_0

    .line 234
    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v17    # "type":I
    .end local v18    # "firstNodeName":Ljava/lang/String;
    .end local v19    # "depth":I
    .restart local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v5    # "type":I
    .restart local v8    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    .restart local v12    # "nodeName":Ljava/lang/String;
    :cond_b
    move-object/from16 v21, v0

    move-object/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v12

    .line 270
    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v5    # "type":I
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .end local v12    # "nodeName":Ljava/lang/String;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v17    # "type":I
    .restart local v18    # "firstNodeName":Ljava/lang/String;
    .restart local v19    # "depth":I
    :goto_4
    move-object/from16 v2, v16

    move/from16 v5, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v0, v21

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 203
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v10    # "currentImiId":Ljava/lang/String;
    .end local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v17    # "type":I
    .end local v18    # "firstNodeName":Ljava/lang/String;
    .end local v19    # "depth":I
    .restart local v2    # "subtypesFile":Landroid/util/AtomicFile;
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 221
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v5    # "type":I
    .restart local v8    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    .restart local v10    # "currentImiId":Ljava/lang/String;
    .restart local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_c
    move-object/from16 v13, p0

    move-object/from16 v16, v2

    move/from16 v17, v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    .line 271
    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "type":I
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .end local v10    # "currentImiId":Ljava/lang/String;
    .end local v11    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    :goto_5
    if-eqz v3, :cond_d

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0

    .line 273
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_d
    goto :goto_a

    .line 215
    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v5    # "type":I
    .restart local v8    # "firstNodeName":Ljava/lang/String;
    :cond_e
    move-object/from16 v13, p0

    move-object/from16 v16, v2

    move-object/from16 v18, v8

    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .end local v8    # "firstNodeName":Ljava/lang/String;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v18    # "firstNodeName":Ljava/lang/String;
    :try_start_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Xml doesn\'t start with subtypes"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .end local p0    # "allSubtypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local p1    # "userId":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 203
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "type":I
    .end local v18    # "firstNodeName":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local p0    # "allSubtypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local p1    # "userId":I
    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_7

    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v2    # "subtypesFile":Landroid/util/AtomicFile;
    :catchall_4
    move-exception v0

    move-object/from16 v13, p0

    :goto_6
    move-object/from16 v16, v2

    move-object v2, v0

    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    :goto_7
    if-eqz v3, :cond_f

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_b
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .end local p0    # "allSubtypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local p1    # "userId":I
    :cond_f
    :goto_8
    throw v2
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0

    .line 271
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local p0    # "allSubtypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_9

    .end local v16    # "subtypesFile":Landroid/util/AtomicFile;
    .restart local v2    # "subtypesFile":Landroid/util/AtomicFile;
    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v16, v2

    .line 272
    .end local v2    # "subtypesFile":Landroid/util/AtomicFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "subtypesFile":Landroid/util/AtomicFile;
    :goto_9
    const-string v2, "Error reading subtypes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method static save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
    .locals 19
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .line 110
    .local p0, "allSubtypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p1, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object/from16 v1, p1

    const-string/jumbo v0, "subtype"

    const-string v2, "imi"

    const-string/jumbo v3, "subtypes"

    invoke-static/range {p2 .. p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object v4

    .line 112
    .local v4, "inputMethodDir":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    const-string v6, "AdditionalSubtypeUtils"

    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-static {v4}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 118
    .local v0, "subtypesFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 121
    :cond_1
    invoke-static {v4}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete the empty parent directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    return-void

    .line 129
    .end local v0    # "subtypesFile":Landroid/util/AtomicFile;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create a parent directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 135
    :cond_4
    const/4 v7, 0x1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    move v8, v7

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    .line 136
    .local v8, "isSetMethodMap":Z
    :goto_0
    const/4 v9, 0x0

    .line 137
    .local v9, "fos":Ljava/io/FileOutputStream;
    invoke-static {v4}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v10

    .line 139
    .local v10, "subtypesFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11

    move-object v9, v11

    .line 140
    invoke-static {v9}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v11

    .line 141
    .local v11, "out":Landroid/util/TypedXmlSerializer;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v11, v12, v7}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 143
    invoke-interface {v11, v13, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    .local v14, "imiId":Ljava/lang/String;
    if-eqz v8, :cond_6

    :try_start_1
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 146
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME uninstalled or not valid.: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    goto :goto_1

    .line 175
    .end local v11    # "out":Landroid/util/TypedXmlSerializer;
    .end local v14    # "imiId":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_6

    .line 149
    .restart local v11    # "out":Landroid/util/TypedXmlSerializer;
    .restart local v14    # "imiId":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-interface {v11, v13, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v5, "id"

    invoke-interface {v11, v13, v5, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    move-object/from16 v5, p0

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 152
    .local v15, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v17, v16

    .line 153
    .local v17, "numSubtypes":I
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_2
    move/from16 v13, v17

    .end local v17    # "numSubtypes":I
    .local v13, "numSubtypes":I
    if-ge v7, v13, :cond_a

    .line 154
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodSubtype;

    .line 155
    .local v17, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    invoke-interface {v11, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    const-string/jumbo v1, "subtypeId"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v4

    .end local v4    # "inputMethodDir":Ljava/io/File;
    .local v18, "inputMethodDir":Ljava/io/File;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 156
    .end local v18    # "inputMethodDir":Ljava/io/File;
    .restart local v4    # "inputMethodDir":Ljava/io/File;
    :cond_7
    move-object/from16 v18, v4

    .line 159
    .end local v4    # "inputMethodDir":Ljava/io/File;
    .restart local v18    # "inputMethodDir":Ljava/io/File;
    :goto_3
    const-string v1, "icon"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string/jumbo v1, "label"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v4

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v1, "imeSubtypeLocale"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string/jumbo v1, "languageTag"

    .line 163
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const-string v1, "imeSubtypeMode"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const-string v1, "imeSubtypeExtraValue"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v1, "isAuxiliary"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x0

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    const-string v1, "isAsciiCapable"

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    invoke-interface {v11, v5, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-interface {v11, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    nop

    .end local v17    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move/from16 v17, v13

    move-object/from16 v4, v18

    const/4 v13, 0x0

    goto/16 :goto_2

    .end local v18    # "inputMethodDir":Ljava/io/File;
    .restart local v4    # "inputMethodDir":Ljava/io/File;
    :cond_a
    move-object/from16 v18, v4

    .line 170
    .end local v4    # "inputMethodDir":Ljava/io/File;
    .end local v7    # "i":I
    .restart local v18    # "inputMethodDir":Ljava/io/File;
    const/4 v1, 0x0

    invoke-interface {v11, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    move-object/from16 v1, p1

    move-object/from16 v4, v18

    const/4 v7, 0x1

    const/4 v13, 0x0

    .end local v13    # "numSubtypes":I
    .end local v14    # "imiId":Ljava/lang/String;
    .end local v15    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto/16 :goto_1

    .line 172
    .end local v18    # "inputMethodDir":Ljava/io/File;
    .restart local v4    # "inputMethodDir":Ljava/io/File;
    :cond_b
    move-object/from16 v18, v4

    .end local v4    # "inputMethodDir":Ljava/io/File;
    .restart local v18    # "inputMethodDir":Ljava/io/File;
    const/4 v0, 0x0

    invoke-interface {v11, v0, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    invoke-interface {v11}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 174
    invoke-virtual {v10, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    .end local v11    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_7

    .line 175
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v18    # "inputMethodDir":Ljava/io/File;
    .restart local v4    # "inputMethodDir":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    .line 176
    .end local v4    # "inputMethodDir":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "inputMethodDir":Ljava/io/File;
    :goto_6
    const-string v1, "Error writing subtypes"

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    if-eqz v9, :cond_c

    .line 178
    invoke-virtual {v10, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_7
    return-void
.end method
