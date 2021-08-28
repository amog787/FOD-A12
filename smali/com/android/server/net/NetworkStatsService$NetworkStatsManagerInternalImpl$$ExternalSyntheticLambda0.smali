.class public final synthetic Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl$$ExternalSyntheticLambda0;->f$2:J

    move-object v5, p1

    check-cast v5, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->lambda$setStatsProviderWarningAndLimitAsync$0(Ljava/lang/String;JJLcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
