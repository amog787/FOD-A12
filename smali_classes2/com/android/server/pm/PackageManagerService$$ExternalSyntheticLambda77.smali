.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda77;->f$0:Lcom/android/server/pm/PackageManagerService$Injector;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda77;->f$0:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getScanningPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v0

    return-object v0
.end method
