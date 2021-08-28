.class final Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
.super Ljava/lang/Object;
.source "SystemMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/SystemMemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Metrics"
.end annotation


# instance fields
.field public dmaBufTotalExportedKb:I

.field public gpuPrivateAllocationsKb:I

.field public gpuTotalUsageKb:I

.field public kernelStackKb:I

.field public pageTablesKb:I

.field public totalIonKb:I

.field public unaccountedKb:I

.field public unreclaimableSlabKb:I

.field public vmallocUsedKb:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
