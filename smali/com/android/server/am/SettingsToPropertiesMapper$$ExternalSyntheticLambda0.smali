.class public final synthetic Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/SettingsToPropertiesMapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->lambda$updatePropertiesFromSettings$0$SettingsToPropertiesMapper(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
