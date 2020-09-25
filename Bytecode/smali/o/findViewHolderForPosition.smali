.class public interface abstract Lo/findViewHolderForPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/findViewHolderForPosition$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u001e\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J(\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u001e\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u001e\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0007H\'J(\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0014H\'J2\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u001e\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u001e\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u001e\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J2\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010!\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u0014\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u0014\u0010$\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00050\u0003H\'J2\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010(\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J<\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010!\u001a\u00020\u00072\u0008\u0008\u0001\u0010(\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u001e\u0010)\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0003\u0010\u0017\u001a\u00020\tH\'J\u001e\u0010+\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0007H\'J2\u0010-\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J(\u0010/\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0001\u00101\u001a\u00020\u0007H\'J\u001e\u00102\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u001e\u00104\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'\u00a8\u00066"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinService;",
        "",
        "getCategoryMachineGameList",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "categoryFarmId",
        "",
        "pageNo",
        "",
        "getLuckyNumberGameUI",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;",
        "gameId",
        "getMachineGameList",
        "getMachinePullDownResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
        "getMachinePullDownResponseUsageId",
        "gameUsageId",
        "getPulledTickets",
        "ticketRequest",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TicketRequest;",
        "getRaffleTickets",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;",
        "perPage",
        "getSlotMachineDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;",
        "getSpinTheWheel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;",
        "getSpinTheWheelResultResponse",
        "getTickets",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
        "getTrophySectionItems",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
        "sectionId",
        "getTrophySections",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;",
        "getTrophyStatistics",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;",
        "getWinCardDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
        "id",
        "getWinDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;",
        "getWinTnc",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;",
        "getWinningTypeItems",
        "type",
        "optinNotify",
        "Ljava/lang/Void;",
        "option",
        "playLuckyNumber",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;",
        "playSlotMachine",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v2/trophy-room/winning-statistics"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/win-service/app/v1/games/{game_id}/play"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;I)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/games/{game_id}/play-ui/machine_drop"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinRaffleTicketResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "win-service/app/v1/games/{game_id}/raffle-tickets"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TicketRequest;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TicketRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TicketRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "win-service/app/v1/games/{game_id}/play"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "section_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/trophy-room/{section_id}/details/{id}"
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/win-service/app/v1/games/{game_id}/play"
    .end annotation
.end method

.method public abstract asBinder(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/games/{game_id}/play-ui/slot_machine"
    .end annotation
.end method

.method public abstract asInterface(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/games/{game_id}/tnc-attributes"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/win-service/app/v1/games/{game_id}/play"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/trophy-room/winnings"
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/trophy-room/sections"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_usage_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/win-service/app/v1/games/usages/{game_usage_id}/play"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/farms/{id}"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "option"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Ljava/lang/Void;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerHandshakeHeaders;
        extraCallback = "/win-service/app/v1/games/{game_id}/notify-me/{option}"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/games/{game_id}/play-ui/lucky_number"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;I)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "category_farm_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "win-service/app/v1/farms/{category_farm_id}/play-ui/machine_drop"
    .end annotation
.end method

.method public abstract onPostMessage(I)Lo/clearScrap;
    .param p1    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinFarmResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/farms/win/cards"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "win_primary_farm"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "win-service/app/v1/games/{game_id}/play-ui/fetch_ticket"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;II)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "section_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "per_page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/trophy-room/{section_id}"
    .end annotation
.end method

.method public abstract onRelationshipValidationResult(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/win-service/app/v1/games/{game_id}/play"
    .end annotation
.end method

.method public abstract onTransact(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/win-service/app/v1/games/{game_id}/play-ui/spin_the_wheel"
    .end annotation
.end method
