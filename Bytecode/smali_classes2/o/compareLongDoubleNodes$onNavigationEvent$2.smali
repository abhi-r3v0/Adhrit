.class final Lo/compareLongDoubleNodes$onNavigationEvent$2;
.super Lo/getStartPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/compareLongDoubleNodes$onNavigationEvent;->onMessageChannelReady()Lo/fullLimitUpdateChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/compareLongDoubleNodes$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/compareLongDoubleNodes$onNavigationEvent;Lo/toLog;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lo/compareLongDoubleNodes$onNavigationEvent$2;->ICustomTabsCallback:Lo/compareLongDoubleNodes$onNavigationEvent;

    invoke-direct {p0, p2}, Lo/getStartPost;-><init>(Lo/toLog;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lo/getStartPost;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 293
    iget-object p2, p0, Lo/compareLongDoubleNodes$onNavigationEvent$2;->ICustomTabsCallback:Lo/compareLongDoubleNodes$onNavigationEvent;

    iput-object p1, p2, Lo/compareLongDoubleNodes$onNavigationEvent;->ICustomTabsCallback:Ljava/io/IOException;

    .line 294
    throw p1
.end method
