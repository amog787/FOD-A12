.class public Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "deviceContext":Landroid/content/Context;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "shared_prefs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "cec_config.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v1, "prefsFile":Ljava/io/File;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 134
    return-void
.end method


# virtual methods
.method public retrieveGlobalSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "storageKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public retrieveSharedPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "storageKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "storageKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 142
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "storageKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    return-void
.end method

.method public storeSharedPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "storageKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    return-void
.end method

.method public storeSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "storageKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 150
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
