.class public interface abstract Lo/setTitleMarginEnd;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J1\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\tH\'\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/GatingService;",
        "",
        "checkEligibility",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "flow",
        "",
        "freshFlow",
        "",
        "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/dreamplug/network/helper/NetworkCall;",
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
.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;)Lo/tryBindViewHolderByDeadline;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "gating_flow"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "fresh_flow"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/tryBindViewHolderByDeadline<",
            "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/getChangedScrapViewForPosition;
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/gating-service/v2/features/20e4ad74-a2e7-11e8-98d0-529269fb1459/status"
    .end annotation
.end method
