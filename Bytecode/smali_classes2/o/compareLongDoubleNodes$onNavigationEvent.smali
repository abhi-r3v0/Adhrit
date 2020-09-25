.class final Lo/compareLongDoubleNodes$onNavigationEvent;
.super Lo/getChildKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/compareLongDoubleNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/io/IOException;

.field private final onMessageChannelReady:Lo/getChildKey;


# direct methods
.method constructor <init>(Lo/getChildKey;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Lo/getChildKey;-><init>()V

    .line 276
    iput-object p1, p0, Lo/compareLongDoubleNodes$onNavigationEvent;->onMessageChannelReady:Lo/getChildKey;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 284
    iget-object v0, p0, Lo/compareLongDoubleNodes$onNavigationEvent;->onMessageChannelReady:Lo/getChildKey;

    invoke-virtual {v0}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/compareLongDoubleNodes$onNavigationEvent;->onMessageChannelReady:Lo/getChildKey;

    invoke-virtual {v0}, Lo/getChildKey;->close()V

    return-void
.end method

.method public final onMessageChannelReady()Lo/fullLimitUpdateChild;
    .locals 2

    .line 288
    new-instance v0, Lo/compareLongDoubleNodes$onNavigationEvent$2;

    iget-object v1, p0, Lo/compareLongDoubleNodes$onNavigationEvent;->onMessageChannelReady:Lo/getChildKey;

    invoke-virtual {v1}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/compareLongDoubleNodes$onNavigationEvent$2;-><init>(Lo/compareLongDoubleNodes$onNavigationEvent;Lo/toLog;)V

    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isFiltered;
    .locals 1

    .line 280
    iget-object v0, p0, Lo/compareLongDoubleNodes$onNavigationEvent;->onMessageChannelReady:Lo/getChildKey;

    invoke-virtual {v0}, Lo/getChildKey;->onNavigationEvent()Lo/isFiltered;

    move-result-object v0

    return-object v0
.end method
