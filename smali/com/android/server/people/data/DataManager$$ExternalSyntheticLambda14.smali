.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;-><init>()V

    sput-object v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$13(Landroid/util/Pair;)J

    move-result-wide v0

    return-wide v0
.end method
