.class Lcom/android/server/people/prediction/ShareTargetPredictor;
.super Lcom/android/server/people/prediction/AppTargetPredictor;
.source "ShareTargetPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REMOTE_APP_PREDICTOR_KEY:Ljava/lang/String; = "remote_app_predictor"

.field private static final TAG:Ljava/lang/String; = "ShareTargetPredictor"


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-string v0, "ShareTargetPredictor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .locals 4
    .param p1, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p3, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p4, "callingUserId"    # I
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 71
    .local p2, "updatePredictionsMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    .line 72
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    const-string/jumbo v0, "systemui"

    const-string v1, "dark_launch_remote_prediction_service_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v3, "remote_app_predictor"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p5, v0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/prediction/AppPredictionManager;

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppPredictionManager;

    .line 80
    invoke-virtual {v0, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 84
    :goto_0
    return-void
.end method

.method private getAppShareTargets(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;"
        }
    .end annotation

    .line 198
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 200
    .local v2, "target":Landroid/app/prediction/AppTarget;
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 200
    invoke-virtual {v3, v4, v5}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v3

    .line 202
    .local v3, "packageData":Lcom/android/server/people/data/PackageData;
    new-instance v4, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 203
    const/4 v5, 0x0

    if-nez v3, :cond_0

    move-object v6, v5

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/people/data/PackageData;->getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v6

    :goto_1
    invoke-direct {v4, v2, v6, v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    .line 202
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "target":Landroid/app/prediction/AppTarget;
    .end local v3    # "packageData":Lcom/android/server/people/data/PackageData;
    goto :goto_0

    .line 206
    :cond_1
    return-object v0
.end method

.method private getDirectShareTargets()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    nop

    .line 168
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    iget v3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mCallingUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/DataManager;->getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "shareShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 171
    .local v3, "shareShortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 172
    .local v4, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    new-instance v5, Landroid/app/prediction/AppTarget$Builder;

    new-instance v6, Landroid/app/prediction/AppTargetId;

    .line 173
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v4}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    .line 175
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 176
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v5

    .line 178
    .local v5, "appTarget":Landroid/app/prediction/AppTarget;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v7

    .line 180
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v8

    .line 182
    .local v8, "packageData":Lcom/android/server/people/data/PackageData;
    const/4 v9, 0x0

    .line 183
    .local v9, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    const/4 v10, 0x0

    .line 184
    .local v10, "eventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v8, :cond_0

    .line 185
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 186
    .local v11, "shortcutId":Ljava/lang/String;
    invoke-virtual {v8, v11}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v9

    .line 187
    if-eqz v9, :cond_0

    .line 188
    invoke-virtual {v8, v11}, Lcom/android/server/people/data/PackageData;->getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v10

    .line 191
    .end local v11    # "shortcutId":Ljava/lang/String;
    :cond_0
    new-instance v11, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-direct {v11, v5, v10, v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v3    # "shareShortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    .end local v4    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "appTarget":Landroid/app/prediction/AppTarget;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v9    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v10    # "eventHistory":Lcom/android/server/people/data/EventHistory;
    goto :goto_0

    .line 194
    :cond_1
    return-object v0
.end method

.method private getShareEventType(Landroid/content/IntentFilter;)I
    .locals 2
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .line 210
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic lambda$predictTargets$0(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;
    .locals 1
    .param p0, "t"    # Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 117
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sortTargets$1(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I
    .locals 2
    .param p0, "t1"    # Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .param p1, "t2"    # Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 142
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method


# virtual methods
.method destroy()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    .line 163
    :cond_0
    return-void
.end method

.method predictTargets()V
    .locals 5

    .line 105
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "predictTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 109
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->updatePredictions(Ljava/util/List;)V

    .line 110
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDirectShareTargets()Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v1

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 115
    sget-object v1, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda1;

    .line 116
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    sget-object v2, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->updatePredictions(Ljava/util/List;)V

    .line 124
    return-void
.end method

.method reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 90
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "reportAppTargetEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 99
    :cond_2
    return-void
.end method

.method sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "sortTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 134
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 135
    return-void

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getAppShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    invoke-direct {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mCallingUserId:I

    .line 138
    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;I)V

    .line 142
    sget-object v1, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "appTargetList":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 145
    .local v3, "shareTarget":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v4

    .line 146
    .local v4, "appTarget":Landroid/app/prediction/AppTarget;
    new-instance v5, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getId()Landroid/app/prediction/AppTargetId;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 148
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 149
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_1

    .line 150
    :cond_2
    const/4 v6, 0x0

    .line 149
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v5

    .line 146
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "shareTarget":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .end local v4    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 154
    return-void
.end method
