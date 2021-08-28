.class public final Lcom/android/server/timedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    }
.end annotation


# instance fields
.field private final mAutoDetectionEnabled:Z

.field private final mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method private constructor <init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->access$000(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 42
    invoke-static {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->access$100(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 43
    invoke-static {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->access$200(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;Lcom/android/server/timedetector/ConfigurationInternal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .param p2, "x1"    # Lcom/android/server/timedetector/ConfigurationInternal$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V

    return-void
.end method

.method private timeCapabilities()Landroid/app/time/TimeCapabilities;
    .locals 4

    .line 59
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    const/16 v1, 0x28

    const/16 v2, 0x14

    if-eqz v0, :cond_0

    .line 60
    move v3, v1

    goto :goto_0

    .line 61
    :cond_0
    move v3, v2

    :goto_0
    nop

    .line 64
    .local v3, "configureAutoTimeDetectionEnabledCapability":I
    if-eqz v0, :cond_1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    .line 68
    .local v0, "suggestTimeManuallyCapability":I
    new-instance v1, Landroid/app/time/TimeCapabilities$Builder;

    iget v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoTimeDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroid/app/time/TimeCapabilities$Builder;->setSuggestTimeManuallyCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    .line 68
    return-object v1
.end method

.method private timeConfiguration()Landroid/app/time/TimeConfiguration;
    .locals 2

    .line 52
    new-instance v0, Landroid/app/time/TimeConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeConfiguration$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/time/TimeConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    move-result-object v0

    .line 52
    return-object v0
.end method


# virtual methods
.method public capabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 3

    .line 48
    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig;

    invoke-direct {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->timeCapabilities()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->timeConfiguration()Landroid/app/time/TimeConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/timedetector/ConfigurationInternal;

    .line 80
    .local v2, "that":Lcom/android/server/timedetector/ConfigurationInternal;
    iget v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    iget v4, v2, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v4, v2, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    iget-boolean v4, v2, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 78
    .end local v2    # "that":Lcom/android/server/timedetector/ConfigurationInternal;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationInternal{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserConfigAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
