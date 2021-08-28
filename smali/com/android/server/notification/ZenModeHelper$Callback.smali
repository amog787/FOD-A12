.class public Lcom/android/server/notification/ZenModeHelper$Callback;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 1644
    return-void
.end method

.method onConfigChanged()V
    .locals 0

    .line 1640
    return-void
.end method

.method onConsolidatedPolicyChanged()V
    .locals 0

    .line 1643
    return-void
.end method

.method onPolicyChanged()V
    .locals 0

    .line 1642
    return-void
.end method

.method onZenModeChanged()V
    .locals 0

    .line 1641
    return-void
.end method
