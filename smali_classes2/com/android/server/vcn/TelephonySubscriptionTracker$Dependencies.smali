.class public Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;
.super Ljava/lang/Object;
.source "TelephonySubscriptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/TelephonySubscriptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 370
    invoke-static {p1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method
