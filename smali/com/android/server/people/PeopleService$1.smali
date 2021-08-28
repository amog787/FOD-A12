.class Lcom/android/server/people/PeopleService$1;
.super Landroid/app/people/IPeopleManager$Stub;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/people/PeopleService;

    .line 167
    iput-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Landroid/app/people/IPeopleManager$Stub;-><init>()V

    return-void
.end method

.method private enforceHasReadPeopleDataPermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PEOPLE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have READ_PEOPLE_DATA permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "status"    # Landroid/app/people/ConversationStatus;

    .line 221
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->access$200(Lcom/android/server/people/PeopleService;I)I

    .line 222
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->access$300(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getStartTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    .line 227
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start time must be in the past"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "statusId"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->access$200(Lcom/android/server/people/PeopleService;I)I

    .line 233
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->access$300(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->access$200(Lcom/android/server/people/PeopleService;I)I

    .line 240
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->access$300(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    return-void
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get conversation"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get last interaction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecentConversations()Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get recent conversations"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 180
    invoke-static {v1}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v1

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 180
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/DataManager;->getRecentConversations(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 179
    return-object v0
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->access$200(Lcom/android/server/people/PeopleService;I)I

    .line 248
    invoke-static {}, Lcom/android/server/people/PeopleService;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->access$300(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 251
    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 252
    invoke-static {v1}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 251
    return-object v0
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Lcom/android/server/people/PeopleService$1;->enforceHasReadPeopleDataPermission()V

    .line 201
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->access$200(Lcom/android/server/people/PeopleService;I)I

    .line 202
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/app/people/IConversationListener;

    .line 258
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "register conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    iget-object v0, v0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    new-instance v1, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v1, p4}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->addConversationListener(Lcom/android/server/people/PeopleService$ListenerKey;Landroid/app/people/IConversationListener;)V

    .line 261
    return-void
.end method

.method public removeAllRecentConversations()V
    .locals 2

    .line 193
    const-string/jumbo v0, "remove all recent conversations"

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$100(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->removeAllRecentConversations(I)V

    .line 196
    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "remove a recent conversation"

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$100(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0}, Lcom/android/server/people/PeopleService;->access$000(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object v0

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 187
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/people/data/DataManager;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V

    .line 189
    return-void
.end method

.method public unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/people/IConversationListener;

    .line 265
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/people/PeopleService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unregister conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    iget-object v0, v0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->removeConversationListener(Landroid/app/people/IConversationListener;)V

    .line 267
    return-void
.end method
