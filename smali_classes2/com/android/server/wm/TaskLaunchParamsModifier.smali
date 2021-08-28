.class Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field private static final CASCADING_OFFSET_DP:I = 0x4b

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field private static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field private static final EPSILON:I = 0x2

.field private static final MINIMAL_STEP:I = 0x1

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDirections:[I

.field private mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 99
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 905
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 906
    return-void
.end method

.method private adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 840
    .local v0, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 842
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 843
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 856
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 858
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .local v1, "dx":I
    goto :goto_0

    .line 859
    .end local v1    # "dx":I
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    .line 861
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .restart local v1    # "dx":I
    goto :goto_0

    .line 864
    .end local v1    # "dx":I
    :cond_2
    const/4 v1, 0x0

    .line 868
    .restart local v1    # "dx":I
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 870
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .local v2, "dy":I
    goto :goto_1

    .line 871
    .end local v2    # "dy":I
    :cond_3
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4

    .line 873
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .restart local v2    # "dy":I
    goto :goto_1

    .line 876
    .end local v2    # "dy":I
    :cond_4
    const/4 v2, 0x0

    .line 878
    .restart local v2    # "dy":I
    :goto_1
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 879
    return-void

    .line 846
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 847
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 848
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 849
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    goto :goto_3

    .line 850
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_3
    nop

    .line 851
    .local v2, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 852
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .line 1065
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .locals 10
    .param p2, "candidateBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1007
    .local p1, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1008
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v2

    .line 1010
    .local v3, "leftClose":Z
    :goto_1
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    .line 1012
    .local v6, "topClose":Z
    :goto_2
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    .line 1014
    .local v7, "rightClose":Z
    :goto_3
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_3

    move v2, v5

    .line 1017
    .local v2, "bottomClose":Z
    :cond_3
    if-eqz v3, :cond_4

    if-nez v6, :cond_7

    :cond_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    :cond_5
    if-eqz v7, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    .line 1019
    :cond_7
    return v5

    .line 1021
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    .end local v2    # "bottomClose":Z
    .end local v3    # "leftClose":Z
    .end local v6    # "topClose":Z
    .end local v7    # "rightClose":Z
    :cond_8
    goto :goto_0

    .line 1023
    :cond_9
    return v2
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 27
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 118
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    if-eqz v8, :cond_1

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_0
    move-object v15, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1

    .line 121
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    move-object/from16 v0, p3

    move-object v15, v0

    .line 124
    .local v15, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    const/16 v16, 0x0

    if-nez v15, :cond_2

    .line 130
    return v16

    .line 134
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 136
    .local v6, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iput-object v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 137
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 144
    .local v5, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x2

    if-nez v12, :cond_3

    .line 145
    return v4

    .line 153
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_2

    .line 154
    :cond_4
    move/from16 v0, v16

    :goto_2
    nop

    .line 158
    .local v0, "launchMode":I
    if-nez v0, :cond_5

    .line 159
    invoke-direct {v7, v5, v10}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 168
    :cond_5
    const/4 v1, 0x0

    .line 172
    .local v1, "hasInitialBounds":Z
    const/4 v2, 0x0

    .line 173
    .local v2, "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z

    move-result v17

    .line 174
    .local v17, "canApplyFreeformPolicy":Z
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v17, :cond_6

    .line 175
    invoke-direct {v7, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 176
    :cond_6
    const/4 v1, 0x1

    .line 177
    if-nez v0, :cond_7

    .line 178
    const/4 v3, 0x5

    goto :goto_3

    .line 179
    :cond_7
    move v3, v0

    :goto_3
    move v0, v3

    .line 180
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_5

    .line 182
    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    goto :goto_4

    .line 185
    :cond_9
    const/4 v4, 0x1

    if-ne v0, v4, :cond_a

    goto :goto_4

    .line 187
    :cond_a
    if-eqz v9, :cond_b

    if-eqz v17, :cond_b

    .line 188
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v6, v15, v9, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 190
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 191
    const/4 v0, 0x5

    .line 192
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    const/4 v1, 0x1

    .line 194
    const/4 v2, 0x1

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_5

    .line 199
    :cond_b
    const/4 v3, 0x6

    if-ne v0, v3, :cond_c

    if-eqz v11, :cond_c

    .line 200
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 201
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    const/4 v1, 0x1

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_5

    .line 217
    :cond_c
    :goto_4
    move/from16 v21, v1

    move/from16 v22, v2

    .end local v1    # "hasInitialBounds":Z
    .end local v2    # "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    .local v21, "hasInitialBounds":Z
    .local v22, "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    :goto_5
    const/4 v1, 0x0

    .line 222
    .local v1, "fullyResolvedCurrentParam":Z
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v21, :cond_12

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_e

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 224
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 225
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v4, 0x5

    goto :goto_8

    .line 228
    :cond_e
    :goto_6
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 229
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 230
    const/4 v2, 0x5

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    move/from16 v2, v16

    :goto_7
    move v1, v2

    .line 236
    :cond_10
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 241
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 242
    const/4 v4, 0x5

    if-ne v0, v4, :cond_13

    .line 243
    const/4 v1, 0x1

    move/from16 v20, v1

    goto :goto_9

    .line 236
    :cond_11
    const/4 v4, 0x5

    goto :goto_8

    .line 222
    :cond_12
    const/4 v4, 0x5

    .line 259
    :cond_13
    :goto_8
    move/from16 v20, v1

    .end local v1    # "fullyResolvedCurrentParam":Z
    .local v20, "fullyResolvedCurrentParam":Z
    :goto_9
    const/16 v23, 0x0

    .line 260
    .local v23, "hasInitialBoundsForSuggestedDisplayAreaInFreeformDisplay":Z
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 261
    const/4 v3, 0x2

    if-ne v0, v3, :cond_14

    move-object/from16 v19, v5

    move-object/from16 v25, v6

    const/4 v10, 0x1

    goto :goto_a

    .line 263
    :cond_14
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_17

    .line 264
    invoke-direct {v7, v15, v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 265
    const/16 v18, 0x5

    .line 266
    .end local v0    # "launchMode":I
    .local v18, "launchMode":I
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 267
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v24, v2

    move-object v2, v6

    move/from16 v25, v3

    move-object/from16 v3, p2

    const/4 v10, 0x1

    move/from16 v4, v18

    move-object/from16 v19, v5

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .local v19, "display":Lcom/android/server/wm/DisplayContent;
    move/from16 v5, v21

    move-object/from16 v25, v6

    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v25, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 269
    const/16 v23, 0x1

    move/from16 v6, v18

    goto :goto_b

    .line 266
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_15
    move-object/from16 v19, v5

    move-object/from16 v25, v6

    const/4 v10, 0x1

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move/from16 v6, v18

    goto :goto_b

    .line 273
    .end local v18    # "launchMode":I
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v0    # "launchMode":I
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_16
    move-object/from16 v19, v5

    move-object/from16 v25, v6

    const/4 v10, 0x1

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v0, 0x1

    .line 274
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v0

    goto :goto_b

    .line 263
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_17
    move-object/from16 v19, v5

    move-object/from16 v25, v6

    const/4 v10, 0x1

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    goto :goto_a

    .line 260
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_18
    move-object/from16 v19, v5

    move-object/from16 v25, v6

    const/4 v10, 0x1

    .line 282
    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_a
    move v6, v0

    .end local v0    # "launchMode":I
    .local v6, "launchMode":I
    :goto_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    if-ne v6, v0, :cond_19

    .line 283
    move/from16 v0, v16

    goto :goto_c

    :cond_19
    move v0, v6

    :goto_c
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 285
    if-ne v12, v10, :cond_1a

    .line 286
    const/4 v5, 0x2

    return v5

    .line 291
    :cond_1a
    const/4 v5, 0x2

    if-eqz v6, :cond_1b

    move v0, v6

    goto :goto_d

    .line 292
    :cond_1b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    :goto_d
    move v4, v0

    .line 293
    .local v4, "resolvedMode":I
    move-object/from16 v16, v25

    .line 296
    .local v16, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v11, :cond_1d

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_e

    :cond_1c
    move v8, v5

    move/from16 v26, v6

    move-object/from16 v10, v16

    move-object/from16 v18, v25

    move/from16 v25, v4

    goto/16 :goto_10

    .line 297
    :cond_1d
    :goto_e
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 298
    invoke-virtual {v0, v15, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v3

    .line 299
    .local v3, "activityType":I
    new-instance v0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7, v4, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V

    move-object/from16 v2, v19

    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->forAllTaskDisplayAreas(Ljava/util/function/Function;)Z

    .line 311
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_21

    move-object/from16 v1, v25

    .end local v25    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v1, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eq v0, v1, :cond_20

    .line 312
    if-eqz v22, :cond_1e

    .line 313
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 314
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v15, v9, v5}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 315
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v10

    move/from16 v21, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v6

    const/4 v8, 0x2

    .end local v21    # "hasInitialBounds":Z
    .local v0, "hasInitialBounds":Z
    goto :goto_f

    .line 316
    .end local v0    # "hasInitialBounds":Z
    .restart local v21    # "hasInitialBounds":Z
    :cond_1e
    if-eqz v23, :cond_1f

    .line 317
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 318
    iget-object v5, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v10, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    .end local v1    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v18, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object v1, v15

    move-object/from16 v19, v2

    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    move-object v2, v5

    move/from16 v24, v3

    .end local v3    # "activityType":I
    .local v24, "activityType":I
    move-object/from16 v3, p2

    move v5, v4

    .end local v4    # "resolvedMode":I
    .local v5, "resolvedMode":I
    move v4, v6

    move/from16 v25, v5

    const/4 v8, 0x2

    .end local v5    # "resolvedMode":I
    .local v25, "resolvedMode":I
    move/from16 v5, v21

    move/from16 v26, v6

    .end local v6    # "launchMode":I
    .local v26, "launchMode":I
    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_f

    .line 316
    .end local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "activityType":I
    .end local v25    # "resolvedMode":I
    .end local v26    # "launchMode":I
    .restart local v1    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "activityType":I
    .restart local v4    # "resolvedMode":I
    .restart local v6    # "launchMode":I
    :cond_1f
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v6

    const/4 v8, 0x2

    .end local v1    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "activityType":I
    .end local v4    # "resolvedMode":I
    .end local v6    # "launchMode":I
    .restart local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "activityType":I
    .restart local v25    # "resolvedMode":I
    .restart local v26    # "launchMode":I
    goto :goto_f

    .line 311
    .end local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "activityType":I
    .end local v25    # "resolvedMode":I
    .end local v26    # "launchMode":I
    .restart local v1    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "activityType":I
    .restart local v4    # "resolvedMode":I
    .restart local v6    # "launchMode":I
    :cond_20
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move v8, v5

    move/from16 v26, v6

    .end local v1    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "activityType":I
    .end local v4    # "resolvedMode":I
    .end local v6    # "launchMode":I
    .restart local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "activityType":I
    .restart local v25    # "resolvedMode":I
    .restart local v26    # "launchMode":I
    goto :goto_f

    .end local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "activityType":I
    .end local v26    # "launchMode":I
    .restart local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "activityType":I
    .restart local v4    # "resolvedMode":I
    .restart local v6    # "launchMode":I
    .local v25, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_21
    move-object/from16 v19, v2

    move/from16 v24, v3

    move v8, v5

    move/from16 v26, v6

    move-object/from16 v18, v25

    move/from16 v25, v4

    .line 323
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "activityType":I
    .end local v4    # "resolvedMode":I
    .end local v6    # "launchMode":I
    .restart local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "activityType":I
    .local v25, "resolvedMode":I
    .restart local v26    # "launchMode":I
    :goto_f
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_22

    .line 324
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 325
    .end local v16    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overridden-display-area=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static/range {v24 .. v24}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static/range {v25 .. v25}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-direct {v7, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v10, v0

    goto :goto_10

    .line 323
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v16    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_22
    move-object/from16 v10, v16

    .line 332
    .end local v16    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v24    # "activityType":I
    .local v10, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display-area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 333
    iput-object v10, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 335
    if-ne v12, v8, :cond_23

    .line 336
    return v8

    .line 345
    :cond_23
    if-eqz v20, :cond_26

    .line 346
    move/from16 v6, v25

    const/4 v0, 0x5

    .end local v25    # "resolvedMode":I
    .local v6, "resolvedMode":I
    if-ne v6, v0, :cond_25

    .line 348
    iget-object v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, v10, :cond_24

    .line 349
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v10, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 353
    :cond_24
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v10, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    move/from16 v24, v6

    goto :goto_11

    .line 346
    :cond_25
    move/from16 v24, v6

    goto :goto_11

    .line 355
    .end local v6    # "resolvedMode":I
    .restart local v25    # "resolvedMode":I
    :cond_26
    move/from16 v6, v25

    const/4 v0, 0x5

    .end local v25    # "resolvedMode":I
    .restart local v6    # "resolvedMode":I
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 356
    if-eqz p4, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_27

    if-ne v6, v0, :cond_27

    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 358
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 359
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, v10, :cond_27

    .line 361
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v10, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 364
    :cond_27
    iget-object v5, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v10

    move-object/from16 v3, p2

    move v4, v6

    move-object/from16 v16, v5

    move/from16 v5, v21

    move/from16 v24, v6

    .end local v6    # "resolvedMode":I
    .local v24, "resolvedMode":I
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_11

    .line 355
    .end local v24    # "resolvedMode":I
    .restart local v6    # "resolvedMode":I
    :cond_28
    move/from16 v24, v6

    .line 367
    .end local v6    # "resolvedMode":I
    .restart local v24    # "resolvedMode":I
    :goto_11
    return v8
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "availableBounds"    # Landroid/graphics/Rect;
    .param p2, "initialBounds"    # Landroid/graphics/Rect;

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 972
    aput v3, v1, v0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    .end local v0    # "i":I
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 976
    .local v0, "oneThirdWidth":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 977
    .local v2, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 978
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v3

    .line 981
    return-void

    .line 982
    :cond_1
    if-le v4, v2, :cond_2

    .line 984
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v3

    .line 985
    return-void

    .line 988
    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 989
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 990
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 991
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_4

    if-le v8, v7, :cond_3

    goto :goto_1

    .line 1001
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v3

    .line 1002
    const/16 v3, 0x33

    aput v3, v1, v9

    .line 1003
    return-void

    .line 994
    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v3

    .line 995
    aput v1, v10, v9

    .line 996
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z
    .locals 1
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "launchMode"    # I

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .locals 1
    .param p1, "launchMode"    # I

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 509
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 510
    return v0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    return v0

    .line 520
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 521
    .local v1, "sourceWindowingMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    .line 523
    return v0

    .line 529
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "srcBounds"    # Landroid/graphics/Rect;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 678
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 679
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 680
    .local v0, "density":F
    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 682
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds(Landroid/graphics/Rect;)V

    .line 683
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 684
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 685
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 686
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 829
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 832
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 833
    .local v0, "left":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    .line 834
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 835
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 747
    packed-switch p1, :pswitch_data_0

    .line 753
    const/4 v0, -0x1

    return v0

    .line 749
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 751
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultFreeformSize(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .locals 18
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "orientation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 791
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 792
    .local v3, "stableBounds":Landroid/graphics/Rect;
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 793
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 794
    .local v5, "portraitHeight":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 795
    .local v6, "otherDimension":I
    mul-int v7, v5, v5

    div-int/2addr v7, v6

    .line 796
    .local v7, "portraitWidth":I
    if-nez p3, :cond_0

    move v8, v5

    goto :goto_0

    .line 797
    :cond_0
    move v8, v7

    :goto_0
    nop

    .line 798
    .local v8, "defaultWidth":I
    if-nez p3, :cond_1

    move v9, v7

    goto :goto_1

    .line 799
    :cond_1
    move v9, v5

    :goto_1
    nop

    .line 803
    .local v9, "defaultHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v10, v10

    const/high16 v11, 0x43200000    # 160.0f

    div-float/2addr v10, v11

    .line 804
    .local v10, "density":F
    const/high16 v11, 0x43ce0000    # 412.0f

    mul-float/2addr v11, v10

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 805
    .local v11, "phonePortraitWidth":I
    const/high16 v13, 0x44370000    # 732.0f

    mul-float/2addr v13, v10

    add-float/2addr v13, v12

    float-to-int v12, v13

    .line 806
    .local v12, "phonePortraitHeight":I
    if-nez p3, :cond_2

    move v13, v12

    goto :goto_2

    .line 807
    :cond_2
    move v13, v11

    :goto_2
    nop

    .line 808
    .local v13, "phoneWidth":I
    if-nez p3, :cond_3

    move v14, v11

    goto :goto_3

    .line 809
    :cond_3
    move v14, v12

    :goto_3
    nop

    .line 812
    .local v14, "phoneHeight":I
    if-nez v0, :cond_4

    const/4 v15, -0x1

    goto :goto_4

    :cond_4
    iget v15, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 813
    .local v15, "layoutMinWidth":I
    :goto_4
    if-nez v0, :cond_5

    const/16 v16, -0x1

    goto :goto_5

    :cond_5
    iget v2, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    move/from16 v16, v2

    :goto_5
    move/from16 v2, v16

    .line 816
    .local v2, "layoutMinHeight":I
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 817
    .local v0, "width":I
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 819
    .local v4, "height":I
    nop

    .end local v2    # "layoutMinHeight":I
    .local v16, "layoutMinHeight":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 820
    iget v2, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .end local v0    # "width":I
    .local v17, "width":I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 821
    return-void
.end method

.method private getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 8
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 482
    .local v0, "controllerFromLaunchingRecord":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 483
    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 484
    .local v2, "displayAreaForLaunchingRecord":Lcom/android/server/wm/TaskDisplayArea;
    :goto_0
    if-eqz v2, :cond_1

    .line 485
    return-object v2

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 489
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    .line 488
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 490
    .local v3, "controllerFromProcess":Lcom/android/server/wm/WindowProcessController;
    if-nez v3, :cond_2

    move-object v4, v1

    goto :goto_1

    .line 491
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    :goto_1
    nop

    .line 492
    .local v4, "displayAreaForRecord":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v4, :cond_3

    .line 493
    return-object v4

    .line 496
    :cond_3
    if-nez p2, :cond_4

    move-object v5, v1

    goto :goto_2

    .line 497
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v7, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    :goto_2
    nop

    .line 498
    .local v5, "controllerFromRequest":Lcom/android/server/wm/WindowProcessController;
    if-nez v5, :cond_5

    goto :goto_3

    .line 499
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_3
    nop

    .line 500
    .local v1, "displayAreaFromSourceProcess":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_6

    .line 501
    return-object v1

    .line 504
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    return-object v6
.end method

.method private getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 544
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x70

    .line 545
    .local v9, "verticalGravity":I
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v0, 0x7

    .line 546
    .local v10, "horizontalGravity":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 547
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 548
    return-void

    .line 553
    :cond_0
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 554
    .local v12, "stableBounds":Landroid/graphics/Rect;
    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 555
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 556
    .local v14, "defaultWidth":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 560
    .local v15, "defaultHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 565
    .local v0, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .local v1, "height":I
    goto :goto_1

    .line 567
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 569
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 570
    .restart local v0    # "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_1

    .line 573
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_2
    move v0, v14

    .line 574
    .restart local v0    # "width":I
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_3

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v1, v14, :cond_3

    .line 575
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_0

    .line 576
    :cond_3
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 577
    int-to-float v1, v0

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 580
    :cond_4
    :goto_0
    move v1, v15

    .line 581
    .restart local v1    # "height":I
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v4, :cond_5

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v4, v15, :cond_5

    .line 582
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_1

    .line 583
    :cond_5
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_6

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6

    .line 584
    int-to-float v2, v1

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 589
    :cond_6
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 597
    :pswitch_0
    const/high16 v2, 0x3f000000    # 0.5f

    .local v2, "fractionOfHorizontalOffset":F
    goto :goto_2

    .line 594
    .end local v2    # "fractionOfHorizontalOffset":F
    :pswitch_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 595
    .restart local v2    # "fractionOfHorizontalOffset":F
    goto :goto_2

    .line 591
    .end local v2    # "fractionOfHorizontalOffset":F
    :pswitch_2
    const/4 v2, 0x0

    .line 592
    .restart local v2    # "fractionOfHorizontalOffset":F
    nop

    .line 601
    :goto_2
    sparse-switch v9, :sswitch_data_0

    .line 609
    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "fractionOfVerticalOffset":F
    goto :goto_3

    .line 606
    .end local v3    # "fractionOfVerticalOffset":F
    :sswitch_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 607
    .restart local v3    # "fractionOfVerticalOffset":F
    goto :goto_3

    .line 603
    .end local v3    # "fractionOfVerticalOffset":F
    :sswitch_1
    const/4 v3, 0x0

    .line 604
    .restart local v3    # "fractionOfVerticalOffset":F
    nop

    .line 612
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 613
    iget v4, v12, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 614
    sub-int v4, v14, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 615
    .local v4, "xOffset":I
    sub-int v5, v15, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 616
    .local v5, "yOffset":I
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 617
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p5, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 376
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 377
    .local v2, "optionLaunchTaskDisplayAreaToken":Landroid/window/WindowContainerToken;
    :goto_0
    if-eqz v2, :cond_1

    .line 378
    nop

    .line 379
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 384
    :cond_1
    if-nez v0, :cond_3

    .line 386
    const/4 v3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    .line 387
    .local v4, "optionLaunchId":I
    :goto_1
    if-eq v4, v3, :cond_3

    .line 388
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 389
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 390
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_3

    .line 391
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 399
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "optionLaunchId":I
    :cond_3
    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    iget-boolean v3, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_5

    .line 401
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 402
    if-eqz v0, :cond_4

    goto :goto_2

    .line 406
    :cond_4
    iget v3, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 407
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 408
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 409
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_5

    .line 410
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 416
    .end local v3    # "displayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    .line 417
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 419
    .local v3, "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object v0, v3

    .line 422
    .end local v3    # "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_6
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 423
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_3

    :cond_7
    nop

    .line 424
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    :goto_3
    if-eqz v1, :cond_8

    .line 426
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 429
    :cond_8
    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    .line 430
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v3

    .line 431
    .local v3, "callerDisplayId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 432
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 433
    .restart local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_9

    .line 434
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 439
    .end local v3    # "callerDisplayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_9
    if-nez v0, :cond_a

    .line 440
    iget-object v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 444
    :cond_a
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v3, :cond_b

    .line 445
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_b

    .line 446
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 450
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    .line 451
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_c

    .line 453
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 456
    :cond_c
    if-eqz v0, :cond_d

    .line 457
    move-object v3, v0

    goto :goto_4

    .line 458
    :cond_d
    invoke-direct {p0, p5, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 456
    :goto_4
    return-object v3
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"    # I
    .param p5, "hasInitialBounds"    # Z
    .param p6, "inOutBounds"    # Landroid/graphics/Rect;

    .line 691
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 694
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 696
    return-void

    .line 699
    :cond_0
    const/4 v1, 0x5

    if-eq p4, v1, :cond_1

    .line 704
    return-void

    .line 707
    :cond_1
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result v1

    .line 708
    .local v1, "orientation":I
    if-eq v1, v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 710
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    .line 717
    if-nez p5, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 736
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 738
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 722
    :cond_5
    :goto_1
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-ne v1, v0, :cond_6

    goto :goto_2

    .line 726
    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 743
    :goto_2
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 744
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1061
    return-void
.end method

.method static synthetic lambda$adjustBoundsToAvoidConflictInDisplayArea$1(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p0, "taskBoundsToCheck"    # Ljava/util/List;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 897
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    return-void

    .line 901
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 902
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 1072
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1073
    :cond_0
    const/4 v0, 0x1

    .line 1072
    :goto_0
    return v0
.end method

.method private outputLog()V
    .locals 0

    .line 1069
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 649
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 650
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 670
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 653
    :pswitch_1
    const/16 v0, 0xe

    .line 654
    goto :goto_0

    .line 667
    :pswitch_2
    const/4 v0, 0x1

    .line 668
    goto :goto_0

    .line 660
    :pswitch_3
    const/4 v0, 0x0

    .line 661
    nop

    .line 673
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 761
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 762
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    nop

    .line 764
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 763
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_0

    .line 765
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_0
    move v0, v1

    .line 772
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 773
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 774
    :cond_2
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1
    move v0, v1

    .line 781
    :cond_3
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 1029
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1038
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_0

    .line 1035
    .end local v0    # "horizontalOffset":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1036
    .restart local v0    # "horizontalOffset":I
    goto :goto_0

    .line 1031
    .end local v0    # "horizontalOffset":I
    :pswitch_2
    nop

    .line 1032
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 1031
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 1033
    .restart local v0    # "horizontalOffset":I
    nop

    .line 1042
    :goto_0
    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1050
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_1

    .line 1047
    .end local v1    # "verticalOffset":I
    :sswitch_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1048
    .restart local v1    # "verticalOffset":I
    goto :goto_1

    .line 1044
    .end local v1    # "verticalOffset":I
    :sswitch_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 1045
    .restart local v1    # "verticalOffset":I
    nop

    .line 1053
    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1054
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 621
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 626
    .local v0, "displayOrientation":I
    nop

    .line 627
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 626
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result v2

    .line 628
    .local v2, "activityOrientation":I
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    if-eq v0, v2, :cond_1

    .line 630
    const/4 v1, 0x1

    return v1

    .line 633
    :cond_1
    return v1

    .line 622
    .end local v0    # "displayOrientation":I
    .end local v2    # "activityOrientation":I
    :cond_2
    :goto_0
    return v1
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "left"    # Landroid/graphics/Rect;
    .param p1, "right"    # Landroid/graphics/Rect;

    .line 1077
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1078
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1077
    :goto_0
    return v0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayAreaBounds"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 924
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    return-void

    .line 930
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 933
    return-void

    .line 936
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 937
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    .line 938
    .local v3, "direction":I
    if-nez v3, :cond_2

    .line 940
    goto :goto_2

    .line 943
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 944
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 945
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 946
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 949
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 950
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 952
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 954
    return-void

    .line 937
    .end local v3    # "direction":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic lambda$calculate$0$TaskLaunchParamsModifier(IILcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "resolvedMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 300
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 303
    .local v0, "launchRoot":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 306
    :cond_0
    iput-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 307
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 107
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 109
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 110
    return v0
.end method
