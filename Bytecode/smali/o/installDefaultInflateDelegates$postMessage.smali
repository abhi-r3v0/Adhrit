.class final Lo/installDefaultInflateDelegates$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/installDefaultInflateDelegates;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/cred/pay/repository/models/checkout/SessionData;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cred/pay/repository/models/checkout/SessionData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/installDefaultInflateDelegates;


# direct methods
.method constructor <init>(Lo/installDefaultInflateDelegates;)V
    .locals 0

    iput-object p1, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 40
    check-cast p1, Lcom/cred/pay/repository/models/checkout/SessionData;

    if-eqz p1, :cond_e

    .line 1129
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-static {v0}, Lo/installDefaultInflateDelegates;->asInterface(Lo/installDefaultInflateDelegates;)Lo/setHooks;

    move-result-object v0

    .line 2031
    iget-object v0, v0, Lo/setHooks;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1129
    :goto_0
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-string v3, "$this$visible"

    const-string v4, "instrumentGroup"

    const-string v5, "noInstrumentGroup"

    const-string/jumbo v6, "tvActionText"

    const-string/jumbo v7, "title"

    const/16 v8, 0x8

    const-string v9, "$this$gone"

    if-eqz v0, :cond_6

    .line 1130
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v10, Lo/onItemHoverEnter$onNavigationEvent;->noInstrumentGroup:I

    invoke-virtual {v0, v10}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->instrumentGroup:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->noCardTitle:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "noCardTitle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3042
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v1, :cond_3

    .line 3112
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 1132
    :goto_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->noCardSubTitle:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "noCardSubTitle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4042
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v1, :cond_4

    .line 4114
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->extraCallback:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v1, v2

    .line 1133
    :goto_4
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->proceed:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "proceed"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v3, Lo/installDefaultInflateDelegates$postMessage$extraCallback;

    invoke-direct {v3, p1, p0}, Lo/installDefaultInflateDelegates$postMessage$extraCallback;-><init>(Lcom/cred/pay/repository/models/checkout/SessionData;Lo/installDefaultInflateDelegates$postMessage;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v0, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 1137
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v3, Lo/onItemHoverEnter$onNavigationEvent;->proceed:I

    invoke-virtual {v0, v3}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5042
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v1, :cond_5

    .line 5108
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    if-eqz v1, :cond_5

    .line 5138
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/Cta;->onPostMessage:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v1, v2

    .line 1137
    :goto_5
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1139
    :cond_6
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v10, Lo/onItemHoverEnter$onNavigationEvent;->noInstrumentGroup:I

    invoke-virtual {v0, v10}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->instrumentGroup:I

    invoke-virtual {v0, v5}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->title:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7042
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v1, :cond_7

    .line 7112
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v1, v2

    .line 1141
    :goto_6
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8042
    iget-object v0, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v0, :cond_8

    .line 8108
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/SuggestedPi;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_7
    const-string v1, "actionLayout"

    if-eqz v0, :cond_9

    .line 1144
    iget-object v3, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v4, Lo/onItemHoverEnter$onNavigationEvent;->tvActionText:I

    invoke-virtual {v3, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/createFullSpanItemFromEnd;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8138
    iget-object v4, v0, Lcom/cred/pay/repository/models/checkout/Cta;->onPostMessage:Ljava/lang/String;

    .line 1144
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v3, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v4, Lo/onItemHoverEnter$onNavigationEvent;->actionLayout:I

    invoke-virtual {v3, v4}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v1, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;

    invoke-direct {v1, v0, p0}, Lo/installDefaultInflateDelegates$postMessage$onNavigationEvent;-><init>(Lcom/cred/pay/repository/models/checkout/Cta;Lo/installDefaultInflateDelegates$postMessage;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v3, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_8

    .line 1153
    :cond_9
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v3, Lo/onItemHoverEnter$onNavigationEvent;->actionLayout:I

    invoke-virtual {v0, v3}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    :goto_8
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-static {v0}, Lo/installDefaultInflateDelegates;->asInterface(Lo/installDefaultInflateDelegates;)Lo/setHooks;

    move-result-object v0

    .line 9052
    iget-boolean v0, v0, Lo/setHooks;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_b

    .line 1158
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-static {v0}, Lo/installDefaultInflateDelegates;->asInterface(Lo/installDefaultInflateDelegates;)Lo/setHooks;

    move-result-object v0

    .line 9053
    iget-boolean v0, v0, Lo/setHooks;->onTransact:Z

    if-eqz v0, :cond_a

    .line 1159
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->tvActionText:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "edit"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->title:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "card details"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1162
    :cond_a
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->tvActionText:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "view all"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->title:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "selected card"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    :cond_b
    :goto_9
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->itemName:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10038
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    if-eqz v1, :cond_c

    .line 10092
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

    if-eqz v1, :cond_c

    .line 10126
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/HeaderData;->onNavigationEvent:Ljava/lang/String;

    goto :goto_a

    :cond_c
    move-object v1, v2

    .line 1166
    :goto_a
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->itemLogo:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getSuggestionCommitIconResId;

    .line 11038
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    if-eqz p1, :cond_d

    .line 11092
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

    if-eqz p1, :cond_d

    .line 11124
    iget-object v2, p1, Lcom/cred/pay/repository/models/checkout/HeaderData;->onMessageChannelReady:Ljava/lang/String;

    .line 1167
    :cond_d
    invoke-static {v0, v2}, Lo/getSuggestionCommitIconResId;->ICustomTabsCallback(Lo/getSuggestionCommitIconResId;Ljava/lang/String;)V

    .line 1169
    iget-object p1, p0, Lo/installDefaultInflateDelegates$postMessage;->onMessageChannelReady:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->ICustomTabsCallback$Stub(Lo/installDefaultInflateDelegates;)V

    :cond_e
    return-void
.end method
