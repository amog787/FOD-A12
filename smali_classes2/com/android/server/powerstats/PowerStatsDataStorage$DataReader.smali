.class Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataReader"
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;


# direct methods
.method constructor <init>(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;

    .line 122
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    :try_start_0
    new-instance v0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>(Ljava/io/InputStream;Lcom/android/server/powerstats/PowerStatsDataStorage$1;)V

    .line 129
    .local v0, "dataElement":Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->getData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;->onReadDataElement([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dataElement":Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsDataStorage;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read from storage. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method
