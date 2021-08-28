.class Lcom/android/server/pm/IncrementalStates$LoadingState;
.super Ljava/lang/Object;
.source "IncrementalStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/IncrementalStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingState"
.end annotation


# instance fields
.field private mIsLoading:Z

.field private mProgress:F

.field final synthetic this$0:Lcom/android/server/pm/IncrementalStates;


# direct methods
.method constructor <init>(Lcom/android/server/pm/IncrementalStates;ZF)V
    .locals 0
    .param p2, "isLoading"    # Z
    .param p3, "loadingProgress"    # F

    .line 162
    iput-object p1, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->this$0:Lcom/android/server/pm/IncrementalStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-boolean p2, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mIsLoading:Z

    .line 165
    if-eqz p2, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mProgress:F

    .line 166
    return-void
.end method


# virtual methods
.method public adoptNewLoadingStateLocked(Z)V
    .locals 0
    .param p1, "nextState"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mIsLoading:Z

    .line 185
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    instance-of v1, p1, Lcom/android/server/pm/IncrementalStates$LoadingState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 193
    return v2

    .line 195
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/IncrementalStates$LoadingState;

    .line 196
    .local v1, "l":Lcom/android/server/pm/IncrementalStates$LoadingState;
    iget-boolean v3, v1, Lcom/android/server/pm/IncrementalStates$LoadingState;->mIsLoading:Z

    iget-boolean v4, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mIsLoading:Z

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/server/pm/IncrementalStates$LoadingState;->mProgress:F

    iget v4, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mProgress:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mProgress:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 201
    iget-boolean v0, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mIsLoading:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    .line 202
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mProgress:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 203
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method

.method public isLoading()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mIsLoading:Z

    return v0
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 177
    iput p1, p0, Lcom/android/server/pm/IncrementalStates$LoadingState;->mProgress:F

    .line 178
    return-void
.end method
