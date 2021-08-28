.class Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
.super Ljava/lang/Object;
.source "MeasuredEnergySnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MeasuredEnergySnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasuredEnergyDeltaData"
.end annotation


# instance fields
.field public bluetoothChargeUC:J

.field public cpuClusterChargeUC:[J

.field public displayChargeUC:J

.field public gnssChargeUC:J

.field public mobileRadioChargeUC:J

.field public otherTotalChargeUC:[J

.field public otherUidChargesUC:[Landroid/util/SparseLongArray;

.field public wifiChargeUC:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    .line 111
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:J

    .line 114
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    .line 117
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    .line 120
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    .line 123
    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    .line 126
    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    return-void
.end method
