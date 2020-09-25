.class final Lo/isCompleteForPath$5;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;Lo/matches;)Lo/isCompleteForPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/matches;

.field private synthetic onMessageChannelReady:Lo/isFiltered;


# direct methods
.method constructor <init>(Lo/isFiltered;Lo/matches;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/isCompleteForPath$5;->onMessageChannelReady:Lo/isFiltered;

    iput-object p2, p0, Lo/isCompleteForPath$5;->extraCallback:Lo/matches;

    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/isCompleteForPath$5;->extraCallback:Lo/matches;

    invoke-virtual {v0}, Lo/matches;->onTransact()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lo/isCompleteForPath$5;->extraCallback:Lo/matches;

    invoke-interface {p1, v0}, Lo/filtersNodes;->onMessageChannelReady(Lo/matches;)Lo/filtersNodes;

    return-void
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/isCompleteForPath$5;->onMessageChannelReady:Lo/isFiltered;

    return-object v0
.end method
