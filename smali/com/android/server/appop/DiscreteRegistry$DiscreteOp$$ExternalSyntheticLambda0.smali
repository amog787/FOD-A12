.class public final synthetic Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    check-cast p2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-static {p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->lambda$deserialize$0(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I

    move-result p1

    return p1
.end method
