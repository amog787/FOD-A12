.class public Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.super Ljava/lang/Object;
.source "DomainVerificationCollector.java"


# static fields
.field private static final ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

.field private static final MAX_DOMAINS_BYTE_SIZE:I = 0x100000

.field public static final RESTRICT_DOMAINS:J = 0xa74866dL


# instance fields
.field private final mDomainMatcher:Ljava/util/regex/Matcher;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\*\\.)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 46
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    .line 50
    sget-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V
    .locals 2
    .param p1, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .param p2, "systemConfig"    # Lcom/android/server/SystemConfig;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 68
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 71
    sget-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    .line 72
    return-void
.end method

.method private byteSizeOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 298
    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "checkAutoVerify"    # Z
    .param p3, "valid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZ)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 142
    .local v0, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 143
    return-object v0
.end method

.method private collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "checkAutoVerify"    # Z
    .param p3, "valid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    .line 150
    .local p4, "initialValue":Ljava/lang/Object;, "TInitialValue;"
    .local p5, "domainCollector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TInitialValue;Ljava/lang/String;TReturnValue;>;"
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 151
    const-wide/32 v1, 0xa74866d

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v0

    .line 153
    .local v0, "restrictDomains":Z
    if-eqz v0, :cond_0

    .line 154
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 157
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsLegacy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 17
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "checkAutoVerify"    # Z
    .param p3, "valid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    .line 239
    .local p4, "initialValue":Ljava/lang/Object;, "TInitialValue;"
    .local p5, "domainCollector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TInitialValue;Ljava/lang/String;TReturnValue;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 240
    .local v2, "totalSize":I
    const/4 v3, 0x1

    .line 242
    .local v3, "underMaxSize":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    .line 243
    .local v4, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 244
    .local v5, "activitiesSize":I
    const/4 v6, 0x0

    .local v6, "activityIndex":I
    :goto_0
    if-ge v6, v5, :cond_8

    if-eqz v3, :cond_8

    .line 246
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 247
    .local v7, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-virtual {v7}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 248
    .local v8, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 249
    .local v9, "intentsSize":I
    const/4 v10, 0x0

    .local v10, "intentIndex":I
    :goto_1
    if-ge v10, v9, :cond_7

    if-eqz v3, :cond_7

    .line 250
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 251
    .local v11, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getAutoVerify()Z

    move-result v12

    if-nez v12, :cond_0

    .line 252
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    goto/16 :goto_4

    .line 255
    :cond_0
    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 256
    invoke-virtual {v11, v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->handlesWebUris(Z)Z

    move-result v12

    if-nez v12, :cond_1

    .line 257
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    goto :goto_4

    .line 274
    :cond_1
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countDataAuthorities()I

    move-result v12

    .line 275
    .local v12, "authorityCount":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_2
    if-ge v13, v12, :cond_5

    if-eqz v3, :cond_5

    .line 276
    invoke-virtual {v11, v13}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "host":Ljava/lang/String;
    invoke-direct {v0, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v15

    move/from16 v1, p3

    if-ne v15, v1, :cond_3

    .line 278
    invoke-direct {v0, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    .line 279
    const/high16 v15, 0x100000

    if-ge v2, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    move v3, v15

    .line 280
    move-object/from16 v15, p4

    move-object/from16 v0, p5

    invoke-interface {v0, v15, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 281
    .local v16, "returnValue":Ljava/lang/Object;, "TReturnValue;"
    if-eqz v16, :cond_4

    .line 282
    return-object v16

    .line 277
    .end local v16    # "returnValue":Ljava/lang/Object;, "TReturnValue;"
    :cond_3
    move-object/from16 v15, p4

    move-object/from16 v0, p5

    .line 275
    .end local v14    # "host":Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_2

    :cond_5
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    goto :goto_4

    .line 255
    .end local v12    # "authorityCount":I
    .end local v13    # "index":I
    :cond_6
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    .line 249
    .end local v11    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_1

    :cond_7
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    .line 245
    .end local v7    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    .end local v8    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .end local v9    # "intentsSize":I
    .end local v10    # "intentIndex":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto/16 :goto_0

    .line 244
    :cond_8
    move/from16 v1, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    .line 289
    .end local v6    # "activityIndex":I
    const/4 v6, 0x0

    return-object v6
.end method

.method private collectDomainsLegacy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 19
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "checkAutoVerify"    # Z
    .param p3, "valid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    .line 169
    .local p4, "initialValue":Ljava/lang/Object;, "TInitialValue;"
    .local p5, "domainCollector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TInitialValue;Ljava/lang/String;TReturnValue;>;"
    move-object/from16 v6, p0

    if-nez p2, :cond_0

    .line 171
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 180
    .local v1, "activitiesSize":I
    iget-object v2, v6, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    .local v2, "needsAutoVerify":Z
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 182
    const/4 v4, 0x0

    .local v4, "activityIndex":I
    :goto_0
    if-ge v4, v1, :cond_2

    if-nez v2, :cond_2

    .line 184
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 185
    .local v5, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v7

    .line 186
    .local v7, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 187
    .local v8, "intentsSize":I
    const/4 v9, 0x0

    .local v9, "intentIndex":I
    :goto_1
    if-ge v9, v8, :cond_1

    if-nez v2, :cond_1

    .line 189
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 190
    .local v10, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->needsVerification()Z

    move-result v2

    .line 188
    .end local v10    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 183
    .end local v5    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    .end local v7    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .end local v8    # "intentsSize":I
    .end local v9    # "intentIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "activityIndex":I
    :cond_2
    if-nez v2, :cond_3

    .line 195
    return-object v3

    .line 199
    :cond_3
    const/4 v4, 0x0

    .line 200
    .local v4, "totalSize":I
    const/4 v5, 0x1

    .line 201
    .local v5, "underMaxSize":Z
    const/4 v7, 0x0

    .local v7, "activityIndex":I
    :goto_2
    if-ge v7, v1, :cond_a

    if-eqz v5, :cond_a

    .line 203
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 204
    .local v8, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 205
    .local v9, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 206
    .local v10, "intentsSize":I
    const/4 v11, 0x0

    .local v11, "intentIndex":I
    :goto_3
    if-ge v11, v10, :cond_9

    if-eqz v5, :cond_9

    .line 207
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 208
    .local v12, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->handlesWebUris(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 209
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countDataAuthorities()I

    move-result v14

    .line 210
    .local v14, "authorityCount":I
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_4
    if-ge v15, v14, :cond_7

    .line 211
    invoke-virtual {v12, v15}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, "host":Ljava/lang/String;
    invoke-direct {v6, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v17, v0

    move/from16 v0, p3

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .local v17, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    if-ne v3, v0, :cond_5

    .line 213
    invoke-direct {v6, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v4, v3

    .line 214
    const/high16 v3, 0x100000

    if-ge v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    move v5, v3

    .line 215
    move-object/from16 v3, p4

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v13}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 216
    .local v18, "returnValue":Ljava/lang/Object;, "TReturnValue;"
    if-eqz v18, :cond_6

    .line 217
    return-object v18

    .line 212
    .end local v18    # "returnValue":Ljava/lang/Object;, "TReturnValue;"
    :cond_5
    move-object/from16 v3, p4

    move-object/from16 v0, p5

    .line 210
    .end local v13    # "host":Ljava/lang/String;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_4

    .end local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    :cond_7
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .restart local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    goto :goto_6

    .line 208
    .end local v14    # "authorityCount":I
    .end local v15    # "index":I
    .end local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    :cond_8
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    .line 206
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .end local v12    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .restart local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    const/4 v3, 0x0

    goto :goto_3

    .end local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    :cond_9
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    .line 202
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .end local v8    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    .end local v9    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .end local v10    # "intentsSize":I
    .end local v11    # "intentIndex":I
    .restart local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    const/4 v3, 0x0

    goto :goto_2

    .line 201
    .end local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    :cond_a
    move-object/from16 v3, p4

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    .line 225
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .end local v7    # "activityIndex":I
    .restart local v17    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    const/4 v7, 0x0

    return-object v7
.end method

.method private isValidHost(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 313
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$containsAutoVerifyDomain$2(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "targetDomain"    # Ljava/lang/String;
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "domain"    # Ljava/lang/String;

    .line 131
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$containsWebDomain$1(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "targetDomain"    # Ljava/lang/String;
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "domain"    # Ljava/lang/String;

    .line 120
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/util/ArraySet;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "set"    # Landroid/util/ArraySet;
    .param p1, "domain"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public collectInvalidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public containsAutoVerifyDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "targetDomain"    # Ljava/lang/String;

    .line 129
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsWebDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "targetDomain"    # Ljava/lang/String;

    .line 118
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
