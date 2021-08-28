.class Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationSelector"
.end annotation


# instance fields
.field private mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field private mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->this$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 988
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 989
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver;
    .param p2, "x1"    # Lcom/android/server/people/data/DataManager$1;

    .line 986
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    .line 986
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)Lcom/android/server/people/data/ConversationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    .param p1, "x1"    # Lcom/android/server/people/data/ConversationInfo;

    .line 986
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    .line 986
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)Lcom/android/server/people/data/ConversationStore;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    .param p1, "x1"    # Lcom/android/server/people/data/ConversationStore;

    .line 986
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    .line 986
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 986
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-object p1
.end method
