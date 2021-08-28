.class public final synthetic Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/people/data/EventIndex;->$r8$lambda$oObI4tb0P1GmvfZmYp2X84WEua0(J)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method
