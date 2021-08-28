.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
