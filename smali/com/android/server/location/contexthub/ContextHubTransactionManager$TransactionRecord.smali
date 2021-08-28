.class Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionRecord"
.end annotation


# instance fields
.field private final mTimestamp:J

.field private final mTransaction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V
    .locals 2
    .param p2, "transaction"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;->mTransaction:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;->mTimestamp:J

    .line 112
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->access$000()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;->mTransaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
