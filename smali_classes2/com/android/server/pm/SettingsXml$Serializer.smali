.class public Lcom/android/server/pm/SettingsXml$Serializer;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SettingsXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation


# instance fields
.field private final mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

.field private final mXmlSerializer:Landroid/util/TypedXmlSerializer;


# direct methods
.method private constructor <init>(Landroid/util/TypedXmlSerializer;)V
    .locals 2
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    .line 76
    new-instance v0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;-><init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$1;)V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/TypedXmlSerializer;
    .param p2, "x1"    # Lcom/android/server/pm/SettingsXml$1;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;-><init>(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    invoke-static {v0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->access$200(Lcom/android/server/pm/SettingsXml$WriteSectionImpl;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 87
    return-void
.end method

.method public startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    return-object v0
.end method
