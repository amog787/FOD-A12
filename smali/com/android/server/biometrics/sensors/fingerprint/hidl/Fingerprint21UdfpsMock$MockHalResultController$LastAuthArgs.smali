.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;
.super Ljava/lang/Object;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LastAuthArgs"
.end annotation


# instance fields
.field final deviceId:J

.field final fingerId:I

.field final groupId:I

.field final lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

.field final token:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationConsumer;JIILjava/util/ArrayList;)V
    .locals 1
    .param p1, "authenticationConsumer"    # Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    .param p2, "deviceId"    # J
    .param p4, "fingerId"    # I
    .param p5, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;",
            "JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p6, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 194
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->deviceId:J

    .line 195
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->fingerId:I

    .line 196
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->groupId:I

    .line 197
    if-nez p6, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->token:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->token:Ljava/util/ArrayList;

    .line 203
    :goto_0
    return-void
.end method
