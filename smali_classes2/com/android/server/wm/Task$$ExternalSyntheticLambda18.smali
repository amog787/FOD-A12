.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->$r8$lambda$PRiyfFwy4dog-mhOrPI0NF2Vdhc(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
