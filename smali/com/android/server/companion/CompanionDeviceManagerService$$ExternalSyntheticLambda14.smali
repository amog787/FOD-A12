.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final synthetic f$1:Landroid/companion/Association;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/Association;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;->f$1:Landroid/companion/Association;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda14;->f$1:Landroid/companion/Association;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$getDeviceListenerServiceConnector$13$CompanionDeviceManagerService(Landroid/companion/Association;Ljava/lang/String;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object p1

    return-object p1
.end method
