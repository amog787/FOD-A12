.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;,
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;,
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBootClassPathContainsATB:Z

.field private final mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const-class v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "packageUpdaters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;>;"
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->addUpdaterForAndroidTestBase(Ljava/util/List;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 66
    .local v1, "bootClassPathContainsATB":Z
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 68
    .local v2, "updaterArray":[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    new-instance v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;-><init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V

    sput-object v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 70
    .end local v0    # "packageUpdaters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;>;"
    .end local v1    # "bootClassPathContainsATB":Z
    .end local v2    # "updaterArray":[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    return-void
.end method

.method private constructor <init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V
    .locals 0
    .param p1, "bootClassPathContainsATB"    # Z
    .param p2, "packageUpdaters"    # [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 110
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 111
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    .line 112
    iput-object p2, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 113
    return-void
.end method

.method private static addUpdaterForAndroidTestBase(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;",
            ">;)Z"
        }
    .end annotation

    .line 82
    .local p0, "packageUpdaters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "hasClass":Z
    const-string v1, "android.content.pm.AndroidTestBaseUpdater"

    .line 85
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    const-class v2, Landroid/content/pm/PackageParser;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 86
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 87
    sget-object v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .end local v2    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    if-eqz v0, :cond_1

    .line 93
    new-instance v2, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_1
    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_2
    return v0
.end method

.method public static bootClassPathContainsATB()Z
    .locals 1

    .line 139
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    iget-boolean v0, v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-object v0
.end method

.method public static modifySharedLibraries(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 1
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p1, "isUpdatedSystemApp"    # Z

    .line 124
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    .line 125
    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 4
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 130
    .local v3, "packageUpdater":Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    .line 129
    .end local v3    # "packageUpdater":Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method
