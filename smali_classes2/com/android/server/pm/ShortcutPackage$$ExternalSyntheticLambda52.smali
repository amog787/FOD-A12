.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;->INSTANCE:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;

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

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$sortShortcutsToActivities$21(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
