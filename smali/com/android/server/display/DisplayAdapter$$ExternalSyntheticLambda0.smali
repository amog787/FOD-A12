.class public final synthetic Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->lambda$sendTraversalRequestLocked$1$DisplayAdapter()V

    return-void
.end method
