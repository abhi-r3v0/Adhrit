.class final Lo/getMaxNode$extraCallback;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isFiltered;

.field private final onMessageChannelReady:Lo/isCompleteForPath;


# direct methods
.method constructor <init>(Lo/isCompleteForPath;Lo/isFiltered;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    .line 237
    iput-object p1, p0, Lo/getMaxNode$extraCallback;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 238
    iput-object p2, p0, Lo/getMaxNode$extraCallback;->ICustomTabsCallback:Lo/isFiltered;

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

    .line 246
    iget-object v0, p0, Lo/getMaxNode$extraCallback;->onMessageChannelReady:Lo/isCompleteForPath;

    invoke-virtual {v0}, Lo/isCompleteForPath;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lo/getMaxNode$extraCallback;->onMessageChannelReady:Lo/isCompleteForPath;

    invoke-virtual {v0, p1}, Lo/isCompleteForPath;->onMessageChannelReady(Lo/filtersNodes;)V

    return-void
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 242
    iget-object v0, p0, Lo/getMaxNode$extraCallback;->ICustomTabsCallback:Lo/isFiltered;

    return-object v0
.end method
