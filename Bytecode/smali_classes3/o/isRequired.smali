.class public final Lo/isRequired;
.super Lo/getComponentsInCycle;


# instance fields
.field private final ICustomTabsCallback:J

.field private final onMessageChannelReady:Lo/getComponentsInCycle;

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(Lo/getComponentsInCycle;JJ)V
    .locals 4

    invoke-direct {p0}, Lo/getComponentsInCycle;-><init>()V

    iput-object p1, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    goto :goto_0

    .line 1000
    :cond_0
    invoke-virtual {p1}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {p1}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide p2

    :cond_1
    :goto_0
    iput-wide p2, p0, Lo/isRequired;->onPostMessage:J

    add-long/2addr p2, p4

    cmp-long p1, p2, v0

    if-gez p1, :cond_2

    goto :goto_1

    .line 2000
    :cond_2
    iget-object p1, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {p1}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide p4

    cmp-long p1, p2, p4

    if-lez p1, :cond_3

    iget-object p1, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {p1}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v0, p2

    :goto_1
    iput-wide v0, p0, Lo/isRequired;->ICustomTabsCallback:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected final extraCallback(JJ)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide p1, p0, Lo/isRequired;->onPostMessage:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    .line 3000
    :cond_0
    iget-object v2, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {v2}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    iget-object p1, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {p1}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide p1

    :cond_1
    :goto_0
    add-long/2addr p3, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    goto :goto_1

    .line 4000
    :cond_2
    iget-object v0, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {v0}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    iget-object p3, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    invoke-virtual {p3}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v0, p3

    :goto_1
    iget-object p3, p0, Lo/isRequired;->onMessageChannelReady:Lo/getComponentsInCycle;

    sub-long/2addr v0, p1

    invoke-virtual {p3, p1, p2, v0, v1}, Lo/getComponentsInCycle;->extraCallback(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()J
    .locals 4

    iget-wide v0, p0, Lo/isRequired;->ICustomTabsCallback:J

    iget-wide v2, p0, Lo/isRequired;->onPostMessage:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
