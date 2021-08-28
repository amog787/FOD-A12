.class public Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/PeopleService$LocalService;,
        Lcom/android/server/people/PeopleService$ListenerKey;,
        Lcom/android/server/people/PeopleService$ConversationListenerHelper;,
        Lcom/android/server/people/PeopleService$ConversationsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeopleService"


# instance fields
.field mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

.field private mDataManager:Lcom/android/server/people/data/DataManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mService:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Lcom/android/server/people/PeopleService$1;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$1;-><init>(Lcom/android/server/people/PeopleService;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    .line 79
    new-instance v0, Lcom/android/server/people/data/DataManager;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 80
    new-instance v0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-direct {v0}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 81
    iget-object v1, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/DataManager;->addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/PeopleService;

    .line 61
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcom/android/server/people/PeopleService;->enforceSystemOrRoot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/people/PeopleService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/PeopleService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/people/PeopleService;->handleIncomingUser(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/people/PeopleService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/people/PeopleService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    return v0
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 144
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 146
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 151
    return-void

    .line 148
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot query eventsfor package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleIncomingUser(I)I
    .locals 8
    .param p1, "userId"    # I

    .line 134
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    .line 134
    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 139
    return p1
.end method

.method private static isSystemOrRoot()Z
    .locals 2

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 129
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method protected enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 86
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager;->initialize()V

    .line 89
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/people/PeopleService;->onStart(Z)V

    .line 94
    return-void
.end method

.method protected onStart(Z)V
    .locals 2
    .param p1, "isForTesting"    # Z

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "people"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/people/PeopleService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 101
    :cond_0
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v1, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/PeopleService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 102
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 103
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 112
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->onUserStopping(I)V

    .line 113
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 107
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->onUserUnlocked(I)V

    .line 108
    return-void
.end method
