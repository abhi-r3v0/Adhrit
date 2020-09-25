.class final Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;
.super Lo/validateNoOrderByCall$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateNoOrderByCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field private onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lo/validateNoOrderByCall;


# direct methods
.method private constructor <init>(Lo/validateNoOrderByCall;)V
    .locals 1

    .line 480
    iput-object p1, p0, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/validateNoOrderByCall;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/validateNoOrderByCall$onMessageChannelReady;-><init>(Lo/validateNoOrderByCall;B)V

    return-void
.end method

.method synthetic constructor <init>(Lo/validateNoOrderByCall;B)V
    .locals 0

    .line 480
    invoke-direct {p0, p1}, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;-><init>(Lo/validateNoOrderByCall;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 486
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    if-nez v0, :cond_2

    .line 487
    iget-boolean v0, p0, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 489
    :cond_0
    iget-object v0, p0, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 1061
    iget-object v0, v0, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 489
    invoke-interface {v0, p1, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 491
    iput-boolean p1, p0, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    .line 492
    invoke-virtual {p0}, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onMessageChannelReady()V

    return-wide v1

    :cond_1
    return-wide p1

    .line 486
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 500
    :cond_0
    iget-boolean v0, p0, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;->onPostMessage()V

    :cond_1
    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->extraCallback:Z

    return-void
.end method
