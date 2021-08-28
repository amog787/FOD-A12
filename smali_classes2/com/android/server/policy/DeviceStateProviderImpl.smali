.class public final Lcom/android/server/policy/DeviceStateProviderImpl;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateProvider;
.implements Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;,
        Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "device_state_configuration.xml"

.field private static final DATA_CONFIG_FILE_PATH:Ljava/lang/String; = "system/devicestate/"

.field static final DEFAULT_DEVICE_STATE:Lcom/android/server/devicestate/DeviceState;

.field private static final FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field private static final TAG:Ljava/lang/String; = "DeviceStateProviderImpl"

.field private static final TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field private static final VENDOR_CONFIG_FILE_PATH:Ljava/lang/String; = "etc/devicestate/"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsLidOpen:Ljava/lang/Boolean;

.field private mLastReportedState:I

.field private final mLatestSensorEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/Sensor;",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

.field private final mStateConditions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 86
    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 89
    new-instance v0, Lcom/android/server/devicestate/DeviceState;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicestate/DeviceState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Lcom/android/server/devicestate/DeviceState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/Conditions;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p2, "deviceStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicestate/DeviceState;>;"
    .local p3, "stateConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 166
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 172
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Number of device states must be equal to the number of device state conditions."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 175
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 177
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/devicestate/DeviceState;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/devicestate/DeviceState;

    .line 178
    .local v0, "orderedStates":[Lcom/android/server/devicestate/DeviceState;
    sget-object v1, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 179
    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    .line 181
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/DeviceStateProviderImpl;->setStateConditions(Ljava/util/List;Ljava/util/List;)V

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-static {}, Lcom/android/server/policy/DeviceStateProviderImpl;->getConfigurationFile()Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "configFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    invoke-static {p0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v1

    return-object v1

    .line 112
    :cond_0
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;Lcom/android/server/policy/DeviceStateProviderImpl$1;)V

    invoke-static {p0, v2}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v1

    return-object v1
.end method

