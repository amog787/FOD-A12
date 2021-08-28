.class public interface abstract Lcom/android/server/utils/DeviceConfigInterface;
.super Ljava/lang/Object;
.source "DeviceConfigInterface.java"


# static fields
.field public static final REAL:Lcom/android/server/utils/DeviceConfigInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/android/server/utils/DeviceConfigInterface$1;

    invoke-direct {v0}, Lcom/android/server/utils/DeviceConfigInterface$1;-><init>()V

    sput-object v0, Lcom/android/server/utils/DeviceConfigInterface;->REAL:Lcom/android/server/utils/DeviceConfigInterface;

    return-void
.end method


# virtual methods
.method public abstract addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
.end method

.method public abstract getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
.end method
