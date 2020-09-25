.class final Lo/DropDownPreference$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DropDownPreference;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/getViewForPosition<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006 \u0007*\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "Lcom/dreamplug/network/helper/Response;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field final synthetic onMessageChannelReady:Lo/DropDownPreference;


# direct methods
.method constructor <init>(Lo/DropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 33
    check-cast p1, Lo/getViewForPosition;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2003
    iget-object v1, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1125
    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_8

    const/4 v1, 0x4

    new-array v2, v1, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1126
    iget-object v4, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-static {v4}, Lo/DropDownPreference;->ICustomTabsCallback(Lo/DropDownPreference;)Lo/onDetach$asBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2088
    iget-object v4, v4, Lo/onDetach$asBinder;->onNavigationEvent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 3043
    :goto_1
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 1127
    iget-object v4, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-static {v4}, Lo/DropDownPreference;->extraCallback(Lo/DropDownPreference;)Lo/PreferenceGroup;

    move-result-object v4

    .line 4032
    iget-object v4, v4, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 4320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v0

    .line 1127
    :goto_2
    check-cast v4, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v4, :cond_3

    .line 5081
    iget-object v4, v4, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v4, v0

    .line 6043
    :goto_3
    new-instance v5, Lo/addWrite;

    const-string v6, "instrument_id"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 1128
    iget-object v4, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-static {v4}, Lo/DropDownPreference;->ICustomTabsCallback(Lo/DropDownPreference;)Lo/onDetach$asBinder;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6088
    iget-object v4, v4, Lo/onDetach$asBinder;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v4, v0

    .line 7043
    :goto_4
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "reward_ID"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 1129
    iget-object v4, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-static {v4}, Lo/DropDownPreference;->extraCallback(Lo/DropDownPreference;)Lo/PreferenceGroup;

    move-result-object v4

    .line 8032
    iget-object v4, v4, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 8320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v5, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, v0

    .line 1129
    :goto_5
    check-cast v4, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v4, :cond_6

    .line 9081
    iget-object v0, v4, Lo/onDetach$onRelationshipValidationResult;->onPostMessage:Ljava/lang/String;

    .line 10043
    :cond_6
    new-instance v4, Lo/addWrite;

    const-string v5, "card_bank"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const-string v0, "pairs"

    .line 1126
    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "bank_offer_details_screen_load"

    .line 1126
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1130
    iget-object v0, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-static {v0}, Lo/DropDownPreference;->onMessageChannelReady(Lo/DropDownPreference;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 11003
    iget-object p1, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez p1, :cond_7

    .line 1130
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    check-cast p1, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 11038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1131
    iget-object p1, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bankOfferBottomSheetView:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lo/DropDownPreference$onTransact$5;

    invoke-direct {v0, p0}, Lo/DropDownPreference$onTransact$5;-><init>(Lo/DropDownPreference$onTransact;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1134
    iget-object p1, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bankOfferBottomSheetView:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lo/DropDownPreference$onTransact$1;

    invoke-direct {v0, p0}, Lo/DropDownPreference$onTransact$1;-><init>(Lo/DropDownPreference$onTransact;)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    .line 1140
    :cond_8
    iget-object p1, p0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
