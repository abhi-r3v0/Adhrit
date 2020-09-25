.class final Lo/getTransformedBoundingBox$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;-><init>()V
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
        "Ljava/util/List<",
        "+",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field final synthetic extraCallback:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 58
    check-cast p1, Ljava/util/List;

    .line 1186
    iget-object v0, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {v0, v1}, Lo/getTransformedBoundingBox;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1187
    iget-object v0, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asBinder(Lo/getTransformedBoundingBox;)Lo/getBottomDecorationHeight;

    move-result-object v0

    .line 2041
    iget-object v0, v0, Lo/getBottomDecorationHeight;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;->ICustomTabsCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1187
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->onPostMessage(Lo/getTransformedBoundingBox;)Lo/getTitleMarginStart;

    move-result-object v0

    invoke-static {v0}, Lo/getTitleMarginStart;->onPostMessage(Lo/getTitleMarginStart;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 1190
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_5

    .line 1191
    iget-object v2, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v2}, Lo/getTransformedBoundingBox;->asBinder(Lo/getTransformedBoundingBox;)Lo/getBottomDecorationHeight;

    move-result-object v3

    .line 3027
    iget v3, v3, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    .line 1191
    invoke-static {v2, v3}, Lo/getTransformedBoundingBox;->onNavigationEvent(Lo/getTransformedBoundingBox;I)V

    .line 1192
    iget-object v2, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v2}, Lo/getTransformedBoundingBox;->getInterfaceDescriptor(Lo/getTransformedBoundingBox;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v2

    .line 4000
    iget-object v2, v2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/checkSpanForGap;

    .line 4151
    iget-object v2, v2, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1192
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1193
    iget-object v2, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    .line 4315
    iget-object v2, v2, Lo/getTransformedBoundingBox;->onTransact:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1193
    iget-object v3, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x64

    new-instance v6, Lo/getTransformedBoundingBox$onTransact$4;

    invoke-direct {v6, p0}, Lo/getTransformedBoundingBox$onTransact$4;-><init>(Lo/getTransformedBoundingBox$onTransact;)V

    check-cast v6, Lo/getServerTime;

    invoke-static {v2, v3, v4, v5, v6}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1196
    :cond_2
    iget-object v2, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v2}, Lo/getTransformedBoundingBox;->getInterfaceDescriptor(Lo/getTransformedBoundingBox;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v2, v2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {v2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_3
    const/4 p1, 0x4

    new-array v2, p1, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1199
    iget-object v4, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v4}, Lo/getTransformedBoundingBox;->ICustomTabsService(Lo/getTransformedBoundingBox;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v6, "fetched_card_count"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 1200
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v3, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x43

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string v6, "layout_type"

    invoke-direct {v4, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/4 v0, 0x2

    .line 1201
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    sget-object v3, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "carousel"

    .line 1201
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v5, "carousel_view"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/4 v0, 0x3

    .line 1202
    iget-object v3, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {v3}, Lo/getTransformedBoundingBox;->asBinder(Lo/getTransformedBoundingBox;)Lo/getBottomDecorationHeight;

    move-result-object v3

    .line 9041
    iget-object v3, v3, Lo/getBottomDecorationHeight;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

    if-eqz v3, :cond_4

    .line 10011
    iget-object v1, v3, Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;->extraCallback:Ljava/lang/String;

    .line 10043
    :cond_4
    new-instance v3, Lo/addWrite;

    const-string v4, "card_order_logic"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const-string v0, "pairs"

    .line 1198
    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_fetched_card_screen_load"

    .line 1198
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 1205
    :cond_5
    iget-object p1, p0, Lo/getTransformedBoundingBox$onTransact;->extraCallback:Lo/getTransformedBoundingBox;

    invoke-static {p1}, Lo/getTransformedBoundingBox;->onNavigationEvent(Lo/getTransformedBoundingBox;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 11000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 1205
    new-instance v2, Lo/getThumbTintList;

    new-instance v10, Lo/setTitleMarginStart$extraCallback;

    const/4 v5, 0x0

    new-instance v6, Lo/getTitleMarginEnd$extraCallback;

    const/16 v3, 0x8

    const-string/jumbo v4, "verify_cards"

    invoke-direct {v6, v4, v0, v1, v3}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x12

    const-string v4, "VERIFY_CARD_FRAGMENT"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v2, v10}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
