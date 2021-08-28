.class public final synthetic Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    check-cast p2, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-static {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->$r8$lambda$5X03k1LiJAKe-R59mmLFpk7iYzQ(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method
