.class public Lcom/android/server/graphics/fonts/FontManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "FontManagerShellCommand.java"


# static fields
.field private static final MAX_SIGNATURE_FILE_SIZE_BYTES:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FontManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/graphics/fonts/FontManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/graphics/fonts/FontManagerService;

    .line 74
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 76
    return-void
.end method

.method private clear(Landroid/os/ShellCommand;)I
    .locals 2
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 452
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->clearUpdates()V

    .line 453
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method private dump(Landroid/os/ShellCommand;)I
    .locals 8
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 301
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 303
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "FontManagerShellCommand"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const/4 v1, 0x1

    return v1

    .line 306
    :cond_0
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 307
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-direct {v1, v2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 308
    .local v1, "writer":Landroid/util/IndentingPrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "nextArg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v3}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v3

    .line 310
    .local v3, "fontConfig":Landroid/text/FontConfig;
    if-nez v2, :cond_1

    .line 311
    invoke-direct {p0, v1, v3}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    goto :goto_0

    .line 313
    :cond_1
    nop

    .line 314
    invoke-static {v3}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v4

    .line 315
    .local v4, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/fonts/FontFamily;

    .line 316
    .local v5, "families":[Landroid/graphics/fonts/FontFamily;
    if-nez v5, :cond_2

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Font Family \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-direct {p0, v1, v5}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFallback(Landroid/util/IndentingPrintWriter;[Landroid/graphics/fonts/FontFamily;)V

    .line 322
    .end local v4    # "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .end local v5    # "families":[Landroid/graphics/fonts/FontFamily;
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method private dumpFallback(Landroid/util/IndentingPrintWriter;[Landroid/graphics/fonts/FontFamily;)V
    .locals 3
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "families"    # [Landroid/graphics/fonts/FontFamily;

    .line 233
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 234
    .local v2, "family":Landroid/graphics/fonts/FontFamily;
    invoke-direct {p0, p1, v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFamily(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/FontFamily;)V

    .line 233
    .end local v2    # "family":Landroid/graphics/fonts/FontFamily;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method private dumpFamily(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/FontFamily;)V
    .locals 3
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "family"    # Landroid/graphics/fonts/FontFamily;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Family:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, " langTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getLangTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const-string v1, " variant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getVariant()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 254
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 251
    :pswitch_0
    const-string v1, "Elegant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_0

    .line 248
    :pswitch_1
    const-string v1, "Compact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 261
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 263
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 266
    nop

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 266
    throw v2

    .line 268
    .end local v1    # "i":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpFont(Landroid/util/IndentingPrintWriter;Landroid/graphics/fonts/Font;)V
    .locals 4
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "font"    # Landroid/graphics/fonts/Font;

    .line 271
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    .line 272
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    if-nez v0, :cond_0

    const-string v2, "[Not a file]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v2

    .line 281
    .local v2, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    .line 282
    const-string v3, ", axes = \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {v2}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V
    .locals 8
    .param p1, "w"    # Landroid/util/IndentingPrintWriter;
    .param p2, "fontConfig"    # Landroid/text/FontConfig;

    .line 159
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    const-string v1, "Named Font Families"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    .line 167
    .local v2, "family":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 169
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Named Family ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 172
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 173
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    invoke-direct {p0, p1, v5}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 163
    .end local v2    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v3    # "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 180
    const-string v1, "Dump Fallback Families"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 184
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    .line 187
    .local v3, "family":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_6

    .line 189
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fallback Family ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "c":I
    .local v5, "c":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "]: lang=\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    const-string v1, ", variant="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    const-string v1, "Unknown"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 201
    :pswitch_0
    const-string v1, "Elegant"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    goto :goto_4

    .line 198
    :pswitch_1
    const-string v1, "Compact"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 212
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 213
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-direct {p0, p1, v7}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 215
    .end local v6    # "j":I
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v5

    .line 183
    .end local v3    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "c":I
    .local v1, "c":I
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 217
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 220
    const-string v2, "Dump Family Aliases"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 222
    invoke-virtual {p2}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 224
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$Alias;

    .line 225
    .local v4, "alias":Landroid/text/FontConfig$Alias;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 223
    .end local v4    # "alias":Landroid/text/FontConfig$Alias;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 228
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 229
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpSingleFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig$Font;)V
    .locals 3
    .param p1, "w"    # Landroid/util/IndentingPrintWriter;
    .param p2, "font"    # Landroid/text/FontConfig$Font;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, ", axes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    const-string v1, ", fallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font is updated from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 152
    :cond_3
    return-void
.end method

.method private execCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I
    .locals 3
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 479
    if-nez p2, :cond_0

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 484
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "update-family"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "restart"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "clear"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "dump"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "update"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "status"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 498
    invoke-virtual {p1, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 496
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->status(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 494
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->restart(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 492
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->clear(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 490
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->updateFamily(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 488
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->update(Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 486
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dump(Landroid/os/ShellCommand;)I

    move-result v0
    :try_end_0
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 498
    :goto_1
    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->writeCommandResult(Landroid/os/ShellCommand;Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;)V

    .line 502
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_5
        -0x31ffc737 -> :sswitch_4
        0x2f39f4 -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x43adc8e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 420
    :try_start_0
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 421
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    :goto_0
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    .line 424
    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    .line 425
    goto :goto_0

    .line 427
    :cond_0
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 428
    .local v5, "depth":I
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, "tag":Ljava/lang/String;
    const/16 v7, -0x2717

    if-ne v5, v4, :cond_2

    .line 430
    const-string v2, "fontFamilyUpdateRequest"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected <fontFamilyUpdateRequest> but got: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v7, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    throw v2

    .line 434
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :cond_2
    if-ne v5, v2, :cond_4

    .line 436
    const-string v2, "family"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    new-instance v2, Landroid/graphics/fonts/FontUpdateRequest;

    .line 438
    invoke-static {v0}, Landroid/graphics/fonts/FontUpdateRequest$Family;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    .line 437
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :cond_3
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected <family> but got: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v7, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v5    # "depth":I
    .end local v6    # "tag":Ljava/lang/String;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :goto_1
    goto :goto_0

    .line 445
    :cond_5
    return-object v1

    .line 446
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    .end local v3    # "type":I
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v2, 0x0

    const-string v3, "Failed to parse xml"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private restart(Landroid/os/ShellCommand;)I
    .locals 2
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 458
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->restart()V

    .line 459
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method private status(Landroid/os/ShellCommand;)I
    .locals 7
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 464
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 465
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    invoke-direct {v0, v1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 466
    .local v0, "writer":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    .line 468
    .local v1, "config":Landroid/text/FontConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/text/FontConfig;->getConfigVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1}, Landroid/text/FontConfig;->getLastModifiedTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 471
    .local v2, "dt":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Modified Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v3}, Lcom/android/server/graphics/fonts/FontManagerService;->getFontFileMap()Ljava/util/Map;

    move-result-object v3

    .line 474
    .local v3, "fontFileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of updated font files: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 475
    return v5
.end method

.method private update(Landroid/os/ShellCommand;)I
    .locals 11
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 326
    const-string/jumbo v0, "r"

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "fontPath":Ljava/lang/String;
    const/16 v2, -0x2713

    if-eqz v1, :cond_9

    .line 332
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "signaturePath":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 339
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    .local v4, "fontFd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {p1, v3, v0}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 341
    .local v0, "sigFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_5

    .line 347
    if-eqz v0, :cond_4

    .line 354
    const/16 v5, -0x2714

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 355
    .local v6, "sigFis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 356
    .local v7, "len":I
    const/16 v8, 0x2000

    if-gt v7, v8, :cond_3

    .line 361
    new-array v8, v7, [B

    .line 362
    .local v8, "signature":[B
    invoke-virtual {v6, v8, v2, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v9, v7, :cond_2

    .line 367
    .end local v7    # "len":I
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 371
    .end local v6    # "sigFis":Ljava/io/FileInputStream;
    nop

    .line 372
    :try_start_5
    iget-object v5, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v6, -0x1

    new-instance v7, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-direct {v7, v4, v8}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/os/ParcelFileDescriptor;[B)V

    .line 373
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 372
    invoke-virtual {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 374
    .end local v8    # "signature":[B
    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 378
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    goto :goto_3

    .line 363
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "sigFis":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    .restart local v8    # "signature":[B
    :cond_2
    :try_start_8
    new-instance v9, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v10, "Invalid read length"

    invoke-direct {v9, v5, v10}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "sigFis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    throw v9

    .line 357
    .end local v8    # "signature":[B
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "sigFis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :cond_3
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v9, -0x2715

    const-string v10, "Signature file is too large"

    invoke-direct {v8, v9, v10}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "sigFis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 354
    .end local v7    # "len":I
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "sigFis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :catchall_0
    move-exception v7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v8

    :try_start_a
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    :goto_0
    throw v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 367
    .end local v6    # "sigFis":Ljava/io/FileInputStream;
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :catch_0
    move-exception v6

    .line 368
    .local v6, "e":Ljava/io/IOException;
    :try_start_b
    new-instance v7, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v8, "Failed to read signature file."

    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    throw v7

    .line 348
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :cond_4
    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v6, -0x2712

    const-string v7, "Failed to open signature file"

    invoke-direct {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    throw v5

    .line 342
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :cond_5
    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v6, -0x2711

    const-string v7, "Failed to open font file"

    invoke-direct {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 339
    .restart local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :catchall_2
    move-exception v5

    if-eqz v0, :cond_6

    :try_start_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v6

    :try_start_d
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    :cond_6
    :goto_1
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .end local v0    # "sigFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :catchall_4
    move-exception v0

    if-eqz v4, :cond_7

    :try_start_e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v5

    :try_start_f
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "fontPath":Ljava/lang/String;
    .end local v3    # "signaturePath":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    :cond_7
    :goto_2
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 374
    .end local v4    # "fontFd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fontPath":Ljava/lang/String;
    .restart local v3    # "signaturePath":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "FontManagerShellCommand"

    const-string v5, "Error while closing files"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "Success"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    return v2

    .line 334
    :cond_8
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v4, "Signature file argument is required."

    invoke-direct {v0, v2, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 328
    .end local v3    # "signaturePath":Ljava/lang/String;
    :cond_9
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v3, "Font file path argument is required."

    invoke-direct {v0, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private updateFamily(Landroid/os/ShellCommand;)I
    .locals 5
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 385
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "xmlPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 393
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, v0, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .local v1, "xmlFd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v2}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->parseFontFamilyUpdateXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 399
    .end local v1    # "xmlFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 400
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V

    .line 401
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "Success"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x0

    return v1

    .line 393
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    .restart local v1    # "xmlFd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "xmlPath":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .end local p1    # "shell":Landroid/os/ShellCommand;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 395
    .end local v1    # "xmlFd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "xmlPath":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/FontManagerShellCommand;
    .restart local p1    # "shell":Landroid/os/ShellCommand;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v3, -0x2716

    const-string v4, "Failed to open XML file."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v2, -0x2713

    const-string v3, "XML file path argument is required."

    invoke-direct {v1, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private writeCommandResult(Landroid/os/ShellCommand;Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;)V
    .locals 3
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .param p2, "e"    # Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 291
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 292
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 293
    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontManagerShellCommand"

    invoke-static {v2, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    return-void
.end method


# virtual methods
.method dumpAll(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "w"    # Landroid/util/IndentingPrintWriter;

    .line 120
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    .line 121
    .local v0, "fontConfig":Landroid/text/FontConfig;
    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    .line 122
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 81
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Only shell or root user can execute font command."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_0
    invoke-direct {p0, p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->execCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 92
    .local v0, "w":Ljava/io/PrintWriter;
    const-string v1, "Font service (font) commands"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 96
    const-string v1, "dump [family name]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "    Dump all font files in the specified family name."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Dump current system font configuration if no family name was specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 100
    const-string/jumbo v1, "update [font file path] [signature file path]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    Update installed font files with new font file."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 103
    const-string/jumbo v1, "update-family [family definition XML path]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    Update font families with the new definitions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 106
    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Remove all installed font files and reset to the initial state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 109
    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "    Restart FontManagerService emulating device reboot."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "    WARNING: this is not a safe operation. Other processes may misbehave if"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, "    they are using fonts updated by FontManagerService."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v1, "    This command exists merely for testing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 115
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "    Prints status of current system font configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    return-void
.end method
