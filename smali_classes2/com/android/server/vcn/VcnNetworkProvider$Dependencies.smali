.class public Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;
.super Ljava/lang/Object;
.source "VcnNetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnNetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerNetworkOffer(Lcom/android/server/vcn/VcnNetworkProvider;Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/server/vcn/VcnNetworkProvider;
    .param p2, "score"    # Landroid/net/NetworkScore;
    .param p3, "capabilitiesFilter"    # Landroid/net/NetworkCapabilities;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/NetworkProvider$NetworkOfferCallback;

    .line 225
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/vcn/VcnNetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    .line 226
    return-void
.end method
