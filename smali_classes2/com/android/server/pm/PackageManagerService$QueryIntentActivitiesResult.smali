.class Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryIntentActivitiesResult"
.end annotation


# instance fields
.field public addInstant:Z

.field public answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sortResult:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 10778
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    .line 10774
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    .line 10775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 10776
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .line 10779
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .line 10780
    return-void
.end method

.method constructor <init>(ZZLjava/util/List;)V
    .locals 1
    .param p1, "s"    # Z
    .param p2, "a"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 10781
    .local p3, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    .line 10774
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    .line 10775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 10776
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .line 10782
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    .line 10783
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    .line 10784
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 10785
    return-void
.end method
