.class Lcom/android/server/media/MediaSessionRecord$2;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$previousFlagPlaySound:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$useSuggested:Z


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 513
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$opPackageName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$pid:I

    iput p9, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 517
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    invoke-static {v0, v1}, Lcom/android/server/media/MediaServerUtils;->isStreamActive(Landroid/media/AudioManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$opPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$pid:I

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 521
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 519
    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v1

    const/high16 v2, -0x80000000

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    or-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$opPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$pid:I

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 526
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 523
    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$opPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$pid:I

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 531
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 529
    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot adjust volume: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", useSuggested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", previousFlagPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionRecord"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method
