.class public final Lo/DataTransportCrashlyticsReportSender$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# static fields
.field private static final extraCallback:Lo/onSchedule;

.field private static final onPostMessage:Lo/NativeCreateReportSpiCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/onSchedule;

    invoke-direct {v0}, Lo/onSchedule;-><init>()V

    sput-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    .line 25
    new-instance v0, Lo/NativeCreateReportSpiCall;

    invoke-direct {v0}, Lo/NativeCreateReportSpiCall;-><init>()V

    sput-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p1, Lo/writeStringNoTag;->extraCallback:Lo/computeSFixed32Size;

    iget-object v0, v0, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lo/writeStringNoTag;->extraCallback:Lo/computeSFixed32Size;

    iget-object v0, v0, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1094
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/dreamplug/utils/model/BaseResponse;

    if-ne v0, v1, :cond_0

    new-instance p2, Lo/updateMeasureSpecs;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/updateMeasureSpecs;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 2094
    :cond_0
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lo/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_1

    new-instance p2, Lo/RecyclerView$ViewCacheExtension;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/RecyclerView$ViewCacheExtension;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 3094
    :cond_1
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/SimDetail;

    if-ne v0, v1, :cond_2

    new-instance p2, Lo/clearListSelection;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/clearListSelection;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 4094
    :cond_2
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/UpiLinkAccountResponse;

    if-ne v0, v1, :cond_3

    new-instance p2, Lo/getSelectedItem;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/getSelectedItem;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 5094
    :cond_3
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/freshchat/consumer/sdk/beans/FCLocale;

    if-ne v0, v1, :cond_4

    new-instance p2, Lo/AppsFlyerLibCore$9;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/AppsFlyerLibCore$9;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 6094
    :cond_4
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/dreamplug/utils/model/Information;

    if-ne v0, v1, :cond_5

    new-instance p2, Lo/findFirstVisibleItemPositions;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/findFirstVisibleItemPositions;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 7094
    :cond_5
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/VpaAccount;

    if-ne v0, v1, :cond_6

    new-instance p2, Lo/performItemClick;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/performItemClick;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 8094
    :cond_6
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lo/setDy;

    if-ne v0, v1, :cond_7

    new-instance p2, Lo/getDy;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/getDy;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 9094
    :cond_7
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lo/setDx;

    if-ne v0, v1, :cond_8

    new-instance p2, Lo/getDx;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/getDx;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 10094
    :cond_8
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/Account;

    if-ne v0, v1, :cond_9

    new-instance p2, Lo/isShowing;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/isShowing;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 11094
    :cond_9
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/UpiGetAccountResponse;

    if-ne v0, v1, :cond_a

    new-instance p2, Lo/getSelectedItemId;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/getSelectedItemId;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 12094
    :cond_a
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-ne v0, v1, :cond_b

    new-instance p2, Lo/getSelectedView;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/getSelectedView;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 13094
    :cond_b
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v1, Lcom/cred/pay/repository/models/SimResponse;

    if-ne v0, v1, :cond_c

    new-instance p2, Lo/setSelection;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/setSelection;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    .line 14094
    :cond_c
    iget-object p2, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 32
    const-class v0, Lcom/cred/pay/repository/models/VpaAccounts;

    if-ne p2, v0, :cond_d

    new-instance p2, Lo/getSelectedItemPosition;

    sget-object v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->extraCallback:Lo/onSchedule;

    sget-object v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;->onPostMessage:Lo/NativeCreateReportSpiCall;

    invoke-direct {p2, p1, v0, v1}, Lo/getSelectedItemPosition;-><init>(Lo/writeStringNoTag;Lo/DataTransportCrashlyticsReportSender;Lo/CachedSettingsIo;)V

    return-object p2

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method
