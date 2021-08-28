.class Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossProfileDomainInfo"
.end annotation


# instance fields
.field highestApprovalLevel:I

.field resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 0
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "highestApprovalLevel"    # I

    .line 10811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10812
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 10813
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    .line 10814
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 10818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossProfileDomainInfo{resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highestApprovalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;->highestApprovalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
