.class Lcom/android/server/policy/SideFpsEventHandler$2;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler;->lambda$onSinglePressDetected$0$SideFpsEventHandler(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;

.field final synthetic val$eventTime:J


# direct methods
.method constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SideFpsEventHandler;

    .line 83
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    iput-wide p2, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$eventTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->access$300(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/PowerManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$eventTime:J

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 92
    return-void
.end method
