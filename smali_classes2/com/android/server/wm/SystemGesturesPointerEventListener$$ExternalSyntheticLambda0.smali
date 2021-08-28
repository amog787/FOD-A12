.class public final synthetic Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->lambda$systemReady$0$SystemGesturesPointerEventListener()V

    return-void
.end method
