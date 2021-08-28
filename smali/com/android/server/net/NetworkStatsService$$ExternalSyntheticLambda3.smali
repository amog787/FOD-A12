.class public final synthetic Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->lambda$performPollFromProvidersLocked$2(Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
