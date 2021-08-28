.class final Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
.super Ljava/lang/Object;
.source "TimeZoneProviderEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent$EventType;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_PERMANENT_FAILURE:I = 0x1

.field public static final EVENT_TYPE_SUGGESTION:I = 0x2

.field public static final EVENT_TYPE_UNCERTAIN:I = 0x3

.field private static final UNCERTAIN_EVENT:Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;


# instance fields
.field private final mFailureCause:Ljava/lang/String;

.field private final mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;-><init>(ILandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->UNCERTAIN_EVENT:Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    return-void
.end method

.method private constructor <init>(ILandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p3, "failureCause"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mType:I

    .line 70
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 71
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static createPermanentFailureEvent(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    .locals 4
    .param p0, "cause"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    .line 89
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;-><init>(ILandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method public static createSuggestionEvent(Landroid/service/timezone/TimeZoneProviderSuggestion;)Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    .locals 4
    .param p0, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 77
    new-instance v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    .line 78
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;-><init>(ILandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public static createUncertainEvent()Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->UNCERTAIN_EVENT:Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 128
    return v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;

    .line 134
    .local v2, "that":Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    iget v3, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mType:I

    iget v4, v2, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v4, v2, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    .line 136
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 131
    .end local v2    # "that":Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFailureCause()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderEvent{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFailureCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
