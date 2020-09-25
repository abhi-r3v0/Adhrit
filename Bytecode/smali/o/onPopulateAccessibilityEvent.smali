.class public interface abstract Lo/onPopulateAccessibilityEvent;
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
        "Lcom/dreamplug/androidapp/data/repository/feature/FeatureService;",
        "",
        "fetchAssets",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/androidapp/data/repository/feature/FeatureResponseModel;",
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
.method public abstract extraCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/androidapp/data/repository/feature/FeatureResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/aggregator/v1/user-features"
    .end annotation
.end method
