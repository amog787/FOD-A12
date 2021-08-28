.class public final Lcom/android/server/compat/CompatChange;
.super Lcom/android/internal/compat/CompatibilityChangeInfo;
.source "CompatChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/CompatChange$ChangeListener;
    }
.end annotation


# static fields
.field static final CTS_SYSTEM_API_CHANGEID:J = 0x8e787b1L

.field static final CTS_SYSTEM_API_OVERRIDABLE_CHANGEID:J = 0xa5faf9fL


# instance fields
.field private mEvaluatedOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field private mRawOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/compat/PackageOverride;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 10
    .param p1, "changeId"    # J

    .line 89
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V
    .locals 10
    .param p1, "changeId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "enableAfterTargetSdk"    # I
    .param p5, "enableSinceTargetSdk"    # I
    .param p6, "disabled"    # Z
    .param p7, "loggingOnly"    # Z
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "overridable"    # Z

    .line 113
    move-object v9, p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IIZZLjava/lang/String;Z)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/config/Change;)V
    .locals 10
    .param p1, "change"    # Lcom/android/server/compat/config/Change;

    .line 96
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableAfterTargetSdk()I

    move-result v4

    .line 97
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableSinceTargetSdk()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDisabled()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getLoggingOnly()Z

    move-result v7

    .line 98
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getOverridable()Z

    move-result v9

    .line 96
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    .line 99
    return-void
.end method

.method private addPackageOverrideInternal(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 140
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    .line 146
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add overrides for a logging only change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private hasRawOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method private removePackageOverrideInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "override"    # Landroid/app/compat/PackageOverride;
    .param p3, "allowedState"    # Lcom/android/internal/compat/OverrideAllowedState;
    .param p4, "versionCode"    # Ljava/lang/Long;

    .line 167
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    .line 173
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add overrides for a logging only change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method clearOverrides()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    return-void
.end method

.method defaultValue()Z
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasPackageOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "buildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 244
    if-nez p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v0

    return v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 251
    return v1

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    .line 256
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 257
    .local v0, "compareSdk":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v0, v2, :cond_3

    .line 258
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v2

    if-lt v0, v2, :cond_4

    move v1, v3

    :cond_4
    return v1

    .line 262
    .end local v0    # "compareSdk":I
    :cond_5
    return v3
.end method

.method loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    .locals 6
    .param p1, "changeOverrides"    # Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 320
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->getOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 322
    .local v1, "override":Lcom/android/server/compat/overrides/OverrideValue;
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v4}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 324
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v5

    .line 323
    invoke-virtual {v4, v5}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v4

    .line 324
    invoke-virtual {v4}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v4

    .line 322
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .end local v1    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 331
    .restart local v1    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v4}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 334
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v5

    .line 333
    invoke-virtual {v4, v5}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v4

    .line 332
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v1    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 341
    .local v1, "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    new-instance v2, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v2}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 342
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMinVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMaxVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    .line 346
    .local v2, "packageOverride":Landroid/app/compat/PackageOverride;
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v1    # "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    .end local v2    # "packageOverride":Landroid/app/compat/PackageOverride;
    goto :goto_2

    .line 349
    :cond_2
    return-void
.end method

.method recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowedState"    # Lcom/android/internal/compat/OverrideAllowedState;
    .param p3, "versionCode"    # Ljava/lang/Long;

    .line 190
    iget v0, p2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 193
    .local v0, "allowed":Z
    :goto_0
    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->hasRawOverride(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_2

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/compat/PackageOverride;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/compat/PackageOverride;->evaluate(J)I

    move-result v3

    .line 200
    .local v3, "overrideValue":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 208
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    goto :goto_1

    .line 205
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    .line 206
    goto :goto_1

    .line 202
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverrideInternal(Ljava/lang/String;)V

    .line 203
    nop

    .line 211
    :goto_1
    return v1

    .line 194
    .end local v3    # "overrideValue":I
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverrideInternal(Ljava/lang/String;)V

    .line 195
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 122
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 127
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener for change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "allowedState"    # Lcom/android/internal/compat/OverrideAllowedState;
    .param p3, "versionCode"    # Ljava/lang/Long;

    .line 229
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;
    .locals 9

    .line 352
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides;-><init>()V

    .line 356
    .local v0, "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides;->setChangeId(J)V

    .line 357
    new-instance v1, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;-><init>()V

    .line 358
    .local v1, "rawOverrides":Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v2

    .line 359
    .local v2, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/RawOverrideValue;>;"
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 360
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/compat/PackageOverride;>;"
    new-instance v5, Lcom/android/server/compat/overrides/RawOverrideValue;

    invoke-direct {v5}, Lcom/android/server/compat/overrides/RawOverrideValue;-><init>()V

    .line 361
    .local v5, "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/compat/overrides/RawOverrideValue;->setPackageName(Ljava/lang/String;)V

    .line 362
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMinVersionCode(J)V

    .line 363
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMaxVersionCode(J)V

    .line 364
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/compat/overrides/RawOverrideValue;->setEnabled(Z)V

    .line 365
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/compat/PackageOverride;>;"
    .end local v5    # "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V

    .line 369
    new-instance v3, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    invoke-direct {v3}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;-><init>()V

    .line 370
    .local v3, "validatedOverrides":Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    invoke-virtual {v3}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v4

    .line 371
    .local v4, "validatedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/OverrideValue;>;"
    iget-object v5, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 372
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Lcom/android/server/compat/overrides/OverrideValue;

    invoke-direct {v7}, Lcom/android/server/compat/overrides/OverrideValue;-><init>()V

    .line 373
    .local v7, "override":Lcom/android/server/compat/overrides/OverrideValue;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/compat/overrides/OverrideValue;->setPackageName(Ljava/lang/String;)V

    .line 374
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/compat/overrides/OverrideValue;->setEnabled(Z)V

    .line 375
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v7    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/server/compat/overrides/ChangeOverrides;->setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V

    .line 378
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 389
    const-string v1, "; enableSinceTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    const-string v1, "; disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    const-string v1, "; loggingOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_3
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 398
    const-string v1, "; packageOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 401
    const-string v1, "; rawOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getOverridable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    const-string v1, "; overridable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method willBeEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->hasRawOverride(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/compat/PackageOverride;

    invoke-virtual {v0}, Landroid/app/compat/PackageOverride;->evaluateForAllVersions()I

    move-result v0

    .line 274
    .local v0, "eval":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 276
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v1

    return v1

    .line 283
    .end local v0    # "eval":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
