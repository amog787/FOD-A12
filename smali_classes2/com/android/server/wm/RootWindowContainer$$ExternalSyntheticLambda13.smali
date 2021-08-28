.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;->f$0:Landroid/service/voice/IVoiceInteractionSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;->f$0:Landroid/service/voice/IVoiceInteractionSession;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$finishVoiceTask$32(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V

    return-void
.end method
