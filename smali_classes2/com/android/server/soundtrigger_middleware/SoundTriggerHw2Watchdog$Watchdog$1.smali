.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$1;
.super Ljava/util/TimerTask;
.source "SoundTriggerHw2Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

.field final synthetic val$this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    .line 159
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$1;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$1;->val$this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog$1;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;->access$000(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog$Watchdog;)Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "SoundTriggerHw2Watchdog"

    const-string v2, "HAL deadline expired. Rebooting."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Watchdog;->access$100()V

    .line 164
    return-void
.end method
