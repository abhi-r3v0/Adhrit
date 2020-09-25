.class public final Lo/AppsFlyerLibCore$9;
.super Lo/computeDoubleSize;
.source ""

# interfaces
.implements Lo/DataTransportCrashlyticsReportSender$$Lambda$2;


# instance fields
.field private onMessageChannelReady:Lo/DataTransportCrashlyticsReportSender;

.field private onNavigationEvent:Lo/CachedSettingsIo;

.field private onPostMessage:Lo/writeStringNoTag;


# direct methods
.method public constructor <init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 39
    iput-object p1, p0, Lo/AppsFlyerLibCore$9;->onPostMessage:Lo/writeStringNoTag;

    .line 40
    iput-object p2, p0, Lo/AppsFlyerLibCore$9;->onMessageChannelReady:Lo/DataTransportCrashlyticsReportSender;

    .line 41
    iput-object p3, p0, Lo/AppsFlyerLibCore$9;->onNavigationEvent:Lo/CachedSettingsIo;

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
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/FCLocale;-><init>()V

    iget-object v1, p0, Lo/AppsFlyerLibCore$9;->onPostMessage:Lo/writeStringNoTag;

    iget-object v3, p0, Lo/AppsFlyerLibCore$9;->onMessageChannelReady:Lo/DataTransportCrashlyticsReportSender;

    .line 3000
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_16

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
    const/4 v6, 0x6

    if-eq v4, v6, :cond_13

    const/16 v6, 0xb

    if-eq v4, v6, :cond_11

    const/16 v6, 0x17

    if-eq v4, v6, :cond_f

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_d

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_b

    const/16 v6, 0x32

    if-eq v4, v6, :cond_9

    const/16 v6, 0x36

    if-eq v4, v6, :cond_7

    const/16 v6, 0x40

    if-eq v4, v6, :cond_6

    const/16 v6, 0x45

    if-eq v4, v6, :cond_4

    const/16 v6, 0x46

    if-eq v4, v6, :cond_2

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->getInterfaceDescriptor()V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    const-class v4, Ljava/lang/String;

    .line 9556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    if-eqz v5, :cond_5

    const-class v4, Ljava/lang/String;

    .line 11556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    if-eqz v5, :cond_15

    const-class v4, Ljava/lang/Long;

    .line 4556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    goto/16 :goto_0

    :cond_7
    if-eqz v5, :cond_8

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

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    if-eqz v5, :cond_a

    const-class v4, Ljava/lang/String;

    .line 5556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    if-eqz v5, :cond_c

    const-class v4, Ljava/lang/String;

    .line 12556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    goto :goto_2

    :cond_d
    if-eqz v5, :cond_e

    const-class v4, Ljava/lang/String;

    .line 13556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    goto :goto_2

    :cond_f
    if-eqz v5, :cond_10

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

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    goto :goto_2

    :cond_11
    if-eqz v5, :cond_12

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

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    goto :goto_2

    :cond_13
    if-eqz v5, :cond_14

    const-class v4, Ljava/lang/String;

    .line 10556
    invoke-static {v4}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    .line 4000
    invoke-virtual {v4, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    iput-object v2, v0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    :cond_15
    :goto_2
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    goto/16 :goto_0

    .line 3000
    :cond_16
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onPostMessage()V

    return-object v0
.end method

.method public final write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 5
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
    check-cast p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;

    iget-object v0, p0, Lo/AppsFlyerLibCore$9;->onPostMessage:Lo/writeStringNoTag;

    iget-object v1, p0, Lo/AppsFlyerLibCore$9;->onNavigationEvent:Lo/CachedSettingsIo;

    .line 1000
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    const/16 v2, 0x1e

    .line 2000
    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-wide v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    if-eq p2, v2, :cond_1

    const/16 v2, 0x3e

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    if-eq p2, v2, :cond_2

    const/16 v2, 0x2c

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    if-eq p2, v2, :cond_3

    const/16 v2, 0xe

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    if-eq p2, v2, :cond_4

    const/16 v2, 0x1f

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    if-eq p2, v2, :cond_5

    const/16 v2, 0x2d

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    if-eq p2, v2, :cond_6

    const/16 v2, 0x13

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    if-eq p2, v2, :cond_7

    const/16 v2, 0x2e

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_7
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    if-eq p2, v2, :cond_8

    const/16 v2, 0x1d

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    :cond_8
    iget-object v2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    if-eq p2, v2, :cond_9

    const/16 v2, 0xd

    invoke-interface {v1, p1, v2}, Lo/CachedSettingsIo;->extraCallback(Lo/computeTagSize;I)V

    const-class v1, Ljava/lang/String;

    iget-object p2, p2, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lo/lambda$sendReport$1;->ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    .line 1000
    :cond_9
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void
.end method
