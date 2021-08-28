.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/companion/Association;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/Association;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;->f$0:Landroid/companion/Association;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;->f$0:Landroid/companion/Association;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/companion/Association;

    invoke-static {v0, v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$onAssociationPreRemove$2(Landroid/companion/Association;Ljava/lang/String;Landroid/companion/Association;)Z

    move-result p1

    return p1
.end method
