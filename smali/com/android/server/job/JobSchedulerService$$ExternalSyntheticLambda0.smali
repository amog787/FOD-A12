.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/utils/quota/Categorizer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p1

    return-object p1
.end method
