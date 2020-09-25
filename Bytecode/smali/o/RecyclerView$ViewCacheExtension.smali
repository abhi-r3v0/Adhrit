.class public final Lo/RecyclerView$ViewCacheExtension;
.super Lo/computeDoubleSize;
.source ""

# interfaces
.implements Lo/DataTransportCrashlyticsReportSender$$Lambda$2;


# instance fields
.field private ICustomTabsCallback:Lo/writeStringNoTag;

.field private onNavigationEvent:Lo/DataTransportCrashlyticsReportSender;

.field private onPostMessage:Lo/CachedSettingsIo;


# direct methods
.method public constructor <init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 39
    iput-object p1, p0, Lo/RecyclerView$ViewCacheExtension;->ICustomTabsCallback:Lo/writeStringNoTag;

    .line 40
    iput-object p2, p0, Lo/RecyclerView$ViewCacheExtension;->onNavigationEvent:Lo/DataTransportCrashlyticsReportSender;

    .line 41
    iput-object p3, p0, Lo/RecyclerView$ViewCacheExtension;->onPostMessage:Lo/CachedSettingsIo;

    return-void
.end method


# virtual methods
.method public final read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    sget-object v1, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->getInterfaceDescriptor()V

    return-object v2

    :cond_0
    new-instance v0, Lo/RecyclerView$ViewHolder;

    invoke-direct {v0}, Lo/RecyclerView$ViewHolder;-><init>()V

    iget-object v1, p0, Lo/RecyclerView$ViewCacheExtension;->ICustomTabsCallback:Lo/writeStringNoTag;

    iget-object v3, p0, Lo/RecyclerView$ViewCacheExtension;->onNavigationEvent:Lo/DataTransportCrashlyticsReportSender;

    .line 3000
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3, p1}, Lo/DataTransportCrashlyticsReportSender;->extraCallback(Lo/checkNoSpaceLeft;)I

    move-result v4

    .line 4000
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v5

    sget-object v6, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x5

    if-eq v4, v6, :cond_9

    const/16 v6, 0x19

    if-eq v4, v6, :cond_8

    const/16 v6, 0x31

    if-eq v4, v6, :cond_6

    const/16 v6, 0x35

    if-eq v4, v6, :cond_4

    const/16 v6, 0x37

    if-eq v4, v6, :cond_2

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->getInterfaceDescriptor()V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    const-class v4, Ljava/lang/String;

    .line 7556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lo/RecyclerView$ViewHolder;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v2, v0, Lo/RecyclerView$ViewHolder;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    const-class v4, Ljava/lang/String;

    .line 6556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lo/RecyclerView$ViewHolder;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v2, v0, Lo/RecyclerView$ViewHolder;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    const-class v4, Ljava/lang/String;

    .line 8556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lo/RecyclerView$ViewHolder;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iput-object v2, v0, Lo/RecyclerView$ViewHolder;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_a

    const-class v4, Ljava/lang/Integer;

    .line 4556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v0, Lo/RecyclerView$ViewHolder;->extraCallback:I

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_a

    const-class v4, Ljava/lang/Integer;

    .line 5556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v0, Lo/RecyclerView$ViewHolder;->onMessageChannelReady:I

    goto/16 :goto_0

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    goto/16 :goto_0

    .line 3000
    :cond_b
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onPostMessage()V

    return-object v0
.end method

.method public final write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    :cond_0
    check-cast p2, Lo/RecyclerView$ViewHolder;

    iget-object v0, p0, Lo/RecyclerView$ViewCacheExtension;->ICustomTabsCallback:Lo/writeStringNoTag;

    iget-object v1, p0, Lo/RecyclerView$ViewCacheExtension;->onPostMessage:Lo/CachedSettingsIo;

    .line 1000
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    const/16 v2, 0x38

    .line 2000
    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget v3, p2, Lo/RecyclerView$ViewHolder;->extraCallback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget v3, p2, Lo/RecyclerView$ViewHolder;->onMessageChannelReady:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    iget-object v2, p2, Lo/RecyclerView$ViewHolder;->ICustomTabsCallback:Ljava/lang/String;

    if-eq p2, v2, :cond_1

    const/16 v2, 0x25

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lo/RecyclerView$ViewHolder;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p2, Lo/RecyclerView$ViewHolder;->onPostMessage:Ljava/lang/String;

    if-eq p2, v2, :cond_2

    const/16 v2, 0x33

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lo/RecyclerView$ViewHolder;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p2, Lo/RecyclerView$ViewHolder;->onNavigationEvent:Ljava/lang/String;

    if-eq p2, v2, :cond_3

    const/16 v2, 0x18

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v1, Ljava/lang/String;

    iget-object p2, p2, Lo/RecyclerView$ViewHolder;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    .line 1000
    :cond_3
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void
.end method
