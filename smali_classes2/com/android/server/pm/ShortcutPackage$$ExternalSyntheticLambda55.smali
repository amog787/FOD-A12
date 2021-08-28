.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;->INSTANCE:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;

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

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$verifyStates$35(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
