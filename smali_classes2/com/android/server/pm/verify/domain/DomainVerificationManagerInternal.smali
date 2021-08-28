.class public interface abstract Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.super Ljava/lang/Object;
.source "DomainVerificationManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;,
        Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$ApprovalLevel;
    }
.end annotation


# static fields
.field public static final APPROVAL_LEVEL_DISABLED:I = -0x3

.field public static final APPROVAL_LEVEL_INSTANT_APP:I = 0x5

.field public static final APPROVAL_LEVEL_LEGACY_ALWAYS:I = 0x2

.field public static final APPROVAL_LEVEL_LEGACY_ASK:I = 0x1

.field public static final APPROVAL_LEVEL_NONE:I = 0x0

.field public static final APPROVAL_LEVEL_NOT_INSTALLED:I = -0x4

.field public static final APPROVAL_LEVEL_SELECTION:I = 0x3

.field public static final APPROVAL_LEVEL_UNDECLARED:I = -0x2

.field public static final APPROVAL_LEVEL_UNVERIFIED:I = -0x1

.field public static final APPROVAL_LEVEL_VERIFIED:I = 0x4

.field public static final DISABLED_ID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    return-void
.end method

.method public static approvalLevelToDebugString(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .line 160
    packed-switch p0, :pswitch_data_0

    .line 182
    const-string v0, "UNKNOWN"

    return-object v0

    .line 180
    :pswitch_0
    const-string v0, "INSTANT_APP"

    return-object v0

    .line 178
    :pswitch_1
    const-string v0, "VERIFIED"

    return-object v0

    .line 176
    :pswitch_2
    const-string v0, "USER_SELECTION"

    return-object v0

    .line 174
    :pswitch_3
    const-string v0, "LEGACY_ALWAYS"

    return-object v0

    .line 172
    :pswitch_4
    const-string v0, "LEGACY_ASK"

    return-object v0

    .line 170
    :pswitch_5
    const-string v0, "NONE"

    return-object v0

    .line 168
    :pswitch_6
    const-string v0, "UNVERIFIED"

    return-object v0

    .line 166
    :pswitch_7
    const-string v0, "UNDECLARED"

    return-object v0

    .line 164
    :pswitch_8
    const-string v0, "DISABLED"

    return-object v0

    .line 162
    :pswitch_9
    const-string v0, "NOT_INSTALLED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
.end method

.method public abstract addPackage(Lcom/android/server/pm/PackageSetting;)V
.end method

.method public abstract approvalLevelForDomain(Lcom/android/server/pm/PackageSetting;Landroid/content/Intent;II)I
.end method

.method public abstract clearPackage(Ljava/lang/String;)V
.end method

.method public abstract clearPackageForUser(Ljava/lang/String;I)V
.end method

.method public abstract clearUser(I)V
.end method

.method public abstract filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract generateNewId()Ljava/util/UUID;
.end method

.method public abstract getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.end method

.method public abstract getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;
.end method

.method public abstract getLegacyState(Ljava/lang/String;I)I
.end method

.method public abstract getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.end method

.method public abstract getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;
.end method

.method public abstract migrateState(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
.end method

.method public abstract printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract readLegacySettings(Landroid/util/TypedXmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract readSettings(Landroid/util/TypedXmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract restoreSettings(Landroid/util/TypedXmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
.end method

.method public abstract setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract setLegacyUserState(Ljava/lang/String;II)Z
.end method

.method public abstract setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
.end method

.method public abstract writeSettings(Landroid/util/TypedXmlSerializer;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
