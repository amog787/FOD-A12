.class public final Lcom/android/server/powerstats/BatteryTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "BatteryTrigger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryLevel:I

.field private final mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/android/server/powerstats/BatteryTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/BatteryTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerStatsLogger"    # Lcom/android/server/powerstats/PowerStatsLogger;
    .param p3, "triggerEnabled"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 37
    new-instance v1, Lcom/android/server/powerstats/BatteryTrigger$1;

    invoke-direct {v1, p0}, Lcom/android/server/powerstats/BatteryTrigger$1;-><init>(Lcom/android/server/powerstats/BatteryTrigger;)V

    iput-object v1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/powerstats/BatteryTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string v3, "level"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 64
    .end local v1    # "batteryStatus":Landroid/content/Intent;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/powerstats/BatteryTrigger;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/powerstats/BatteryTrigger;

    .line 31
    iget v0, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/powerstats/BatteryTrigger;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/powerstats/BatteryTrigger;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    return p1
.end method
