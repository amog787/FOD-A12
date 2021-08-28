.class public final enum Lcom/android/server/display/config/ThermalStatus;
.super Ljava/lang/Enum;
.source "ThermalStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/config/ThermalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/config/ThermalStatus;

.field public static final enum critical:Lcom/android/server/display/config/ThermalStatus;

.field public static final enum emergency:Lcom/android/server/display/config/ThermalStatus;

.field public static final enum light:Lcom/android/server/display/config/ThermalStatus;

.field public static final enum moderate:Lcom/android/server/display/config/ThermalStatus;

.field public static final enum none:Lcom/android/server/display/config/ThermalStatus;

.field public static final enum severe:Lcom/android/server/display/config/ThermalStatus;

.field public static final enum shutdown:Lcom/android/server/display/config/ThermalStatus;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lcom/android/server/display/config/ThermalStatus;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/display/config/ThermalStatus;->none:Lcom/android/server/display/config/ThermalStatus;

    .line 5
    new-instance v1, Lcom/android/server/display/config/ThermalStatus;

    const-string/jumbo v3, "light"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/server/display/config/ThermalStatus;->light:Lcom/android/server/display/config/ThermalStatus;

    .line 6
    new-instance v3, Lcom/android/server/display/config/ThermalStatus;

    const-string/jumbo v5, "moderate"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/server/display/config/ThermalStatus;->moderate:Lcom/android/server/display/config/ThermalStatus;

    .line 7
    new-instance v5, Lcom/android/server/display/config/ThermalStatus;

    const-string/jumbo v7, "severe"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/server/display/config/ThermalStatus;->severe:Lcom/android/server/display/config/ThermalStatus;

    .line 8
    new-instance v7, Lcom/android/server/display/config/ThermalStatus;

    const-string v9, "critical"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/server/display/config/ThermalStatus;->critical:Lcom/android/server/display/config/ThermalStatus;

    .line 9
    new-instance v9, Lcom/android/server/display/config/ThermalStatus;

    const-string v11, "emergency"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/android/server/display/config/ThermalStatus;->emergency:Lcom/android/server/display/config/ThermalStatus;

    .line 10
    new-instance v11, Lcom/android/server/display/config/ThermalStatus;

    const-string/jumbo v13, "shutdown"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/android/server/display/config/ThermalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/android/server/display/config/ThermalStatus;->shutdown:Lcom/android/server/display/config/ThermalStatus;

    .line 3
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/server/display/config/ThermalStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/server/display/config/ThermalStatus;->$VALUES:[Lcom/android/server/display/config/ThermalStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/android/server/display/config/ThermalStatus;->rawName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;
    .locals 5
    .param p0, "rawString"    # Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/android/server/display/config/ThermalStatus;->values()[Lcom/android/server/display/config/ThermalStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    .local v3, "_f":Lcom/android/server/display/config/ThermalStatus;
    invoke-virtual {v3}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    return-object v3

    .line 23
    .end local v3    # "_f":Lcom/android/server/display/config/ThermalStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/android/server/display/config/ThermalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/ThermalStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/config/ThermalStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/server/display/config/ThermalStatus;->$VALUES:[Lcom/android/server/display/config/ThermalStatus;

    invoke-virtual {v0}, [Lcom/android/server/display/config/ThermalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/config/ThermalStatus;

    return-object v0
.end method


# virtual methods
.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/server/display/config/ThermalStatus;->rawName:Ljava/lang/String;

    return-object v0
.end method
