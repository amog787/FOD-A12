.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessList;

    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessList;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ProcessList;->$r8$lambda$eEVoHjWPClUsVDRm3xBMVJVcgcw(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I

    move-result p1

    return p1
.end method
