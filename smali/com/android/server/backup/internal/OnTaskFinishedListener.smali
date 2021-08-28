.class public interface abstract Lcom/android/server/backup/internal/OnTaskFinishedListener;
.super Ljava/lang/Object;
.source "OnTaskFinishedListener.java"


# static fields
.field public static final NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;)V
    .locals 0
    .param p0, "caller"    # Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract onFinished(Ljava/lang/String;)V
.end method
