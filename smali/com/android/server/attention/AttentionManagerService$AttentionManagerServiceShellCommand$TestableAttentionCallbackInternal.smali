.class Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestableAttentionCallbackInternal"
.end annotation


# instance fields
.field private mLastCallbackCode:I

.field final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    .line 711
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 712
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return-void
.end method


# virtual methods
.method public getLastCallbackCode()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return v0
.end method

.method public onFailure(I)V
    .locals 0
    .param p1, "error"    # I

    .line 721
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 722
    return-void
.end method

.method public onSuccess(IJ)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "timestamp"    # J

    .line 716
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 717
    return-void
.end method

.method public reset()V
    .locals 1

    .line 725
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 726
    return-void
.end method
