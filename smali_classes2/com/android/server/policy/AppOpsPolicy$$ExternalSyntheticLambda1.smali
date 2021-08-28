.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationManagerInternal$LocationPackageTagsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    return-void
.end method


# virtual methods
.method public final onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->lambda$new$0$AppOpsPolicy(ILandroid/os/PackageTagsList;)V

    return-void
.end method
