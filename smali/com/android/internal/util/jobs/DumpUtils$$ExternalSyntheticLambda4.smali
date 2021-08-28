.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;

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

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p1

    return p1
.end method
