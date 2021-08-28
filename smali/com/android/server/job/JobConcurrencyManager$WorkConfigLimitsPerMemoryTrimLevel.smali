.class Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkConfigLimitsPerMemoryTrimLevel"
.end annotation


# instance fields
.field public final critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

.field public final normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V
    .locals 0
    .param p1, "normal"    # Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;
    .param p2, "moderate"    # Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;
    .param p3, "low"    # Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;
    .param p4, "critical"    # Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1440
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1441
    iput-object p3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1442
    iput-object p4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1443
    return-void
.end method
