.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$3$SystemServer()V

    return-void
.end method
