.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/people/data/EventHistoryImpl;->lambda$eventHistoriesImplFromDisk$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
