.class public final synthetic Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Inserter;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/util/TypedXmlSerializer;


# direct methods
.method public synthetic constructor <init>(JLandroid/util/TypedXmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/TypedXmlSerializer;

    return-void
.end method


# virtual methods
.method public final insert(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/TypedXmlSerializer;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/notification/SnoozeHelper;->lambda$writeXml$3(JLandroid/util/TypedXmlSerializer;Ljava/lang/Long;)V

    return-void
.end method
