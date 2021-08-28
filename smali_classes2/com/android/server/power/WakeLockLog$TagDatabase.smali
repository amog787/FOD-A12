.class Lcom/android/server/power/WakeLockLog$TagDatabase;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;
    }
.end annotation


# instance fields
.field private final mArray:[Lcom/android/server/power/WakeLockLog$TagData;

.field private mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

.field private final mInvalidIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getTagDatabaseSize()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1063
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [Lcom/android/server/power/WakeLockLog$TagData;

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 1064
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    .line 1065
    return-void
.end method

.method private setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 2
    .param p1, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p2, "index"    # I

    .line 1207
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v0

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 1210
    :cond_0
    aget-object v0, v0, p2

    .line 1211
    .local v0, "current":Lcom/android/server/power/WakeLockLog$TagData;
    if-eqz v0, :cond_1

    .line 1213
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    iput v1, v0, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1221
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    aput-object p1, v1, p2

    .line 1222
    iput p2, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1223
    return-void

    .line 1208
    .end local v0    # "current":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_2
    :goto_0
    return-void
.end method

.method public static updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V
    .locals 0
    .param p0, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p1, "time"    # J

    .line 1198
    if-eqz p0, :cond_0

    .line 1199
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    .line 1201
    :cond_0
    return-void
.end method


# virtual methods
.method public findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 10
    .param p1, "tagStr"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "shouldCreate"    # Z

    .line 1149
    const/4 v0, -0x1

    .line 1150
    .local v0, "firstAvailable":I
    const/4 v1, 0x0

    .line 1151
    .local v1, "oldest":Lcom/android/server/power/WakeLockLog$TagData;
    const/4 v2, -0x1

    .line 1154
    .local v2, "oldestIndex":I
    new-instance v3, Lcom/android/server/power/WakeLockLog$TagData;

    invoke-direct {v3, p1, p2}, Lcom/android/server/power/WakeLockLog$TagData;-><init>(Ljava/lang/String;I)V

    .line 1155
    .local v3, "tag":Lcom/android/server/power/WakeLockLog$TagData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v6, v5

    const/4 v7, -0x1

    if-ge v4, v6, :cond_5

    .line 1156
    aget-object v5, v5, v4

    .line 1157
    .local v5, "current":Lcom/android/server/power/WakeLockLog$TagData;
    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$TagData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1159
    return-object v5

    .line 1160
    :cond_0
    if-nez p3, :cond_1

    .line 1161
    goto :goto_1

    .line 1162
    :cond_1
    if-eqz v5, :cond_3

    .line 1165
    if-eqz v1, :cond_2

    iget-wide v6, v5, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    iget-wide v8, v1, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 1166
    :cond_2
    move v2, v4

    .line 1167
    move-object v1, v5

    goto :goto_1

    .line 1169
    :cond_3
    if-ne v0, v7, :cond_4

    .line 1170
    move v0, v4

    .line 1155
    .end local v5    # "current":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1175
    .end local v4    # "i":I
    :cond_5
    if-nez p3, :cond_6

    .line 1176
    const/4 v4, 0x0

    return-object v4

    .line 1180
    :cond_6
    if-ne v0, v7, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 1181
    .local v4, "useOldest":Z
    :goto_2
    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    if-eqz v5, :cond_8

    .line 1185
    invoke-interface {v5, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;->onIndexRemoved(I)V

    .line 1187
    :cond_8
    if-eq v0, v7, :cond_9

    move v5, v0

    goto :goto_3

    :cond_9
    move v5, v2

    :goto_3
    invoke-direct {p0, v3, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V

    .line 1188
    return-object v3
.end method

.method public getTag(I)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 2
    .param p1, "index"    # I

    .line 1111
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1114
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 1112
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;I)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 1125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v0

    return-object v0
.end method

.method public getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I
    .locals 1
    .param p1, "tagData"    # Lcom/android/server/power/WakeLockLog$TagData;

    .line 1135
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :goto_0
    return v0
.end method

.method public setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    .line 1102
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    .line 1103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Tag Database: size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    const/4 v1, 0x0

    .line 1072
    .local v1, "entries":I
    const/4 v2, 0x0

    .line 1073
    .local v2, "byteEstimate":I
    const/4 v3, 0x0

    .line 1074
    .local v3, "tagSize":I
    const/4 v4, 0x0

    .line 1075
    .local v4, "tags":I
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1076
    .local v8, "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    add-int/lit8 v2, v2, 0x8

    .line 1077
    move-object v9, v8

    .line 1078
    .local v9, "data":Lcom/android/server/power/WakeLockLog$TagData;
    if-eqz v9, :cond_0

    .line 1079
    add-int/lit8 v1, v1, 0x1

    .line 1080
    invoke-virtual {v9}, Lcom/android/server/power/WakeLockLog$TagData;->getByteSize()I

    move-result v10

    add-int/2addr v2, v10

    .line 1081
    iget-object v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1082
    add-int/lit8 v4, v4, 0x1

    .line 1083
    iget-object v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v3, v10

    .line 1075
    .end local v8    # "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v9    # "data":Lcom/android/server/power/WakeLockLog$TagData;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    const-string v5, ", entries: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1088
    const-string v5, ", Bytes used: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
