.class final Lo/isCompleteForPath$3;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isCompleteForPath;->onNavigationEvent(Lo/isFiltered;[BI)Lo/isCompleteForPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic extraCallback:[B

.field private synthetic onNavigationEvent:Lo/isFiltered;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/isFiltered;I[BI)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/isCompleteForPath$3;->onNavigationEvent:Lo/isFiltered;

    iput p2, p0, Lo/isCompleteForPath$3;->ICustomTabsCallback:I

    iput-object p3, p0, Lo/isCompleteForPath$3;->extraCallback:[B

    const/4 p1, 0x0

    iput p1, p0, Lo/isCompleteForPath$3;->onPostMessage:I

    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    .line 94
    iget v0, p0, Lo/isCompleteForPath$3;->ICustomTabsCallback:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lo/isCompleteForPath$3;->extraCallback:[B

    iget v1, p0, Lo/isCompleteForPath$3;->onPostMessage:I

    iget v2, p0, Lo/isCompleteForPath$3;->ICustomTabsCallback:I

    invoke-interface {p1, v0, v1, v2}, Lo/filtersNodes;->ICustomTabsCallback([BII)Lo/filtersNodes;

    return-void
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/isCompleteForPath$3;->onNavigationEvent:Lo/isFiltered;

    return-object v0
.end method
