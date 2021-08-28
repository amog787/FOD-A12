.class Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/ThreadLocal;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/android/server/pm/PackageManagerService$ThreadComputer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5626
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    .locals 2

    .line 5628
    new-instance v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;-><init>(Lcom/android/server/pm/PackageManagerService$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 5626
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$2;->initialValue()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    return-object v0
.end method
