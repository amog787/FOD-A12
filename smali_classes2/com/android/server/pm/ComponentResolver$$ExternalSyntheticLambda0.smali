.class public final synthetic Lcom/android/server/pm/ComponentResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/ComponentResolver$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/ComponentResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/ComponentResolver$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComponentResolver$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/ComponentResolver$$ExternalSyntheticLambda0;

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

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/ComponentResolver;->lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
