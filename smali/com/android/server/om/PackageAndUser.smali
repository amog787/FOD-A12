.class final Lcom/android/server/om/PackageAndUser;
.super Ljava/lang/Object;
.source "PackageAndUser.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/android/server/om/PackageAndUser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 38
    return v2

    .line 40
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/om/PackageAndUser;

    .line 41
    .local v1, "other":Lcom/android/server/om/PackageAndUser;
    iget-object v3, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    iget v4, v1, Lcom/android/server/om/PackageAndUser;->userId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 48
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 49
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    add-int/2addr v1, v3

    .line 50
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/om/PackageAndUser;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PackageAndUser{packageName=%s, userId=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
