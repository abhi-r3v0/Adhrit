.class public final Lo/getContentInsetStart$newSession$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart$newSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/androidapp/login/LoginViewModel$refreshProfile$1$onResponse$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field final synthetic extraCallback:Lo/getContentInsetStart$newSession;

.field final synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/profile/ProfileResponse;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/profile/ProfileResponse;Lo/getContentInsetStart$newSession;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$newSession$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/profile/ProfileResponse;

    iput-object p2, p0, Lo/getContentInsetStart$newSession$onPostMessage;->extraCallback:Lo/getContentInsetStart$newSession;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 543
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 543
    check-cast v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2000
    :goto_0
    sget-object v2, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v3, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 544
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 2009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 544
    check-cast v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;

    if-eqz v0, :cond_1

    .line 2050
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;->onNavigationEvent:Ljava/lang/String;

    .line 3000
    :cond_1
    sget-object v0, Lo/onDestroyOptionsMenu;->onNavigationEvent:Lo/setSubtitleTextColor;

    sget-object v2, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 545
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 545
    check-cast p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;

    if-eqz p1, :cond_5

    .line 3051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkedResponseModel;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 545
    check-cast p1, Ljava/lang/Iterable;

    .line 760
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 761
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/Incentive;

    .line 3058
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/Incentive;->onPostMessage:Ljava/lang/String;

    const-string v2, "REWARD"

    .line 546
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4056
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/Incentive;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "PROCESSED"

    .line 546
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 5000
    :cond_5
    sget-object p1, Lo/onDestroyOptionsMenu;->onTransact:Lo/setTitleTextColor;

    sget-object v0, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 548
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/getContentInsetStart$newSession$onPostMessage$1;

    invoke-direct {v0, p0}, Lo/getContentInsetStart$newSession$onPostMessage$1;-><init>(Lo/getContentInsetStart$newSession$onPostMessage;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {p1, v0}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    .line 551
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {p1}, Lo/onDestroyOptionsMenu;->extraCallback()V

    return-void

    .line 553
    :cond_6
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_9

    .line 554
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 554
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getStatus_code()Ljava/lang/String;

    move-result-object v1

    :cond_7
    const-string p1, "404"

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 555
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/getContentInsetStart$newSession$onPostMessage$5;

    invoke-direct {v0, p0}, Lo/getContentInsetStart$newSession$onPostMessage$5;-><init>(Lo/getContentInsetStart$newSession$onPostMessage;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {p1, v0}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    .line 558
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {p1}, Lo/onDestroyOptionsMenu;->extraCallback()V

    return-void

    .line 560
    :cond_8
    new-instance p1, Lo/inflateMenu;

    const-string v0, "Something went wrong."

    invoke-direct {p1, v0}, Lo/inflateMenu;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/getContentInsetStart$newSession$onPostMessage;->extraCallback:Lo/getContentInsetStart$newSession;

    iget-object v0, v0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    invoke-static {v0}, Lo/getContentInsetStart;->onPostMessage(Lo/getContentInsetStart;)Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/inflateMenu;->onPostMessage(Landroid/content/Context;)V

    :cond_9
    return-void
.end method
