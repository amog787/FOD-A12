.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/ProcessRecord;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ContentProviderHelper;->lambda$installEncryptionUnawareProviders$1$ContentProviderHelper(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method
