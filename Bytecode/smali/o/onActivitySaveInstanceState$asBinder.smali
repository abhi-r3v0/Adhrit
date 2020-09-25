.class public final Lo/onActivitySaveInstanceState$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onActivitySaveInstanceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel$getInvites$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;",
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
.field private synthetic onNavigationEvent:Lo/onActivitySaveInstanceState;


# direct methods
.method constructor <init>(Lo/onActivitySaveInstanceState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lo/onActivitySaveInstanceState$asBinder;->onNavigationEvent:Lo/onActivitySaveInstanceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v1, :cond_1

    .line 130
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 130
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lo/onActivitySaveInstanceState$asBinder;->onNavigationEvent:Lo/onActivitySaveInstanceState;

    invoke-static {v0}, Lo/onActivitySaveInstanceState;->onMessageChannelReady(Lo/onActivitySaveInstanceState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lo/onActivitySaveInstanceState;->onNavigationEvent(Lo/onActivitySaveInstanceState;I)V

    .line 132
    iget-object v0, p0, Lo/onActivitySaveInstanceState$asBinder;->onNavigationEvent:Lo/onActivitySaveInstanceState;

    .line 1116
    iget-object v0, v0, Lo/onActivitySaveInstanceState;->onMessageChannelReady:Lo/setActive;

    .line 2099
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;->ICustomTabsCallback:Ljava/util/List;

    .line 132
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lo/onActivitySaveInstanceState$asBinder;->onNavigationEvent:Lo/onActivitySaveInstanceState;

    .line 2101
    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;->onNavigationEvent:Z

    .line 133
    invoke-static {v0, v1}, Lo/onActivitySaveInstanceState;->ICustomTabsCallback(Lo/onActivitySaveInstanceState;Z)V

    .line 134
    iget-object v0, p0, Lo/onActivitySaveInstanceState$asBinder;->onNavigationEvent:Lo/onActivitySaveInstanceState;

    .line 2103
    iget p1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignInvitesResponse;->onPostMessage:I

    .line 2120
    iput p1, v0, Lo/onActivitySaveInstanceState;->ICustomTabsCallback$Stub:I

    :cond_0
    return-void

    .line 138
    :cond_1
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_2

    .line 139
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 4014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 3010
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    .line 139
    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_2
    return-void
.end method
