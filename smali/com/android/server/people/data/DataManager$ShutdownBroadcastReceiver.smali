.class Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Lcom/android/server/people/data/DataManager$1;

    .line 1394
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/android/server/people/data/UserData;)V
    .locals 1
    .param p0, "userData"    # Lcom/android/server/people/data/UserData;

    .line 1398
    sget-object v0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1398
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    sget-object v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, Lcom/android/server/people/data/DataManager;->access$1700(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 1399
    return-void
.end method
