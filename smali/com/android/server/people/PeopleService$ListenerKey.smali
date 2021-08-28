.class Lcom/android/server/people/PeopleService$ListenerKey;
.super Ljava/lang/Object;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerKey"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mShortcutId:Ljava/lang/String;

.field private final mUserId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    .line 356
    iput-object p2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    .line 357
    iput-object p3, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 374
    move-object v0, p1

    check-cast v0, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 375
    .local v0, "key":Lcom/android/server/people/PeopleService$ListenerKey;
    invoke-virtual {v0}, Lcom/android/server/people/PeopleService$ListenerKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService$ListenerKey;->getUserId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    if-ne v1, v2, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/android/server/people/PeopleService$ListenerKey;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 375
    :goto_0
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mUserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/people/PeopleService$ListenerKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
