.class final Lo/onActivityResumed$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Ljava/util/ArrayList<",
        "Lo/StaggeredGridLayoutManager;",
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000120\u0010\u0002\u001a,\u0012\u0004\u0012\u00020\u0004 \u0006*\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00050\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "contacts",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlin/collections/ArrayList;",
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
.field private synthetic onMessageChannelReady:Lo/onActivityResumed;


# direct methods
.method constructor <init>(Lo/onActivityResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 45
    check-cast p1, Ljava/util/ArrayList;

    .line 1141
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->syncLottie:I

    invoke-virtual {v0, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "syncLottie"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    .line 2000
    iget-object v0, v0, Lo/onActivityResumed;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onActivityPaused;

    .line 2121
    iget-object v0, v0, Lo/onActivityPaused;->ICustomTabsCallback:Ljava/util/ArrayList;

    const-string v2, "contacts"

    if-nez v0, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "emptySearch"

    const-string v5, "emptyContact"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    invoke-static {v0}, Lo/onActivityResumed;->onPostMessage(Lo/onActivityResumed;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1144
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptyContact:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptySearch:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "contact_invite"

    invoke-static {v7, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    invoke-static {v0}, Lo/onActivityResumed;->asInterface(Lo/onActivityResumed;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 1150
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    const-string/jumbo v7, "value"

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1152
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->search:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    const-string/jumbo v2, "search"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->searchTopDivider:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getAdapterPosition;

    const-string/jumbo v2, "searchTopDivider"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->searchBottomDivider:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getAdapterPosition;

    const-string/jumbo v2, "searchBottomDivider"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptyContact:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptySearch:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptySearch:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptyContact:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 1164
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string v4, "contact_count"

    invoke-direct {v2, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    .line 1165
    iget-object p1, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    .line 5000
    iget-object p1, p1, Lo/onActivityResumed;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onActivityPaused;

    .line 5026
    iget p1, p1, Lo/onActivityPaused;->onNavigationEvent:I

    .line 1165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v4, "suggested_contact_count"

    invoke-direct {v2, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    const/4 p1, 0x2

    .line 1166
    iget-object v2, p0, Lo/onActivityResumed$warmup;->onMessageChannelReady:Lo/onActivityResumed;

    invoke-static {v2}, Lo/onActivityResumed;->extraCallback(Lo/onActivityResumed;)Lo/onActivityResumed$onNavigationEvent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5345
    iget-object v2, v2, Lo/onActivityResumed$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 6043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string v4, "referral_campaign_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, p1

    const-string p1, "pairs"

    .line 1163
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "invite_now_contacts_load"

    .line 1163
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
