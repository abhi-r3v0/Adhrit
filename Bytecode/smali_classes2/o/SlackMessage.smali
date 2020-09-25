.class public final Lo/SlackMessage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:I

.field private final onMessageChannelReady:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/util/Map<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;",
            "Lo/setReferenceId;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final ICustomTabsCallback(Lo/RefundAccount$$Parcelable;Lo/setReferenceId;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RefundAccount$$Parcelable<",
            "*>;",
            "Lo/setReferenceId;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/SlackMessage;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0, p1, p2}, Lo/postOrRun;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lo/SlackMessage;->onNavigationEvent:Lo/postOrRun;

    invoke-virtual {v0, p1, p3}, Lo/postOrRun;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget p1, p0, Lo/SlackMessage;->extraCallback:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lo/SlackMessage;->extraCallback:I

    .line 16
    invoke-virtual {p2}, Lo/setReferenceId;->onPostMessage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 17
    iput-boolean p3, p0, Lo/SlackMessage;->ICustomTabsCallback:Z

    .line 18
    :cond_0
    iget p1, p0, Lo/SlackMessage;->extraCallback:I

    if-nez p1, :cond_2

    .line 19
    iget-boolean p1, p0, Lo/SlackMessage;->ICustomTabsCallback:Z

    if-eqz p1, :cond_1

    .line 20
    new-instance p1, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object p2, p0, Lo/SlackMessage;->onPostMessage:Lo/postOrRun;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/AvailabilityException;-><init>(Lo/postOrRun;)V

    .line 21
    iget-object p2, p0, Lo/SlackMessage;->onMessageChannelReady:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p2, p1}, Lo/removeBackgroundStateChangeListener;->onMessageChannelReady(Ljava/lang/Exception;)V

    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lo/SlackMessage;->onMessageChannelReady:Lo/removeBackgroundStateChangeListener;

    iget-object p2, p0, Lo/SlackMessage;->onNavigationEvent:Lo/postOrRun;

    invoke-virtual {p1, p2}, Lo/removeBackgroundStateChangeListener;->onPostMessage(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/SlackMessage;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0}, Lo/postOrRun;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
