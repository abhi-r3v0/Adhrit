.class final Lo/getHeading;
.super Lo/setPointerStrokeWidth;
.source ""


# instance fields
.field private final synthetic onNavigationEvent:Lo/setCalendarName;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransformedResultImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    const-string v0, "Runtime exception on the transformation worker thread: "

    .line 15
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, "TransformedResultImpl"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    throw p1

    .line 5
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPaymentDueDateWeaklyTyped;

    .line 6
    iget-object v0, p0, Lo/getHeading;->onNavigationEvent:Lo/setCalendarName;

    invoke-static {v0}, Lo/setCalendarName;->extraCallback(Lo/setCalendarName;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_3

    .line 8
    :try_start_0
    iget-object p1, p0, Lo/getHeading;->onNavigationEvent:Lo/setCalendarName;

    invoke-static {p1}, Lo/setCalendarName;->onPostMessage(Lo/setCalendarName;)Lo/setCalendarName;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 9
    :cond_3
    instance-of v1, p1, Lo/getCrifCreditScore;

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lo/getHeading;->onNavigationEvent:Lo/setCalendarName;

    invoke-static {v1}, Lo/setCalendarName;->onPostMessage(Lo/setCalendarName;)Lo/setCalendarName;

    move-result-object v1

    check-cast p1, Lo/getCrifCreditScore;

    invoke-virtual {p1}, Lo/getCrifCreditScore;->onNavigationEvent()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v1, p1}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v1, p0, Lo/getHeading;->onNavigationEvent:Lo/setCalendarName;

    invoke-static {v1}, Lo/setCalendarName;->onPostMessage(Lo/setCalendarName;)Lo/setCalendarName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/setCalendarName;->onNavigationEvent(Lo/getPaymentDueDateWeaklyTyped;)V

    .line 12
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
