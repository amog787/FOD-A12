.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Lcom/android/server/pm/PackageSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$3:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$6:I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$8:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$3:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$5:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$6:I

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->f$8:Lcom/android/server/pm/PackageSetting;

    move-object v9, p1

    check-cast v9, Ljava/lang/Long;

    move-object v10, p2

    check-cast v10, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PackageManagerService;->lambda$prepareAppDataLeaf$67$PackageManagerService(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method
