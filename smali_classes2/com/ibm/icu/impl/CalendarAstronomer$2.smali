.class Lcom/ibm/icu/impl/CalendarAstronomer$2;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/CalendarAstronomer;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 699
    iput-object p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$2;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer$2;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v0

    return-object v0
.end method
