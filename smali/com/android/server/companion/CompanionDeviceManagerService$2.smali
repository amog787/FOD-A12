.class Lcom/android/server/companion/CompanionDeviceManagerService$2;
.super Lcom/android/internal/infra/PerUser;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/PerUser<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/String;",
        "Lcom/android/internal/infra/ServiceConnector<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 251
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/infra/PerUser;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceService;",
            ">;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create(I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$2;->create(I)Landroid/util/ArrayMap;

    move-result-object p1

    return-object p1
.end method
