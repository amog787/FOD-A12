.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService;

    check-cast p2, Landroid/companion/Association;

    check-cast p3, Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->$r8$lambda$3n3hT9_T4IzBqXOYPVsPevhYbMY(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
