.class public Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFiltersUtils.java"


# static fields
.field private static final ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field static final HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field private static final USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 42
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 47
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 48
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 49
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 50
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 51
    const-string v7, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 52
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 53
    const-string v9, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 54
    const-string v10, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 55
    const-string v11, "vnd.android.cursor.item/calls"

    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 60
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 69
    const-string v3, "tel"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 70
    const-string v4, "sip"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 71
    const-string v12, "voicemail"

    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 75
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v13, 0x4

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 80
    const-string v14, "android.intent.action.DIAL"

    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 81
    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 92
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 97
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 110
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 115
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 121
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 126
    const-string v3, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 131
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 136
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 137
    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 140
    const-string v3, "sms"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 141
    const-string v3, "smsto"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 142
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 143
    const-string v3, "mmsto"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 148
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 153
    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 154
    const-string v3, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 159
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 164
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 166
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 170
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 175
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 177
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 178
    const-string v4, "*/*"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 182
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 187
    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 194
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 199
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 205
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 210
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 215
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 220
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 225
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 230
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 231
    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 232
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 233
    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 234
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 235
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 236
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 241
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 246
    const-string v3, "android.intent.action.SET_ALARM"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 247
    const-string v3, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 248
    const-string v3, "android.intent.action.SET_TIMER"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 255
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 260
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 261
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 268
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 273
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 274
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 268
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getDefaultManagedProfileFilters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 279
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
