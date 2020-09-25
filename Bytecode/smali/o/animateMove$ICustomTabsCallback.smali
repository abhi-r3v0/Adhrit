.class public final Lo/animateMove$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateMove;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field final synthetic onPostMessage:Lo/animateMove;


# direct methods
.method constructor <init>(Lo/animateMove;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 8

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "lifecycle"

    const-string v1, "activity!!"

    const-string v2, "gem_screen"

    const-string v3, "pairs"

    const-string/jumbo v4, "source"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p2, "how_it_works"

    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 184
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 9000
    iget-object p1, p1, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 184
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9347
    new-instance p2, Lo/onGetChildDrawingOrder$setCallbacksMessenger;

    new-instance p3, Lo/onDetach$getDefaultImpl;

    invoke-direct {p3, v2}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lo/onGetChildDrawingOrder$setCallbacksMessenger;-><init>(Lo/onDetach$getDefaultImpl;)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_1
    const-string/jumbo p2, "view_more_referred_people"

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 178
    new-instance p1, Lo/resolveShouldLayoutReverse;

    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lo/resolveShouldLayoutReverse;-><init>(Lo/onSessionEvent;)V

    .line 179
    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance p3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v7, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 231
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v5, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 232
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 8212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 234
    iput-boolean v6, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_3

    .line 236
    new-instance v1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {v1, p2, p3, p1}, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/resolveShouldLayoutReverse;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 237
    iget-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 239
    :cond_3
    :goto_0
    new-instance p1, Lo/animateMove$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {p1, v0, p2}, Lo/animateMove$ICustomTabsCallback$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :sswitch_2
    const-string p2, "remind_pending_referrals"

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    new-array p1, v6, [Lo/addWrite;

    .line 11043
    new-instance p2, Lo/addWrite;

    const-string p3, "medium"

    const-string/jumbo v0, "whatsapp"

    invoke-direct {p2, p3, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, p1, v7

    .line 193
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "remind_friend_btn_click"

    .line 193
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 194
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    const p2, 0x7f1303b3

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.referral_nudge_message)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object p2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p2

    .line 11320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object p3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, p3, :cond_4

    move-object v5, p2

    .line 195
    :cond_4
    check-cast v5, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz v5, :cond_5

    .line 12028
    iget-object p2, v5, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->asBinder:Ljava/lang/String;

    if-eqz p2, :cond_5

    move-object v2, p2

    goto :goto_1

    :cond_5
    move-object v2, p1

    .line 200
    :goto_1
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x15

    invoke-static/range {v0 .. v5}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_6
    return-void

    :sswitch_3
    const-string p3, "check_now"

    .line 202
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 203
    instance-of p1, p2, Lo/onLoadInBackground$onPostMessage;

    if-eqz p1, :cond_17

    .line 204
    check-cast p2, Lo/onLoadInBackground$onPostMessage;

    .line 12055
    iget-object p1, p2, Lo/onLoadInBackground$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 12329
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz p2, :cond_7

    .line 13061
    iget-object v5, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->extraCallback:Ljava/lang/String;

    :cond_7
    if-nez v5, :cond_8

    return-void

    .line 205
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result p2

    const-string p3, "coin_ledger_fragment"

    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_4
    const-string p2, "deeplink"

    .line 217
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 218
    sget-object p2, Lo/length;->extraCallback:Lo/length;

    .line 20329
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 21065
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 218
    invoke-virtual {p2, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :sswitch_5
    const-string p2, "farm"

    .line 206
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 14000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeItemDecoration;

    if-eqz p1, :cond_17

    .line 209
    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 15000
    iget-object p2, p2, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMoveDuration;

    .line 209
    sget-object v0, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    const/4 v0, 0x4

    const-string v1, "home"

    invoke-static {p2, v1, v6, v7, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 210
    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 16000
    iget-object p2, p2, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMoveDuration;

    .line 210
    invoke-static {p2}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;)V

    .line 211
    sget-object p2, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-static {p3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16022
    new-instance v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    invoke-direct {v0, p1, p3}, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;-><init>(Lo/removeItemDecoration;Ljava/lang/String;)V

    check-cast v0, Lo/setRemoveDuration;

    .line 17010
    new-instance p1, Lo/getThumbTintList;

    invoke-direct {p1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :sswitch_6
    const-string/jumbo p2, "web"

    .line 220
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 221
    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 22000
    iget-object p2, p2, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x0

    .line 22329
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 23065
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    .line 221
    invoke-static/range {v0 .. v5}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_4

    :sswitch_7
    const-string p2, "farm_with_machine"

    .line 214
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 17329
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 18065
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 215
    iget-object v0, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 19000
    iget-object v0, v0, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 20000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeItemDecoration;

    .line 215
    invoke-virtual {v0, p2, p1, p3}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;)V

    :cond_9
    return-void

    :sswitch_8
    const-string p2, "back"

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 143
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :sswitch_9
    const-string p2, "invite"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    new-array p1, v6, [Lo/addWrite;

    .line 1043
    new-instance p3, Lo/addWrite;

    const-string v0, "action"

    invoke-direct {p3, v0, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v7

    .line 146
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "gems_screen_cta"

    .line 146
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 147
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 2000
    iget-object p1, p1, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 147
    invoke-static {p1, v2}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    :sswitch_a
    const-string/jumbo p2, "view_all_pending_referrals"

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 187
    new-instance p1, Lo/setReverseLayout;

    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lo/setReverseLayout;-><init>(Lo/onSessionEvent;)V

    .line 188
    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance p3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v7, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 241
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v5, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 242
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 10212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_c

    const/4 v7, 0x1

    :cond_c
    if-eqz v7, :cond_d

    .line 189
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 244
    iput-boolean v6, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 245
    :cond_d
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_e

    .line 246
    new-instance v1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;

    invoke-direct {v1, p2, p3, p1}, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setReverseLayout;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 247
    iget-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 249
    :cond_e
    :goto_2
    new-instance p1, Lo/animateMove$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {p1, v0, p2}, Lo/animateMove$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :sswitch_b
    const-string p2, "filter_click"

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x2

    new-array p2, p1, [Lo/addWrite;

    .line 161
    iget-object p3, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {p3}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;)Lo/onDetach$updateVisuals;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 5054
    iget-object p3, p3, Lo/onDetach$updateVisuals;->extraCallback:Ljava/lang/String;

    goto :goto_3

    :cond_f
    move-object p3, v5

    .line 6043
    :goto_3
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v4, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p2, v7

    .line 161
    iget-object p3, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {p3}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;)Lo/onDetach$updateVisuals;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 6055
    iget-object v5, p3, Lo/onDetach$updateVisuals;->onPostMessage:Ljava/lang/String;

    .line 7043
    :cond_10
    new-instance p3, Lo/addWrite;

    const-string v0, "currency"

    invoke-direct {p3, v0, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v6

    .line 161
    invoke-static {p2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p3, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "currency_filter_clicked"

    .line 161
    invoke-static {p1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 162
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    new-instance p2, Lo/animateChange;

    invoke-direct {p2}, Lo/animateChange;-><init>()V

    invoke-static {p1, p2}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;Lo/animateChange;)V

    .line 163
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {p1}, Lo/animateMove;->onPostMessage(Lo/animateMove;)Lo/animateChange;

    move-result-object p1

    if-eqz p1, :cond_11

    new-instance p2, Lo/animateMove$ICustomTabsCallback$onPostMessage;

    invoke-direct {p2, p0}, Lo/animateMove$ICustomTabsCallback$onPostMessage;-><init>(Lo/animateMove$ICustomTabsCallback;)V

    check-cast p2, Lo/animateChange$onMessageChannelReady;

    .line 8073
    iput-object p2, p1, Lo/animateChange;->onPostMessage:Lo/animateChange$onMessageChannelReady;

    .line 173
    :cond_11
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 174
    iget-object p2, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {p2}, Lo/animateMove;->onPostMessage(Lo/animateMove;)Lo/animateChange;

    move-result-object p2

    if-eqz p2, :cond_12

    const-string p3, "FILTER"

    invoke-virtual {p2, p1, p3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_12
    return-void

    :sswitch_c
    const-string p3, "item_click"

    .line 149
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 150
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    if-eqz p1, :cond_17

    .line 151
    check-cast p2, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getClickReference()Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getType()Ljava/lang/String;

    move-result-object v5

    :cond_13
    if-nez v5, :cond_14

    return-void

    :cond_14
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const p3, -0x37b0b0d1

    if-eq p1, p3, :cond_16

    const p3, 0x1c26a

    if-eq p1, p3, :cond_15

    return-void

    :cond_15
    const-string/jumbo p1, "txn"

    .line 152
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 153
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 3000
    iget-object p1, p1, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/getMoveDuration;

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "transaction-details/"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getClickReference()Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getUsageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-static/range {v0 .. v5}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void

    :cond_16
    const-string/jumbo p1, "reward"

    .line 155
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 156
    iget-object p1, p0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 4000
    iget-object p1, p1, Lo/animateMove;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 156
    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getClickReference()Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getUsageId()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "rewardUsageId"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4218
    new-instance p3, Lo/onGetChildDrawingOrder$IPostMessageService;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;

    invoke-direct {v0, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lo/onGetChildDrawingOrder$IPostMessageService;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$Extra;)V

    check-cast p3, Lo/getRemoveDuration;

    invoke-virtual {p1, p3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_17
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x753e36a4 -> :sswitch_c
        -0x6d4d85ff -> :sswitch_b
        -0x4a77f56a -> :sswitch_a
        -0x468dd0f7 -> :sswitch_9
        0x2e04e7 -> :sswitch_8
        0x17c6fb1f -> :sswitch_3
        0x5a2c1f14 -> :sswitch_2
        0x649edeed -> :sswitch_1
        0x7f69367d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x621270c9 -> :sswitch_7
        0x1cb54 -> :sswitch_6
        0x2fd836 -> :sswitch_5
        0x258156e6 -> :sswitch_4
    .end sparse-switch
.end method
