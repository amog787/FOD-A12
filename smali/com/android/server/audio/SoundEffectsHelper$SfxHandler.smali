.class Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
.super Landroid/os/Handler;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfxHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p2, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$1;

    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$000(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$000(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onTimeout()V

    goto :goto_0

    .line 473
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, "effect":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 474
    .local v1, "volume":I
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V

    invoke-static {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper;->access$400(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 482
    goto :goto_0

    .line 470
    .end local v0    # "effect":I
    .end local v1    # "volume":I
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    .line 471
    goto :goto_0

    .line 467
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    invoke-static {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$400(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 468
    nop

    .line 489
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
