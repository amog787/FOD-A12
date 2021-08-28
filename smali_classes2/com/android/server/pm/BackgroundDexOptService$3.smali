.class Lcom/android/server/pm/BackgroundDexOptService$3;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "name"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pkgs:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pkgs:Landroid/util/ArraySet;

    invoke-static {v0, v1, v2, v0}, Lcom/android/server/pm/BackgroundDexOptService;->access$300(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    .line 262
    .local v0, "result":I
    const/4 v1, 0x4

    const/4 v2, 0x2

    const-string v3, "BackgroundDexOptService"

    if-nez v0, :cond_0

    .line 263
    const-string v4, "Idle optimizations completed."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 265
    const-string v4, "Idle optimizations aborted because of space constraints."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_1
    if-ne v0, v2, :cond_2

    .line 267
    const-string v4, "Idle optimizations aborted by job scheduler."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    if-ne v0, v1, :cond_3

    .line 269
    const-string v4, "Idle optimizations aborted by thermal throttling."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Idle optimizations ended with unexpected code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    if-ne v0, v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_1

    .line 277
    :cond_4
    if-eq v0, v2, :cond_5

    .line 279
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 281
    :cond_5
    :goto_1
    return-void
.end method
