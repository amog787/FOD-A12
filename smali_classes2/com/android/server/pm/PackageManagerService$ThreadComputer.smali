.class Lcom/android/server/pm/PackageManagerService$ThreadComputer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadComputer"
.end annotation


# instance fields
.field mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

.field mRefCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    .line 5606
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 5604
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;-><init>()V

    return-void
.end method


# virtual methods
.method acquire()V
    .locals 2

    .line 5615
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    if-eqz v1, :cond_0

    .line 5618
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    .line 5619
    return-void

    .line 5616
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "computer acquire on empty ref count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method acquire(Lcom/android/server/pm/PackageManagerService$Computer;)V
    .locals 3
    .param p1, "c"    # Lcom/android/server/pm/PackageManagerService$Computer;

    .line 5608
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 5609
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computer mismatch, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5611
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    .line 5612
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    .line 5613
    return-void
.end method

.method release()V
    .locals 1

    .line 5621
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-nez v0, :cond_0

    .line 5622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    .line 5624
    :cond_0
    return-void
.end method
