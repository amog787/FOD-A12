.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$verifyStage$44(Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;)V

    return-void
.end method
