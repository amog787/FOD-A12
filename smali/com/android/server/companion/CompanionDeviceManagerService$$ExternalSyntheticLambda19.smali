.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/companion/Association;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/Association;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda19;->f$0:Landroid/companion/Association;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda19;->f$0:Landroid/companion/Association;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$createDeviceListenerServiceConnector$14(Landroid/companion/Association;Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method
