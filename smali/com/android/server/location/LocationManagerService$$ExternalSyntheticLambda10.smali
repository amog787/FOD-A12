.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;->f$0:Z

    check-cast p1, Lcom/android/server/location/settings/LocationUserSettings;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$setAdasGnssLocationEnabledForUser$5(ZLcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p1

    return-object p1
.end method
