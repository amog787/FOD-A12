.class public final synthetic Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/SideFpsEventHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/SideFpsEventHandler;

    iput-wide p2, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/SideFpsEventHandler;

    iget-wide v1, p0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$onSinglePressDetected$0$SideFpsEventHandler(J)V

    return-void
.end method
