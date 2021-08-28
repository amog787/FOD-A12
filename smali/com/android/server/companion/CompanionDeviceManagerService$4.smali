.class Lcom/android/server/companion/CompanionDeviceManagerService$4;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->createDeviceListenerServiceConnector(Landroid/companion/Association;)Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/content/Intent;
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I

    .line 1206
    .local p6, "arg4":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;Landroid/companion/ICompanionDeviceService;>;"
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$4;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1216
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 1219
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$4;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$2300(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$4;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1220
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1211
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method
