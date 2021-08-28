.class final Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskInfo"
.end annotation


# instance fields
.field private displayId:I

.field private frontTaskId:I

.field private isFixedOrientationLandscape:Z

.field private isFixedOrientationPortrait:Z

.field private isResizeable:Z

.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p2, "x1"    # Lcom/android/server/camera/CameraServiceProxy$1;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 251
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->frontTaskId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p1, "x1"    # I

    .line 251
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->frontTaskId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 251
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p1, "x1"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 251
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p1, "x1"    # I

    .line 251
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 251
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p1, "x1"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 251
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p1, "x1"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    return p1
.end method
