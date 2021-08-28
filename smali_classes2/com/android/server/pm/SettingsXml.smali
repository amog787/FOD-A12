.class public Lcom/android/server/pm/SettingsXml;
.super Ljava/lang/Object;
.source "SettingsXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SettingsXml$WriteSectionImpl;,
        Lcom/android/server/pm/SettingsXml$WriteSection;,
        Lcom/android/server/pm/SettingsXml$ReadSectionImpl;,
        Lcom/android/server/pm/SettingsXml$ChildSection;,
        Lcom/android/server/pm/SettingsXml$ReadSection;,
        Lcom/android/server/pm/SettingsXml$Serializer;
    }
.end annotation


# static fields
.field private static final DEBUG_THROW_EXCEPTIONS:Z = false

.field private static final DEFAULT_NUMBER:I = -0x1

.field private static final FEATURE_INDENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field private static final TAG:Ljava/lang/String; = "SettingsXml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;
    .locals 1
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Landroid/util/TypedXmlPullParser;)V

    return-object v0
.end method

.method public static serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;
    .locals 2
    .param p0, "serializer"    # Landroid/util/TypedXmlSerializer;

    .line 59
    new-instance v0, Lcom/android/server/pm/SettingsXml$Serializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SettingsXml$Serializer;-><init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$1;)V

    return-object v0
.end method
