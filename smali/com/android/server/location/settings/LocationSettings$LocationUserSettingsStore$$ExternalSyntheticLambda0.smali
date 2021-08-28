.class public final synthetic Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

.field public final synthetic f$1:Lcom/android/server/location/settings/LocationUserSettings;

.field public final synthetic f$2:Lcom/android/server/location/settings/LocationUserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    iput-object p2, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/settings/LocationUserSettings;

    iput-object p3, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/location/settings/LocationUserSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/settings/LocationUserSettings;

    iget-object v2, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/location/settings/LocationUserSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->lambda$onChange$1$LocationSettings$LocationUserSettingsStore(Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method
