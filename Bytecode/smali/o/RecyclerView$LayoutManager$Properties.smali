.class public interface abstract Lo/RecyclerView$LayoutManager$Properties;
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
        "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigService;",
        "",
        "getTabConfig",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
            "Lcom/dreamplug/fabrik/ui/tabholder/TabConfigResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/castle-black/app/v1/navigation-bar"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "tab_config"
    .end annotation
.end method