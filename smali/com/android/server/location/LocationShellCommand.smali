.class Lcom/android/server/location/LocationShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "LocationShellCommand.java"


# static fields
.field private static final DEFAULT_TEST_LOCATION_ACCURACY:F = 100.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/location/LocationManagerService;

    .line 44
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/android/server/location/LocationManagerService;

    iput-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 47
    return-void
.end method

.method private handleAddTestProvider()V
    .locals 20

    .line 193
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "provider":Ljava/lang/String;
    const/4 v1, 0x0

    .line 196
    .local v1, "requiresNetwork":Z
    const/4 v2, 0x0

    .line 197
    .local v2, "requiresSatellite":Z
    const/4 v3, 0x0

    .line 198
    .local v3, "requiresCell":Z
    const/4 v4, 0x0

    .line 199
    .local v4, "hasMonetaryCost":Z
    const/4 v5, 0x0

    .line 200
    .local v5, "supportsAltitude":Z
    const/4 v6, 0x0

    .line 201
    .local v6, "supportsSpeed":Z
    const/4 v8, 0x0

    .line 202
    .local v8, "supportsBearing":Z
    const/4 v9, 0x1

    .line 203
    .local v9, "powerRequirement":I
    const/4 v10, 0x1

    .line 205
    .local v10, "accuracy":I
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move v12, v5

    move v13, v6

    move v14, v8

    move v15, v9

    move v6, v10

    move-object/from16 v16, v11

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 208
    .end local v1    # "requiresNetwork":Z
    .end local v2    # "requiresSatellite":Z
    .end local v3    # "requiresCell":Z
    .end local v4    # "hasMonetaryCost":Z
    .end local v5    # "supportsAltitude":Z
    .local v6, "accuracy":I
    .local v8, "requiresNetwork":Z
    .local v9, "requiresSatellite":Z
    .local v10, "requiresCell":Z
    .local v11, "hasMonetaryCost":Z
    .local v12, "supportsAltitude":Z
    .local v13, "supportsSpeed":Z
    .local v14, "supportsBearing":Z
    .local v15, "powerRequirement":I
    .local v16, "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "option":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 210
    nop

    .line 259
    .end local v1    # "option":Ljava/lang/String;
    new-instance v1, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v1}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 260
    invoke-virtual {v1, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v11}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, v12}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v13}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1, v15}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v6}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v17

    .line 270
    .local v17, "properties":Landroid/location/provider/ProviderProperties;
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v18

    .line 270
    move-object v2, v7

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move/from16 v19, v6

    .end local v6    # "accuracy":I
    .local v19, "accuracy":I
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationManagerService;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 212
    .end local v17    # "properties":Landroid/location/provider/ProviderProperties;
    .end local v19    # "accuracy":I
    .restart local v1    # "option":Ljava/lang/String;
    .restart local v6    # "accuracy":I
    :cond_0
    move/from16 v19, v6

    .end local v6    # "accuracy":I
    .restart local v19    # "accuracy":I
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "--supportsSpeed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "--powerRequirement"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v3, "--requiresSatellite"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "--hasMonetaryCost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "--requiresCell"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "--supportsAltitude"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v3, "--supportsBearing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "--extraAttributionTags"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_8
    const-string v3, "--requiresNetwork"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_9
    const-string v3, "--accuracy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 254
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 251
    .end local v16    # "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v16, v2

    move/from16 v6, v19

    goto :goto_2

    .line 246
    .end local v2    # "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    .end local v19    # "accuracy":I
    .local v2, "accuracy":I
    move v6, v2

    goto :goto_2

    .line 242
    .end local v2    # "accuracy":I
    .restart local v19    # "accuracy":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 243
    .end local v15    # "powerRequirement":I
    .local v2, "powerRequirement":I
    move v15, v2

    move/from16 v6, v19

    goto :goto_2

    .line 238
    .end local v2    # "powerRequirement":I
    .restart local v15    # "powerRequirement":I
    :pswitch_3
    const/4 v2, 0x1

    .line 239
    .end local v14    # "supportsBearing":Z
    .local v2, "supportsBearing":Z
    move v14, v2

    move/from16 v6, v19

    goto :goto_2

    .line 234
    .end local v2    # "supportsBearing":Z
    .restart local v14    # "supportsBearing":Z
    :pswitch_4
    const/4 v2, 0x1

    .line 235
    .end local v13    # "supportsSpeed":Z
    .local v2, "supportsSpeed":Z
    move v13, v2

    move/from16 v6, v19

    goto :goto_2

    .line 230
    .end local v2    # "supportsSpeed":Z
    .restart local v13    # "supportsSpeed":Z
    :pswitch_5
    const/4 v2, 0x1

    .line 231
    .end local v12    # "supportsAltitude":Z
    .local v2, "supportsAltitude":Z
    move v12, v2

    move/from16 v6, v19

    goto :goto_2

    .line 226
    .end local v2    # "supportsAltitude":Z
    .restart local v12    # "supportsAltitude":Z
    :pswitch_6
    const/4 v2, 0x1

    .line 227
    .end local v11    # "hasMonetaryCost":Z
    .local v2, "hasMonetaryCost":Z
    move v11, v2

    move/from16 v6, v19

    goto :goto_2

    .line 222
    .end local v2    # "hasMonetaryCost":Z
    .restart local v11    # "hasMonetaryCost":Z
    :pswitch_7
    const/4 v2, 0x1

    .line 223
    .end local v10    # "requiresCell":Z
    .local v2, "requiresCell":Z
    move v10, v2

    move/from16 v6, v19

    goto :goto_2

    .line 218
    .end local v2    # "requiresCell":Z
    .restart local v10    # "requiresCell":Z
    :pswitch_8
    const/4 v2, 0x1

    .line 219
    .end local v9    # "requiresSatellite":Z
    .local v2, "requiresSatellite":Z
    move v9, v2

    move/from16 v6, v19

    goto :goto_2

    .line 214
    .end local v2    # "requiresSatellite":Z
    .restart local v9    # "requiresSatellite":Z
    :pswitch_9
    const/4 v2, 0x1

    .line 215
    .end local v8    # "requiresNetwork":Z
    .local v2, "requiresNetwork":Z
    move v8, v2

    move/from16 v6, v19

    .line 257
    .end local v1    # "option":Ljava/lang/String;
    .end local v2    # "requiresNetwork":Z
    .end local v19    # "accuracy":I
    .restart local v6    # "accuracy":I
    .restart local v8    # "requiresNetwork":Z
    :goto_2
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e1ee167 -> :sswitch_9
        -0x6a811300 -> :sswitch_8
        -0x57e7a758 -> :sswitch_7
        -0x563e8116 -> :sswitch_6
        -0x4734d51a -> :sswitch_5
        0x40bc37d0 -> :sswitch_4
        0x4c45a754 -> :sswitch_3
        0x5864ef8d -> :sswitch_2
        0x5f6d5b9e -> :sswitch_1
        0x7a12a683 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIsAdasGnssLocationEnabled()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, -0x3

    .line 154
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "option":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 156
    nop

    .line 165
    .end local v1    # "option":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    return-void

    .line 158
    .restart local v1    # "option":Ljava/lang/String;
    :cond_0
    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 163
    .end local v1    # "option":Ljava/lang/String;
    goto :goto_0

    .line 161
    .restart local v1    # "option":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v0    # "userId":I
    .end local v1    # "option":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "command only recognized on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleIsLocationEnabled()V
    .locals 5

    .line 109
    const/4 v0, -0x3

    .line 112
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "option":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 114
    nop

    .line 123
    .end local v1    # "option":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 124
    return-void

    .line 116
    .restart local v1    # "option":Ljava/lang/String;
    :cond_0
    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 121
    .end local v1    # "option":Ljava/lang/String;
    goto :goto_0

    .line 119
    .restart local v1    # "option":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleRemoveTestProvider()V
    .locals 4

    .line 275
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "provider":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/location/LocationManagerService;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method private handleSendExtraCommand()V
    .locals 4

    .line 338
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "command":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method private handleSetAdasGnssLocationEnabled()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 175
    .local v0, "enabled":Z
    const/4 v1, -0x3

    .line 178
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "option":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 180
    nop

    .line 189
    .end local v2    # "option":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/location/LocationManagerService;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 190
    return-void

    .line 182
    .restart local v2    # "option":Ljava/lang/String;
    :cond_0
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 187
    .end local v2    # "option":Ljava/lang/String;
    goto :goto_0

    .line 185
    .restart local v2    # "option":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    .end local v0    # "enabled":Z
    .end local v1    # "userId":I
    .end local v2    # "option":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "command only recognized on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleSetLocationEnabled()V
    .locals 6

    .line 127
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, "enabled":Z
    const/4 v1, -0x3

    .line 132
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "option":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 134
    nop

    .line 143
    .end local v2    # "option":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    .line 144
    return-void

    .line 136
    .restart local v2    # "option":Ljava/lang/String;
    :cond_0
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 141
    .end local v2    # "option":Ljava/lang/String;
    goto :goto_0

    .line 139
    .restart local v2    # "option":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleSetTestProviderEnabled()V
    .locals 5

    .line 281
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 283
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/location/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method private handleSetTestProviderLocation()V
    .locals 9

    .line 288
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "provider":Ljava/lang/String;
    const/4 v1, 0x0

    .line 292
    .local v1, "hasLatLng":Z
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, "location":Landroid/location/Location;
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 298
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "option":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 300
    nop

    .line 329
    .end local v3    # "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/location/LocationManagerService;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 330
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Option \"--location\" is required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    .restart local v3    # "option":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    sparse-switch v5, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v5, "--location"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v6

    goto :goto_1

    :sswitch_1
    const-string v5, "--time"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v8

    goto :goto_1

    :sswitch_2
    const-string v5, "--accuracy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v7

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 325
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 322
    goto :goto_2

    .line 317
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 318
    goto :goto_2

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "locationInput":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v8, :cond_3

    .line 311
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 312
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 313
    const/4 v1, 0x1

    .line 314
    nop

    .line 327
    .end local v3    # "option":Ljava/lang/String;
    .end local v4    # "locationInput":[Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 306
    .restart local v3    # "option":Ljava/lang/String;
    .restart local v4    # "locationInput":[Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e1ee167 -> :sswitch_2
        0x4f7a886d -> :sswitch_1
        0x72400555 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseProvidersCommand(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "send-extra-command"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "add-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "set-test-provider-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "set-test-provider-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "remove-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSendExtraCommand()V

    .line 101
    return v1

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderLocation()V

    .line 97
    return v1

    .line 92
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderEnabled()V

    .line 93
    return v1

    .line 88
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleRemoveTestProvider()V

    .line 89
    return v1

    .line 84
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleAddTestProvider()V

    .line 85
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x638384bd -> :sswitch_4
        -0x625a9a9f -> :sswitch_3
        -0x3ab9feb -> :sswitch_2
        0xae04a0 -> :sswitch_1
        0x7961b909 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 55
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "is-adas-gnss-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "set-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "set-adas-gnss-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "providers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "is-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationShellCommand;->parseProvidersCommand(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 69
    .end local v0    # "command":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAdasGnssLocationEnabled()V

    .line 70
    return v2

    .line 65
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAdasGnssLocationEnabled()V

    .line 66
    return v2

    .line 61
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetLocationEnabled()V

    .line 62
    return v2

    .line 57
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsLocationEnabled()V

    .line 58
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f71c494 -> :sswitch_4
        -0x20a3475e -> :sswitch_3
        -0x5102b3e -> :sswitch_2
        0x5c29e334 -> :sswitch_1
        0x61cd46fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 4

    .line 345
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 346
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Location service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const-string v1, "  help or -h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string v1, "  is-location-enabled [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v1, "    Gets the master location switch enabled state. If no user is specified,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const-string v1, "    the current user is assumed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v2, "  set-location-enabled true|false [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v2, "    Sets the master location switch enabled state. If no user is specified,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const-string v2, "  is-adas-gnss-location-enabled [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    const-string v2, "    Gets the ADAS GNSS location enabled state. If no user is specified,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string v2, "  set-adas-gnss-location-enabled true|false [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string v2, "    Sets the ADAS GNSS location enabled state. If no user is specified,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    :cond_0
    const-string v1, "  providers"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string v1, "    The providers command is followed by a subcommand, as listed below:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 366
    const-string v1, "    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v1, "      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const-string v1, "      [--supportsSpeed] [--supportsBearing]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    const-string v1, "      [--powerRequirement <POWER_REQUIREMENT>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const-string v1, "      [--extraAttributionTags <TAG>,<TAG>,...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v1, "      Add the given test provider. Requires MOCK_LOCATION permissions which"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const-string v1, "      can be enabled by running \"adb shell appops set <uid>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v1, "      android:mock_location allow\". There are optional flags that can be"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v1, "      used to configure the provider properties and additional arguments. If"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "      no flags are included, then default values will be used."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v1, "    remove-test-provider <PROVIDER>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v1, "      Remove the given test provider."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v1, "    set-test-provider-enabled <PROVIDER> true|false"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v1, "      Sets the given test provider enabled state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v1, "    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    const-string v1, "      [--accuracy <ACCURACY>] [--time <TIME>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "      Set location for given test provider. Accuracy and time are optional."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "    send-extra-command <PROVIDER> <COMMAND>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const-string v1, "      Sends the given extra command to the given provider."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 386
    const-string v1, "      Common commands that may be supported by the gps provider, depending on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v1, "      hardware and software configurations:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v1, "        delete_aiding_data - requests deletion of any predictive aiding data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string v1, "        force_time_injection - requests NTP time injection"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v1, "        force_psds_injection - requests predictive aiding data injection"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v1, "        request_power_stats - requests GNSS power stats update"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    return-void
.end method
