.class public final synthetic Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/job/controllers/QuotaController$AlarmQueue$$ExternalSyntheticLambda0;

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

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->lambda$new$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
