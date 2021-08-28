.class Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
.super Ljava/lang/Object;
.source "ShareTargetPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/prediction/ShareTargetPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareTarget"
.end annotation


# instance fields
.field private final mAppTarget:Landroid/app/prediction/AppTarget;

.field private final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field private final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field private mScore:F


# direct methods
.method constructor <init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 1
    .param p1, "appTarget"    # Landroid/app/prediction/AppTarget;
    .param p2, "eventHistory"    # Lcom/android/server/people/data/EventHistory;
    .param p3, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    .line 230
    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    .line 231
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    .line 233
    return-void
.end method


# virtual methods
.method getAppTarget()Landroid/app/prediction/AppTarget;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    return-object v0
.end method

.method getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object v0
.end method

.method getEventHistory()Lcom/android/server/people/data/EventHistory;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object v0
.end method

.method getScore()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return v0
.end method

.method setScore(F)V
    .locals 0
    .param p1, "score"    # F

    .line 260
    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    .line 261
    return-void
.end method
