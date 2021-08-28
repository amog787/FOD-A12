.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-static {p1}, Lcom/android/server/am/AppProfiler;->lambda$reportMemUsage$6(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method
