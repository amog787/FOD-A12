.class public final Lcom/android/server/autofill/ui/InlineFillUi;
.super Ljava/lang/Object;
.source "InlineFillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;,
        Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;,
        Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineFillUi"


# instance fields
.field final mAutofillId:Landroid/view/autofill/AutofillId;

.field private final mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterMatchingDisabled:Z

.field private mFilterText:Ljava/lang/String;

.field private final mInlineSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V
    .locals 5
    .param p1, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;)V"
        }
    .end annotation

    .line 161
    .local p2, "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 163
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 164
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 168
    .local v2, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;"
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 172
    return-void
.end method

.method private constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;)V
    .locals 1
    .param p1, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p2, "inlineSuggestion"    # Landroid/view/inputmethod/InlineSuggestion;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 4
    .param p1, "index"    # I
    .param p2, "inlineSuggestion"    # Landroid/view/inputmethod/InlineSuggestion;

    .line 251
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v0

    .line 252
    .local v0, "contentProvider":Lcom/android/internal/view/inline/IInlineContentProvider;
    instance-of v1, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    .line 257
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->copy()Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 262
    .local v1, "newInlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-object v1

    .line 265
    .end local v1    # "newInlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    :cond_0
    return-object p2
.end method

.method public static emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;
    .locals 1
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 97
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    return-object v0
.end method

.method public static forAugmentedAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;
    .locals 2
    .param p0, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p2, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;",
            ")",
            "Lcom/android/server/autofill/ui/InlineFillUi;"
        }
    .end annotation

    .line 154
    .local p1, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    nop

    .line 155
    const-string v0, "android:platform"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/util/SparseArray;

    move-result-object v0

    .line 157
    .local v0, "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    return-object v1
.end method

.method public static forAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;
    .locals 2
    .param p0, "inlineFillUiInfo"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 132
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    nop

    .line 134
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineAuthentication(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v0

    .line 136
    .local v0, "inlineAuthentication":Landroid/view/inputmethod/InlineSuggestion;
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;)V

    return-object v1

    .line 137
    .end local v0    # "inlineAuthentication":Landroid/view/inputmethod/InlineSuggestion;
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    nop

    .line 140
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 139
    const-string v1, "android:autofill"

    invoke-static {p0, v1, v0, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/util/SparseArray;

    move-result-object v0

    .line 142
    .local v0, "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    return-object v1

    .line 144
    .end local v0    # "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    :cond_1
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method private includeDataset(Landroid/service/autofill/Dataset;I)Z
    .locals 6
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "fieldIndex"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 272
    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "constraintLowerCase":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v2

    .line 279
    .local v2, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 280
    iget-object v1, v2, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 281
    .local v1, "filterPattern":Ljava/util/regex/Pattern;
    if-nez v1, :cond_2

    .line 282
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Explicitly disabling filter for dataset id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InlineFillUi"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    return v3

    .line 287
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz v4, :cond_3

    .line 288
    return v3

    .line 290
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3

    .line 293
    .end local v1    # "filterPattern":Ljava/util/regex/Pattern;
    :cond_4
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 294
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 297
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz v1, :cond_6

    .line 298
    return v3

    .line 300
    :cond_6
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "valueText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 295
    .end local v1    # "valueText":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_1
    return v1
.end method


# virtual methods
.method public disableFilterMatching()V
    .locals 1

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    .line 310
    return-void
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getInlineSuggestionsResponse()Landroid/view/inputmethod/InlineSuggestionsResponse;
    .locals 8

    .line 207
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v1

    .line 211
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "inlineSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InlineSuggestion;>;"
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    goto :goto_2

    .line 219
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 220
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    .line 221
    .local v3, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 222
    .local v4, "fieldIndex":I
    const-string v5, "InlineFillUi"

    if-gez v4, :cond_2

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutofillId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not found in dataset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v3, v4}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    .line 228
    .local v6, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-nez v6, :cond_3

    .line 229
    const-string v7, "InlinePresentation not found in dataset"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    if-nez v5, :cond_4

    .line 233
    invoke-direct {p0, v3, v4}, Lcom/android/server/autofill/ui/InlineFillUi;->includeDataset(Landroid/service/autofill/Dataset;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 234
    goto :goto_1

    .line 236
    :cond_4
    iget-object v5, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p0, v2, v5}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v3    # "dataset":Landroid/service/autofill/Dataset;
    .end local v4    # "fieldIndex":I
    .end local v6    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v2, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v2

    .line 214
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_7

    .line 215
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p0, v2, v3}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 217
    .end local v2    # "i":I
    :cond_7
    new-instance v2, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v2, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterText"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 200
    return-void
.end method
