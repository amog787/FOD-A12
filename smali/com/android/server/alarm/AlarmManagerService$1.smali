.class Lcom/android/server/alarm/AlarmManagerService$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/alarm/Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 1097
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$1;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .locals 9
    .param p1, "lhs"    # Lcom/android/server/alarm/Alarm;
    .param p2, "rhs"    # Lcom/android/server/alarm/Alarm;

    .line 1102
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1103
    .local v0, "lhsIdleUntil":Z
    :goto_0
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1104
    .local v3, "rhsIdleUntil":Z
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    .line 1105
    if-eqz v0, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 1109
    :cond_3
    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v5, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    iget-object v6, p2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-ge v5, v6, :cond_4

    .line 1110
    return v4

    .line 1111
    :cond_4
    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v5, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    iget-object v6, p2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-le v5, v6, :cond_5

    .line 1112
    return v2

    .line 1116
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 1117
    return v4

    .line 1118
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 1119
    return v2

    .line 1122
    :cond_7
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1097
    check-cast p1, Lcom/android/server/alarm/Alarm;

    check-cast p2, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$1;->compare(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I

    move-result p1

    return p1
.end method
