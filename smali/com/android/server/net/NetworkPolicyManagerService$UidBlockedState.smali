.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidBlockedState"
.end annotation


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5955
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5956
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 5957
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5958
    return-void
.end method

.method static getEffectiveBlockedReasons(II)I
    .locals 3
    .param p0, "blockedReasons"    # I
    .param p1, "allowedReasons"    # I

    .line 5974
    move v0, p0

    .line 5976
    .local v0, "effectiveBlockedReasons":I
    if-nez p0, :cond_0

    .line 5977
    return v0

    .line 5979
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 5980
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 5982
    :cond_1
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 5983
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 5985
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 5986
    and-int/lit8 v0, v0, -0x2

    .line 5987
    and-int/lit8 v0, v0, -0x3

    .line 5988
    and-int/lit8 v0, v0, -0x5

    .line 5990
    :cond_3
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    const v2, -0x10001

    if-eqz v1, :cond_4

    .line 5991
    and-int/2addr v0, v2

    .line 5992
    const v1, -0x20001

    and-int/2addr v0, v1

    .line 5994
    :cond_4
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    .line 5995
    and-int/lit8 v0, v0, -0x2

    .line 5996
    and-int/lit8 v0, v0, -0x3

    .line 5997
    and-int/lit8 v0, v0, -0x5

    .line 5999
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 6000
    and-int/lit8 v0, v0, -0x2

    .line 6001
    and-int/lit8 v0, v0, -0x5

    .line 6003
    :cond_6
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_7

    .line 6004
    and-int/lit8 v0, v0, -0x9

    .line 6006
    :cond_7
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 6007
    and-int/2addr v0, v2

    .line 6009
    :cond_8
    return v0
.end method


# virtual methods
.method updateEffectiveBlockedReasons()V
    .locals 3

    .line 5961
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800()Z

    move-result v0

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    if-nez v0, :cond_0

    .line 5962
    const-string/jumbo v0, "updateEffectiveBlockedReasons(): no blocked reasons"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    :cond_0
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5965
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectiveBlockedReasons(): blockedReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5967
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectiveReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5968
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5966
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5970
    :cond_1
    return-void
.end method
