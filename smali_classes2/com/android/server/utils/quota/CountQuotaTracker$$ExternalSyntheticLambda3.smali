.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final synthetic f$1:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;->f$1:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;->f$1:Landroid/util/proto/ProtoOutputStream;

    move-object v5, p4

    check-cast v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$dump$8$CountQuotaTracker(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V

    return-void
.end method
