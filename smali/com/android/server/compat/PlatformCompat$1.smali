.class Lcom/android/server/compat/PlatformCompat$1;
.super Landroid/content/BroadcastReceiver;
.source "PlatformCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/compat/PlatformCompat;

    .line 489
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat$1;->this$0:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 492
    if-nez p2, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 496
    .local v0, "packageData":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 497
    return-void

    .line 499
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 501
    return-void

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/android/server/compat/PlatformCompat$1;->this$0:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v2}, Lcom/android/server/compat/PlatformCompat;->access$000(Lcom/android/server/compat/PlatformCompat;)Lcom/android/server/compat/CompatConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/compat/CompatConfig;->recheckOverrides(Ljava/lang/String;)V

    .line 504
    return-void
.end method