.method static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "readableConfig"    # Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "deviceStateList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicestate/DeviceState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "conditionsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    if-eqz p1, :cond_1

    .line 128
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v2

    .line 129
    .local v2, "config":Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->getDeviceState()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/devicestate/config/DeviceState;

    .line 132
    .local v4, "stateConfig":Lcom/android/server/policy/devicestate/config/DeviceState;
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getIdentifier()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 133
    .local v5, "state":I
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "name":Ljava/lang/String;
    :goto_1
    new-instance v7, Lcom/android/server/devicestate/DeviceState;

    invoke-direct {v7, v5, v6}, Lcom/android/server/devicestate/DeviceState;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getConditions()Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v7

    .line 137
    .local v7, "condition":Lcom/android/server/policy/devicestate/config/Conditions;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v4    # "stateConfig":Lcom/android/server/policy/devicestate/config/DeviceState;
    .end local v5    # "state":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "condition":Lcom/android/server/policy/devicestate/config/Conditions;
    goto :goto_0

    .line 142
    .end local v2    # "config":Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 143
    sget-object v2, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Lcom/android/server/devicestate/DeviceState;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_2
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 272
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v2, 0x0

    .local v2, "sensorIndex":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 274
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 275
    .local v3, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "sensorType":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "sensorName":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    .line 279
    goto :goto_1

    .line 282
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 283
    return-object v3

    .line 273
    .end local v3    # "sensor":Landroid/hardware/Sensor;
    .end local v4    # "sensorType":Ljava/lang/String;
    .end local v5    # "sensorName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "sensorIndex":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getConfigurationFile()Ljava/io/File;
    .locals 4

    .line 506
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system/devicestate/"

    const-string v2, "device_state_configuration.xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 508
    .local v0, "configFileFromDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    return-object v0

    .line 512
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "etc/devicestate/"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 514
    .local v1, "configFileFromVendorDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    return-object v1

    .line 518
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$static$0()Z
    .locals 1

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$static$1()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method private notifySupportedStatesChanged()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_0

    .line 306
    monitor-exit v0

    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/devicestate/DeviceState;

    .line 310
    .local v1, "supportedStates":[Lcom/android/server/devicestate/DeviceState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    invoke-interface {v0, v1}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onSupportedDeviceStatesChanged([Lcom/android/server/devicestate/DeviceState;)V

    .line 313
    return-void

    .line 310
    .end local v1    # "supportedStates":[Lcom/android/server/devicestate/DeviceState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    .locals 4
    .param p0, "readableConfig"    # Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;

    .line 527
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;->openRead()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 529
    .local v1, "bin":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v1}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 529
    :cond_0
    return-object v2

    .line 527
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "bin":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :cond_1
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    .line 530
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceStateProviderImpl"

    const-string v2, "Encountered an error while reading device state config"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private setStateConditions(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/Conditions;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p1, "deviceStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicestate/DeviceState;>;"
    .local p2, "stateConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 192
    .local v1, "shouldListenToLidSwitch":Z
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 194
    .local v2, "sensorsToListenTo":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 195
    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v6}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    .line 196
    .local v6, "state":I
    move-object/from16 v7, p2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/devicestate/config/Conditions;

    .line 197
    .local v8, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    if-nez v8, :cond_0

    .line 198
    iget-object v5, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    goto/16 :goto_3

    .line 204
    :cond_0
    const/4 v9, 0x1

    .line 206
    .local v9, "allRequiredComponentsFound":Z
    const/4 v10, 0x0

    .line 208
    .local v10, "lidSwitchRequired":Z
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 210
    .local v11, "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v12, "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getLidSwitch()Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    move-result-object v13

    .line 213
    .local v13, "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    if-eqz v13, :cond_1

    .line 214
    new-instance v14, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    invoke-virtual {v13}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->getOpen()Z

    move-result v15

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v10, 0x1

    .line 218
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getSensor()Ljava/util/List;

    move-result-object v14

    .line 219
    .local v14, "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_3

    .line 220
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/devicestate/config/SensorCondition;

    .line 221
    .local v5, "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getType()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "expectedSensorType":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getName()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "expectedSensorName":Ljava/lang/String;
    move-object/from16 v16, v8

    .end local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .local v16, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    invoke-direct {v0, v4, v7}, Lcom/android/server/policy/DeviceStateProviderImpl;->findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v8

    .line 225
    .local v8, "foundSensor":Landroid/hardware/Sensor;
    if-nez v8, :cond_2

    .line 226
    move/from16 v17, v9

    .end local v9    # "allRequiredComponentsFound":Z
    .local v17, "allRequiredComponentsFound":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .local v18, "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    const-string v13, "Failed to find Sensor with type: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " and name: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "DeviceStateProviderImpl"

    invoke-static {v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v9, 0x0

    .line 229
    .end local v17    # "allRequiredComponentsFound":Z
    .restart local v9    # "allRequiredComponentsFound":Z
    goto :goto_2

    .line 232
    .end local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .restart local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :cond_2
    move/from16 v17, v9

    move-object/from16 v18, v13

    .end local v9    # "allRequiredComponentsFound":Z
    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .restart local v17    # "allRequiredComponentsFound":Z
    .restart local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    new-instance v9, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getValue()Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v0, v8, v13}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v4    # "expectedSensorType":Ljava/lang/String;
    .end local v5    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    .end local v7    # "expectedSensorName":Ljava/lang/String;
    .end local v8    # "foundSensor":Landroid/hardware/Sensor;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v13, v18

    goto :goto_1

    .end local v16    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v17    # "allRequiredComponentsFound":Z
    .end local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .local v8, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .restart local v9    # "allRequiredComponentsFound":Z
    .restart local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :cond_3
    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v13

    .line 236
    .end local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .end local v15    # "j":I
    .restart local v16    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .restart local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :goto_2
    if-eqz v9, :cond_6

    .line 237
    or-int/2addr v1, v10

    .line 238
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 240
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 241
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    invoke-direct {v5, v12}, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 242
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 244
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/BooleanSupplier;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 247
    :cond_5
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 252
    :cond_6
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    .end local v6    # "state":I
    .end local v9    # "allRequiredComponentsFound":Z
    .end local v10    # "lidSwitchRequired":Z
    .end local v11    # "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    .end local v12    # "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    .end local v14    # "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    .end local v16    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 256
    .end local v3    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    .line 257
    const-class v3, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerInternal;

    .line 259
    .local v3, "inputManager":Landroid/hardware/input/InputManagerInternal;
    invoke-virtual {v3, v0}, Landroid/hardware/input/InputManagerInternal;->registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 262
    .end local v3    # "inputManager":Landroid/hardware/input/InputManagerInternal;
    :cond_8
    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 263
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 264
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 265
    .local v5, "sensor":Landroid/hardware/Sensor;
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 263
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 267
    .end local v4    # "i":I
    :cond_9
    return-void
.end method


# virtual methods
.method notifyDeviceStateChangedIfNeeded()V
    .locals 6

    .line 317
    const/4 v0, -0x1

    .line 318
    .local v0, "stateToReport":I
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v2, :cond_0

    .line 320
    monitor-exit v1

    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    .line 324
    .local v2, "newState":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 325
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v4, "state":I
    :try_start_1
    iget-object v5, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/BooleanSupplier;

    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .local v5, "conditionSatisfied":Z
    nop

    .line 336
    if-eqz v5, :cond_1

    .line 337
    move v2, v4

    .line 338
    goto :goto_1

    .line 324
    .end local v4    # "state":I
    .end local v5    # "conditionSatisfied":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .restart local v4    # "state":I
    :catch_0
    move-exception v5

    .line 333
    .local v5, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    monitor-exit v1

    return-void

    .line 342
    .end local v3    # "i":I
    .end local v4    # "state":I
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-eq v2, v3, :cond_3

    .line 343
    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 344
    move v0, v2

    .line 346
    .end local v2    # "newState":I
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onStateChanged(I)V

    .line 351
    :cond_4
    return-void

    .line 346
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 355
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 357
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 359
    return-void

    .line 357
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 372
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 363
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 367
    return-void

    .line 365
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_0

    .line 295
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-direct {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged()V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 299
    return-void

    .line 293
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Provider already has a listener set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl;
    .end local p1    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    throw v1

    .line 296
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl;
    .restart local p1    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
