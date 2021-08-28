.class Lcom/android/server/pm/PackageInstallerSession$8;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$systemDataLoader:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 3915
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$systemDataLoader:Z

    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHealthStatus(II)V
    .locals 3
    .param p1, "storageId"    # I
    .param p2, "status"    # I

    .line 3918
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$3100(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3922
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3927
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$systemDataLoader:Z

    if-eqz v0, :cond_1

    .line 3929
    goto :goto_0

    .line 3934
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->access$3102(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 3935
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/16 v1, -0x14

    const-string v2, "Image is missing pages required for installation."

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$3600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_0

    .line 3924
    :pswitch_2
    nop

    .line 3939
    :goto_0
    return-void

    .line 3919
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
