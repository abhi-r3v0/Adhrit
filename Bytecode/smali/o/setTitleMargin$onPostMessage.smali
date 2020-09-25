.class public final Lo/setTitleMargin$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapDataForType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMargin;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Boolean;Lo/setActive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapDataForType<",
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/EligibilityRepository$checkEligibility$1",
        "Lcom/dreamplug/network/helper/LiveCallback;",
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
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
.field private synthetic ICustomTabsCallback:Lo/setActive;


# direct methods
.method constructor <init>(Lo/setActive;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/setTitleMargin$onPostMessage;->ICustomTabsCallback:Lo/setActive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 1018
    iget-object p1, p0, Lo/setTitleMargin$onPostMessage;->ICustomTabsCallback:Lo/setActive;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    .line 16
    check-cast p1, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    .line 1022
    iget-object v0, p0, Lo/setTitleMargin$onPostMessage;->ICustomTabsCallback:Lo/setActive;

    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
