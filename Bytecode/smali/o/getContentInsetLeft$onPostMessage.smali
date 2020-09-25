.class public final Lo/getContentInsetLeft$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapDataForType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetLeft;->onMessageChannelReady(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapDataForType<",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/onboarding/viewmodel/CardDetailViewModel$getCardDetails$1",
        "Lcom/dreamplug/network/helper/LiveCallback;",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setActive;


# direct methods
.method constructor <init>(Lo/setActive;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/getContentInsetLeft$onPostMessage;->onPostMessage:Lo/setActive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 50
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lo/getContentInsetLeft$onPostMessage;->onPostMessage:Lo/setActive;

    new-instance v1, Lo/getViewForPosition;

    invoke-direct {v1, p1, p2}, Lo/getViewForPosition;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 2

    .line 50
    check-cast p1, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lo/getContentInsetLeft$onPostMessage;->onPostMessage:Lo/setActive;

    new-instance v1, Lo/getViewForPosition;

    invoke-direct {v1, p1}, Lo/getViewForPosition;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
