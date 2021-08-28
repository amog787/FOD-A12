.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;->INSTANCE:Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

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

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$abrrg5ZeD4L8gkzCRyl5PetilMg(Landroid/net/LinkAddress;)Z

    move-result p1

    return p1
.end method
