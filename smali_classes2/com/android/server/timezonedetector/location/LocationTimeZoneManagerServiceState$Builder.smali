.class final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
.super Ljava/lang/Object;
.source "LocationTimeZoneManagerServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

.field private mPrimaryProviderStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryProviderStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 67
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 67
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 67
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method build()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 1

    .line 94
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)V

    return-object v0
.end method

.method setLastSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 1
    .param p1, "lastSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 76
    return-object p0
.end method

.method setPrimaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;)",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;"
        }
    .end annotation

    .line 81
    .local p1, "primaryProviderStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    .line 82
    return-object p0
.end method

.method setSecondaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;)",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;"
        }
    .end annotation

    .line 88
    .local p1, "secondaryProviderStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    .line 89
    return-object p0
.end method
