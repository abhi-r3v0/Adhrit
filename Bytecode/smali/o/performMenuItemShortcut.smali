.class public interface abstract Lo/performMenuItemShortcut;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\'\u00a8\u0006\u0006"
    }
    d2 = {
        "Lclub/cred/credcurrency/CredPointsService;",
        "",
        "credPoints",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "credCurrency_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Lo/tryBindViewHolderByDeadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/tryBindViewHolderByDeadline<",
            "Lclub/cred/credcurrency/CredPointCountModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "points/v1/"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "points_v1"
    .end annotation
.end method
