.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$ProducerWithArgument;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;->INSTANCE:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Landroid/content/ComponentName;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$main$26(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object p1

    return-object p1
.end method
