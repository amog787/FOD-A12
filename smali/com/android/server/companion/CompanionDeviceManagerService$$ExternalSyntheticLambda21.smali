.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda21;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/companion/Association;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$removeAssociation$0$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Landroid/companion/Association;)Z

    move-result p1

    return p1
.end method
