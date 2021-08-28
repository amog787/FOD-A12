.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 0
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z

    .line 696
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 698
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 699
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1007
    const/4 v0, 0x0

    const-string/jumbo v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1008
    .local v1, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1030
    .local v2, "netCapabilitiesLong":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1031
    .local v3, "netForbiddenCapabilitiesLong":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1033
    .local v4, "netTransportTypesLong":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "net-capabilities-csv"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1035
    .local v6, "netCapabilitiesIntArray":Ljava/lang/String;
    const-string/jumbo v7, "net-forbidden-capabilities-csv"

    invoke-interface {v1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, "netForbiddenCapabilitiesIntArray":Ljava/lang/String;
    const-string/jumbo v8, "net-transport-types-csv"

    invoke-interface {v1, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1039
    .local v8, "netTransportTypesIntArray":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-nez v8, :cond_1

    .line 1040
    :cond_0
    const-string/jumbo v9, "net-capabilities"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    const-string/jumbo v9, "net-unwanted-capabilities"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1043
    const-string/jumbo v9, "net-transport-types"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1046
    :cond_1
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 1047
    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1048
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 1050
    .local v11, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-static {v6}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_2

    aget v15, v12, v14

    .line 1051
    .local v15, "capability":I
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1050
    .end local v15    # "capability":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1054
    :cond_2
    invoke-static {v7}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    aget v15, v12, v14

    .line 1055
    .local v15, "forbiddenCapability":I
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1054
    .end local v15    # "forbiddenCapability":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1058
    :cond_3
    invoke-static {v8}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_4

    aget v14, v12, v9

    .line 1059
    .local v14, "transport":I
    invoke-virtual {v11, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1058
    .end local v14    # "transport":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1061
    :cond_4
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 1062
    .end local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    move-object v9, v5

    goto/16 :goto_6

    :cond_5
    if-eqz v2, :cond_c

    if-eqz v4, :cond_c

    .line 1063
    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1064
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 1065
    .restart local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v12, 0x19

    .line 1067
    .local v12, "maxNetCapabilityInR":I
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_3
    const/16 v9, 0x19

    if-ge v15, v14, :cond_7

    aget v10, v13, v15

    .line 1069
    .local v10, "capability":I
    if-gt v10, v9, :cond_6

    .line 1070
    invoke-virtual {v11, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1067
    .end local v10    # "capability":I
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1073
    :cond_7
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_9

    aget v15, v10, v14

    .line 1075
    .restart local v15    # "forbiddenCapability":I
    if-gt v15, v9, :cond_8

    .line 1076
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1073
    .end local v15    # "forbiddenCapability":I
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1080
    :cond_9
    const/4 v9, 0x7

    .line 1081
    .local v9, "maxTransportInR":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_b

    aget v15, v10, v14

    .line 1083
    .local v15, "transport":I
    const/4 v5, 0x7

    if-gt v15, v5, :cond_a

    .line 1084
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1081
    .end local v15    # "transport":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1087
    :cond_b
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 1088
    .end local v9    # "maxTransportInR":I
    .end local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v12    # "maxNetCapabilityInR":I
    const/4 v9, 0x0

    goto :goto_6

    .line 1090
    :cond_c
    const-string v5, "connectivity"

    const/4 v9, 0x0

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1091
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 1092
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1094
    :cond_d
    const-string/jumbo v10, "metered"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1095
    if-eqz v5, :cond_e

    .line 1096
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1098
    :cond_e
    const-string/jumbo v10, "unmetered"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1099
    if-eqz v5, :cond_f

    .line 1100
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1102
    :cond_f
    const-string/jumbo v10, "not-roaming"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1103
    if-eqz v5, :cond_10

    .line 1104
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1108
    .end local v5    # "val":Ljava/lang/String;
    :cond_10
    :goto_6
    const-string v5, "idle"

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1109
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 1110
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_7

    .line 1109
    :cond_11
    const/4 v10, 0x1

    .line 1112
    :goto_7
    const-string v11, "charging"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1113
    if-eqz v5, :cond_12

    .line 1114
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1116
    :cond_12
    const-string v11, "battery-not-low"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1117
    if-eqz v5, :cond_13

    .line 1118
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1120
    :cond_13
    const-string/jumbo v11, "storage-not-low"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1121
    if-eqz v5, :cond_14

    .line 1122
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1124
    :cond_14
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1155
    const/4 v0, 0x0

    const-string v1, "delay"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1157
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 1158
    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    nop

    .line 1159
    .local v2, "earliestRunTimeRtc":J
    const-string v4, "deadline"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .end local v1    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1161
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 1162
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    nop

    .line 1163
    .local v4, "latestRunTimeRtc":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1131
    const/4 v0, 0x0

    const-string v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1133
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1134
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1136
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1138
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .locals 10
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    const-string v0, "Invalid version number, aborting jobs file read."

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 749
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 751
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 752
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "JobStore"

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    .line 754
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_0
    const/4 v6, 0x0

    if-ne v2, v4, :cond_2

    .line 758
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    const-string v0, "No persisted jobs."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_1
    return-object v6

    .line 764
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 766
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v8, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v9, "version"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 770
    .local v9, "version":I
    if-eqz v9, :cond_3

    .line 771
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    return-object v6

    .line 777
    .end local v9    # "version":I
    :cond_3
    nop

    .line 778
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 781
    .end local v2    # "eventType":I
    .local v0, "eventType":I
    :cond_4
    if-ne v0, v3, :cond_8

    .line 782
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 784
    .end local v7    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 785
    invoke-direct {p0, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    .line 786
    .local v6, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v6, :cond_6

    .line 787
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 788
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_5
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 792
    :cond_6
    const-string v7, "Error reading job from file."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v6    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    :goto_1
    move-object v7, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 797
    if-ne v0, v4, :cond_4

    .line 798
    return-object v8

    .line 774
    .end local v0    # "eventType":I
    .local v2, "eventType":I
    :catch_0
    move-exception v3

    .line 775
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-object v6

    .line 800
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_9
    return-object v6
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 41
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "JobStore"

    const/4 v4, 0x0

    .line 818
    .local v4, "internalFlags":I
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v6, v0

    .line 819
    .local v6, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 820
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 822
    .local v10, "uid":I
    const-string/jumbo v7, "priority"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 823
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 824
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 826
    :cond_0
    const-string v8, "flags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 827
    if-eqz v7, :cond_1

    .line 828
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 830
    :cond_1
    const-string v8, "internalFlags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 831
    if-eqz v7, :cond_2

    .line 832
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 834
    :cond_2
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 835
    if-nez v7, :cond_3

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_0
    move v15, v8

    .line 837
    .local v15, "sourceUserId":I
    const-string/jumbo v8, "lastSuccessfulRunTime"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 838
    if-nez v7, :cond_4

    const-wide/16 v19, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v19, v11

    .line 840
    .local v19, "lastSuccessfulRunTime":J
    :goto_1
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 841
    if-nez v7, :cond_5

    const-wide/16 v21, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    move-wide/from16 v21, v11

    .line 845
    .end local v7    # "val":Ljava/lang/String;
    .local v21, "lastFailedRunTime":J
    :goto_2
    nop

    .line 847
    const-string/jumbo v7, "sourcePackageName"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 848
    .local v7, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 853
    .local v26, "sourceTag":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 854
    .local v11, "eventType":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_18

    .line 856
    const/4 v13, 0x2

    if-ne v11, v13, :cond_17

    .line 857
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v8, "constraints"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    goto/16 :goto_e

    .line 862
    :cond_6
    :try_start_1
    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 872
    nop

    .line 874
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 878
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 879
    if-eq v11, v12, :cond_16

    .line 880
    if-eq v11, v13, :cond_7

    .line 881
    return-object v5

    .line 887
    :cond_7
    :try_start_2
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v14, v8

    .line 893
    .local v14, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 895
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 896
    .local v8, "elapsedNow":J
    invoke-static {v14, v8, v9}, Lcom/android/server/job/JobStore;->access$800(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v12

    .line 898
    .local v12, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "periodic"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 900
    :try_start_3
    const-string/jumbo v0, "period"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v27, v16

    .line 902
    .local v27, "periodMillis":J
    const-string v13, "flex"

    invoke-interface {v2, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v13

    .line 903
    if-eqz v0, :cond_8

    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 928
    .end local v0    # "val":Ljava/lang/String;
    .end local v27    # "periodMillis":J
    :catch_0
    move-exception v0

    move-object/from16 v31, v14

    goto/16 :goto_7

    .line 903
    .restart local v0    # "val":Ljava/lang/String;
    .restart local v27    # "periodMillis":J
    :cond_8
    move-wide/from16 v16, v27

    :goto_5
    move-wide/from16 v29, v16

    .line 904
    .local v29, "flexMillis":J
    move-object/from16 v16, v0

    move-object/from16 v31, v14

    move-wide/from16 v13, v27

    move-wide/from16 v0, v29

    .end local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v27    # "periodMillis":J
    .end local v29    # "flexMillis":J
    .local v0, "flexMillis":J
    .local v13, "periodMillis":J
    .local v16, "val":Ljava/lang/String;
    .local v31, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_5
    invoke-virtual {v6, v13, v14, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 909
    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    add-long v32, v8, v13

    add-long v32, v32, v0

    cmp-long v5, v28, v32

    if-lez v5, :cond_9

    .line 910
    add-long v29, v8, v0

    add-long v29, v29, v13

    .line 912
    .local v29, "clampedLateRuntimeElapsed":J
    sub-long v32, v29, v0

    .line 914
    .local v32, "clampedEarlyRuntimeElapsed":J
    const-string v5, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    move-wide/from16 v34, v0

    .end local v0    # "flexMillis":J
    .local v34, "flexMillis":J
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 917
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, v0, v17

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 918
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1

    aput-object v1, v0, v17

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 919
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2

    aput-object v1, v0, v17

    const/4 v1, 0x3

    div-long v36, v32, v38

    .line 920
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v1

    div-long v36, v29, v38

    .line 922
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4

    aput-object v1, v0, v17

    .line 915
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    nop

    .line 926
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v12, v0

    .end local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_6

    .line 909
    .end local v29    # "clampedLateRuntimeElapsed":J
    .end local v32    # "clampedEarlyRuntimeElapsed":J
    .end local v34    # "flexMillis":J
    .local v0, "flexMillis":J
    .restart local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_9
    move-wide/from16 v34, v0

    .line 931
    .end local v0    # "flexMillis":J
    .end local v13    # "periodMillis":J
    .end local v16    # "val":Ljava/lang/String;
    :goto_6
    move-object v1, v12

    goto :goto_9

    .line 928
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_2
    move-exception v0

    move-object/from16 v31, v14

    .line 929
    .end local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_7
    const-string v1, "Error reading periodic execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v1, 0x0

    return-object v1

    .line 932
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_a
    move-object/from16 v31, v14

    .end local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "one-off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 934
    :try_start_6
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_b

    .line 935
    :try_start_7
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    .line 941
    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v32, v8

    move/from16 v35, v15

    goto/16 :goto_d

    .line 937
    :cond_b
    :goto_8
    :try_start_8
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v0, v0, v13

    if-eqz v0, :cond_c

    .line 938
    :try_start_9
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 939
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 938
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    .line 944
    :cond_c
    move-object v1, v12

    .line 952
    .end local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v1, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_9
    move-object/from16 v5, p0

    invoke-direct {v5, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 954
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 958
    :goto_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 959
    .end local v11    # "eventType":I
    .local v14, "eventType":I
    const/4 v0, 0x4

    if-eq v14, v0, :cond_12

    .line 960
    const/4 v13, 0x2

    if-ne v14, v13, :cond_10

    .line 961
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "extras"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-wide/from16 v32, v8

    move/from16 v34, v14

    move/from16 v35, v15

    goto/16 :goto_c

    .line 968
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v13

    .line 969
    .local v13, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v6, v13}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 970
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 974
    :try_start_a
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 979
    .local v0, "builtJob":Landroid/app/job/JobInfo;
    nop

    .line 982
    const-string v11, "android"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v13, :cond_e

    .line 984
    const-string v11, "SyncManagerJob"

    const/4 v12, 0x0

    invoke-virtual {v13, v11, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 985
    const-string/jumbo v11, "owningPackage"

    invoke-virtual {v13, v11, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 986
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 987
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_e
    const-class v3, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobSchedulerInternal;

    .line 994
    .local v3, "service":Lcom/android/server/job/JobSchedulerInternal;
    invoke-static {v7, v15, v8, v9}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v28

    .line 996
    .local v28, "appBucket":I
    new-instance v29, Lcom/android/server/job/controllers/JobStatus;

    .line 997
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v11

    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    .line 999
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v12, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 1001
    if-eqz p1, :cond_f

    const/16 v27, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v27, v31

    :goto_b
    const/16 v25, 0x0

    move-wide/from16 v32, v8

    .end local v8    # "elapsedNow":J
    .local v32, "elapsedNow":J
    move-object/from16 v8, v29

    move-object v9, v11

    move-object v11, v7

    move v12, v15

    move-object/from16 v30, v13

    .end local v13    # "extras":Landroid/os/PersistableBundle;
    .local v30, "extras":Landroid/os/PersistableBundle;
    move/from16 v13, v28

    move/from16 v34, v14

    .end local v14    # "eventType":I
    .local v34, "eventType":I
    move-object/from16 v14, v26

    move/from16 v35, v15

    .end local v15    # "sourceUserId":I
    .local v35, "sourceUserId":I
    move-wide/from16 v15, v16

    move-wide/from16 v17, v23

    move-object/from16 v23, v27

    move/from16 v24, v4

    invoke-direct/range {v8 .. v25}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V

    .line 1002
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v8

    .line 975
    .end local v0    # "builtJob":Landroid/app/job/JobInfo;
    .end local v3    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .end local v28    # "appBucket":I
    .end local v30    # "extras":Landroid/os/PersistableBundle;
    .end local v32    # "elapsedNow":J
    .end local v34    # "eventType":I
    .end local v35    # "sourceUserId":I
    .local v8, "elapsedNow":J
    .restart local v13    # "extras":Landroid/os/PersistableBundle;
    .restart local v14    # "eventType":I
    .restart local v15    # "sourceUserId":I
    :catch_4
    move-exception v0

    move-wide/from16 v32, v8

    move-object/from16 v30, v13

    move/from16 v34, v14

    move/from16 v35, v15

    move-object v8, v0

    .end local v8    # "elapsedNow":J
    .end local v13    # "extras":Landroid/os/PersistableBundle;
    .end local v14    # "eventType":I
    .end local v15    # "sourceUserId":I
    .restart local v30    # "extras":Landroid/os/PersistableBundle;
    .restart local v32    # "elapsedNow":J
    .restart local v34    # "eventType":I
    .restart local v35    # "sourceUserId":I
    move-object v0, v8

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to build job from XML, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 976
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v3, 0x0

    return-object v3

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v30    # "extras":Landroid/os/PersistableBundle;
    .end local v32    # "elapsedNow":J
    .end local v34    # "eventType":I
    .end local v35    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v14    # "eventType":I
    .restart local v15    # "sourceUserId":I
    :cond_10
    move-wide/from16 v32, v8

    move/from16 v34, v14

    move/from16 v35, v15

    .line 962
    .end local v8    # "elapsedNow":J
    .end local v14    # "eventType":I
    .end local v15    # "sourceUserId":I
    .restart local v32    # "elapsedNow":J
    .restart local v34    # "eventType":I
    .restart local v35    # "sourceUserId":I
    :goto_c
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 963
    const-string v0, "Error reading extras, skipping."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_11
    const/4 v3, 0x0

    return-object v3

    .line 959
    .end local v32    # "elapsedNow":J
    .end local v34    # "eventType":I
    .end local v35    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v14    # "eventType":I
    .restart local v15    # "sourceUserId":I
    :cond_12
    move-wide/from16 v32, v8

    move/from16 v34, v14

    move/from16 v35, v15

    const/4 v12, 0x0

    const/4 v13, 0x2

    .end local v8    # "elapsedNow":J
    .end local v14    # "eventType":I
    .end local v15    # "sourceUserId":I
    .restart local v32    # "elapsedNow":J
    .restart local v34    # "eventType":I
    .restart local v35    # "sourceUserId":I
    move/from16 v11, v34

    goto/16 :goto_a

    .line 941
    .end local v1    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v32    # "elapsedNow":J
    .end local v34    # "eventType":I
    .end local v35    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v11    # "eventType":I
    .restart local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v15    # "sourceUserId":I
    :catch_5
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v32, v8

    move/from16 v35, v15

    .line 942
    .end local v8    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v32    # "elapsedNow":J
    .restart local v35    # "sourceUserId":I
    :goto_d
    const-string v1, "Error reading job execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v1, 0x0

    return-object v1

    .line 946
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v32    # "elapsedNow":J
    .end local v35    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    :cond_13
    move-object/from16 v5, p0

    move-wide/from16 v32, v8

    move/from16 v35, v15

    .end local v8    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .restart local v32    # "elapsedNow":J
    .restart local v35    # "sourceUserId":I
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_14
    const/4 v1, 0x0

    return-object v1

    .line 888
    .end local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v32    # "elapsedNow":J
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :catch_6
    move-exception v0

    move-object v5, v1

    move/from16 v35, v15

    move-object v1, v0

    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    move-object v0, v1

    .line 889
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 890
    const-string v1, "Error parsing execution time parameters, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_15
    const/4 v1, 0x0

    return-object v1

    .line 879
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :cond_16
    move/from16 v17, v0

    move v0, v12

    move v8, v13

    move/from16 v35, v15

    const-wide/16 v13, 0x0

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    move v13, v8

    move/from16 v0, v17

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    goto/16 :goto_4

    .line 869
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :catch_7
    move-exception v0

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    move-object v0, v8

    .line 870
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error I/O Exception."

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    return-object v1

    .line 866
    .end local v0    # "e":Ljava/io/IOException;
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :catch_8
    move-exception v0

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    move-object v0, v8

    .line 867
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "Error Parser Exception."

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    return-object v1

    .line 863
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :catch_9
    move-exception v0

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    move-object v0, v8

    .line 864
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Error reading constraints, skipping."

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-object v1

    .line 856
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :cond_17
    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    .line 859
    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    :goto_e
    return-object v1

    .line 854
    .end local v35    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :cond_18
    move/from16 v17, v0

    move-object v5, v1

    move/from16 v35, v15

    const-wide/16 v13, 0x0

    .end local v15    # "sourceUserId":I
    .restart local v35    # "sourceUserId":I
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 842
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "eventType":I
    .end local v19    # "lastSuccessfulRunTime":J
    .end local v21    # "lastFailedRunTime":J
    .end local v26    # "sourceTag":Ljava/lang/String;
    .end local v35    # "sourceUserId":I
    :catch_a
    move-exception v0

    move-object v5, v1

    .line 843
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v1, "Error parsing job\'s required fields, skipping"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 705
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    .line 708
    .local v2, "numSyncJobs":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$600(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 709
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 710
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 711
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_1

    .line 712
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 713
    .local v6, "now":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 714
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 715
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 716
    iput-wide v6, v9, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 717
    iget-object v10, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 719
    add-int/lit8 v0, v0, 0x1

    .line 720
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_0

    .line 721
    add-int/lit8 v1, v1, 0x1

    .line 722
    invoke-static {v9}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 723
    add-int/lit8 v2, v2, 0x1

    .line 713
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 728
    .end local v6    # "now":J
    .end local v8    # "i":I
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 737
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 738
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 739
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 740
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_2

    .line 728
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "numJobs":I
    .end local v1    # "numSystemJobs":I
    .end local v2    # "numSyncJobs":I
    .end local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 737
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "numJobs":I
    .restart local v1    # "numSystemJobs":I
    .restart local v2    # "numSyncJobs":I
    .restart local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 734
    :catch_0
    move-exception v3

    .line 735
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 737
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 738
    goto :goto_1

    .line 730
    :catch_1
    move-exception v3

    .line 731
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 732
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 737
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 738
    goto :goto_1

    .line 743
    :cond_3
    :goto_2
    const-string v3, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " jobs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void

    .line 737
    :goto_3
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_4

    .line 738
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 739
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 740
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v2, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 742
    :cond_4
    throw v3
.end method
