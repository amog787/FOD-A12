.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda73;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationManagerInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda73;->f$0:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda73;->f$0:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$getOptimizablePackages$38(Lcom/android/server/apphibernation/AppHibernationManagerInternal;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
