.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda34;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda34;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda34;->INSTANCE:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda34;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$handleLocaleChanged$27(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method
