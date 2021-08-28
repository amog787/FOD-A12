.class Lcom/android/server/pm/PackageManagerService$TempUserState;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempUserState"
.end annotation


# instance fields
.field public final enabledState:I

.field public final installed:Z

.field public final lastDisableAppCaller:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "enabledState"    # I
    .param p2, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p3, "installed"    # Z

    .line 28962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28963
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$TempUserState;->enabledState:I

    .line 28964
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 28965
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$TempUserState;->installed:Z

    .line 28966
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ZLcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 28955
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$TempUserState;-><init>(ILjava/lang/String;Z)V

    return-void
.end method
