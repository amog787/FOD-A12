.class final Lcom/android/server/autofill/ui/InlineSuggestionFactory;
.super Ljava/lang/Object;
.source "InlineSuggestionFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineSuggestionFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public static createInlineAuthentication(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 9
    .param p0, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 48
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    .line 49
    .local v0, "inlineAuthentication":Landroid/service/autofill/InlinePresentation;
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 51
    .local v1, "requestId":I
    new-instance v5, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, v1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 54
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 57
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    .line 55
    const-string v4, "android:autofill"

    invoke-static {v2, p0, v4, v3}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v7

    .line 51
    const-string v3, "android:autofill"

    const-string v4, "android:autofill:action"

    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    return-object v2
.end method

.method private static createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;
    .locals 3
    .param p0, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p2, "onClickAction"    # Ljava/lang/Runnable;
    .param p3, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 217
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 221
    .local v0, "remoteInlineSuggestionViewConnector":Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-object v1
.end method

.method private static createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 8
    .param p0, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p1, "suggestionSource"    # Ljava/lang/String;
    .param p2, "suggestionType"    # Ljava/lang/String;
    .param p3, "onClickAction"    # Ljava/lang/Runnable;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "tooltip"    # Landroid/view/inputmethod/InlineSuggestion;
    .param p6, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 128
    new-instance v7, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 129
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    .line 130
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    move-object v0, v7

    move-object v2, p1

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 133
    .local v0, "inlineSuggestionInfo":Landroid/view/inputmethod/InlineSuggestionInfo;
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    .line 134
    invoke-static {p0, p4, p3, p6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 133
    return-object v1
.end method

.method private static createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 14
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p1, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p2, "suggestionSource"    # Ljava/lang/String;
    .param p3, "tooltipPresentation"    # Landroid/service/autofill/InlinePresentation;

    .line 165
    if-nez p3, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    .line 171
    .local v0, "spec":Landroid/widget/inline/InlinePresentationSpec;
    if-nez v0, :cond_1

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    .local v1, "mergedSpec":Landroid/widget/inline/InlinePresentationSpec;
    goto :goto_0

    .line 174
    .end local v1    # "mergedSpec":Landroid/widget/inline/InlinePresentationSpec;
    :cond_1
    new-instance v1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v2

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 177
    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    .line 180
    .restart local v1    # "mergedSpec":Landroid/widget/inline/InlinePresentationSpec;
    :goto_0
    new-instance v2, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;

    invoke-direct {v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;-><init>()V

    move-object v9, v2

    .line 203
    .local v9, "uiCallback":Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    new-instance v2, Landroid/service/autofill/InlinePresentation;

    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    move-object v10, v2

    .line 205
    .local v10, "tooltipInline":Landroid/service/autofill/InlinePresentation;
    sget-object v2, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    move-object v11, p1

    invoke-static {p1, v10, v2, v9}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v12

    .line 207
    .local v12, "tooltipContentProvider":Lcom/android/internal/view/inline/IInlineContentProvider;
    new-instance v13, Landroid/view/inputmethod/InlineSuggestionInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "android:autofill:suggestion"

    move-object v2, v13

    move-object v3, v1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 210
    .local v2, "tooltipInlineSuggestionInfo":Landroid/view/inputmethod/InlineSuggestionInfo;
    new-instance v3, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {v3, v2, v12}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    return-object v3
.end method

.method public static createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/util/SparseArray;
    .locals 20
    .param p0, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p1, "suggestionSource"    # Ljava/lang/String;
    .param p3, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;"
        }
    .end annotation

    .line 71
    .local p2, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v9, "InlineSuggestionFactory"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInlineSuggestions(source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v10, v7, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 74
    .local v10, "request":Landroid/view/inputmethod/InlineSuggestionsRequest;
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    move-object v11, v0

    .line 76
    .local v11, "response":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "hasTooltip":Z
    const/4 v1, 0x0

    move v12, v1

    .local v12, "datasetIndex":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_6

    .line 78
    move-object/from16 v13, p2

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/service/autofill/Dataset;

    .line 79
    .local v14, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 80
    .local v15, "fieldIndex":I
    if-gez v15, :cond_1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutofillId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found in dataset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto/16 :goto_3

    .line 85
    :cond_1
    nop

    .line 86
    invoke-virtual {v14, v15}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    .line 87
    .local v6, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-nez v6, :cond_2

    .line 88
    const-string v1, "InlinePresentation not found in dataset"

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "android:autofill:suggestion"

    move-object v2, v1

    goto :goto_1

    .line 94
    :cond_3
    const-string v1, "android:autofill:action"

    move-object v2, v1

    :goto_1
    nop

    .line 95
    .local v2, "suggestionType":Ljava/lang/String;
    move v5, v12

    .line 97
    .local v5, "index":I
    const/4 v1, 0x0

    .line 98
    .local v1, "inlineSuggestionTooltip":Landroid/view/inputmethod/InlineSuggestion;
    if-nez v0, :cond_5

    .line 100
    nop

    .line 102
    invoke-virtual {v14, v15}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    .line 100
    invoke-static {v10, v7, v8, v3}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    const/4 v0, 0x1

    move/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_2

    .line 103
    :cond_4
    move/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_2

    .line 98
    :cond_5
    move/from16 v16, v0

    move-object/from16 v17, v1

    .line 107
    .end local v0    # "hasTooltip":Z
    .end local v1    # "inlineSuggestionTooltip":Landroid/view/inputmethod/InlineSuggestion;
    .local v16, "hasTooltip":Z
    .local v17, "inlineSuggestionTooltip":Landroid/view/inputmethod/InlineSuggestion;
    :goto_2
    new-instance v3, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;

    move-object/from16 v4, p3

    invoke-direct {v3, v4, v14, v5}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    .line 110
    invoke-static {v10, v12, v6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;

    move-result-object v18

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "index":I
    .local v18, "index":I
    move-object/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v19, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v0

    .line 113
    .local v0, "inlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    invoke-static {v14, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move/from16 v0, v16

    .line 77
    .end local v2    # "suggestionType":Ljava/lang/String;
    .end local v14    # "dataset":Landroid/service/autofill/Dataset;
    .end local v15    # "fieldIndex":I
    .end local v16    # "hasTooltip":Z
    .end local v17    # "inlineSuggestionTooltip":Landroid/view/inputmethod/InlineSuggestion;
    .end local v18    # "index":I
    .end local v19    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v0, "hasTooltip":Z
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v13, p2

    .line 116
    .end local v12    # "datasetIndex":I
    return-object v11
.end method

.method static synthetic lambda$createInlineAuthentication$0(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V
    .locals 1
    .param p0, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .param p1, "requestId"    # I

    .line 52
    const v0, 0xffff

    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->authenticate(II)V

    return-void
.end method

.method static synthetic lambda$createInlineSuggestionTooltip$2()V
    .locals 0

    .line 206
    return-void
.end method

.method static synthetic lambda$createInlineSuggestions$1(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V
    .locals 0
    .param p0, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "index"    # I

    .line 109
    invoke-interface {p0, p1, p2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->autofill(Landroid/service/autofill/Dataset;I)V

    return-void
.end method

.method private static mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;
    .locals 6
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p1, "index"    # I
    .param p2, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;

    .line 145
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlinePresentationSpecs()Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    return-object p2

    .line 149
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/inline/InlinePresentationSpec;

    .line 150
    .local v1, "specFromHost":Landroid/widget/inline/InlinePresentationSpec;
    new-instance v2, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 151
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v3

    .line 152
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 153
    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object v3

    .line 152
    invoke-virtual {v2, v3}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    .line 155
    .local v2, "mergedInlinePresentation":Landroid/widget/inline/InlinePresentationSpec;
    new-instance v3, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v4

    .line 156
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    .line 155
    return-object v3
.end method
