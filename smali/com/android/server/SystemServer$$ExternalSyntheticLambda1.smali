.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/SystemServer;->$r8$lambda$8zxOYx-QEMffbYJtoGp6Ub2KG-8(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p1

    return p1
.end method
