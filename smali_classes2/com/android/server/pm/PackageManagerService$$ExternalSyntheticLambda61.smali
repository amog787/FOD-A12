.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$3:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$3:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->lambda$prepareAppDataAndMigrate$66$PackageManagerService(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    return-void
.end method
