.class public final Lo/getPaddingTop$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingTop;-><init>()V
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
        "com/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1",
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
.field public final synthetic onPostMessage:Lo/getPaddingTop;


# direct methods
.method constructor <init>(Lo/getPaddingTop;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 9

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x1b7dde99    # 2.0999595E-22f

    if-eq p3, v0, :cond_1

    const v0, 0x286dcab8

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p3, "cta_click_to_expand"

    .line 189
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 190
    instance-of p1, p2, Lo/shouldMeasureChild;

    if-eqz p1, :cond_9

    .line 191
    iget-object p1, p0, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    check-cast p2, Lo/shouldMeasureChild;

    invoke-static {p1, p2}, Lo/getPaddingTop;->ICustomTabsCallback(Lo/getPaddingTop;Lo/shouldMeasureChild;)V

    goto/16 :goto_3

    :cond_1
    const-string p3, "cta_click"

    .line 175
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 176
    instance-of p1, p2, Lo/shouldMeasureChild;

    if-eqz p1, :cond_9

    .line 177
    move-object p1, p2

    check-cast p1, Lo/shouldMeasureChild;

    .line 1043
    iget-object p3, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 2026
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz p3, :cond_2

    .line 2044
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    if-eqz p3, :cond_2

    .line 2060
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_3

    .line 178
    invoke-virtual {p3}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const-string v2, "deeplink"

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p3, :cond_4

    .line 179
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {p3}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getDeeplink()Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 180
    iget-object p3, p0, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p3

    const-string v1, "lifecycle"

    invoke-static {p3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance v4, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v4}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 237
    new-instance v8, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v8}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v0, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 238
    invoke-virtual {p3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    .line 181
    iget-object p2, p0, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {p2}, Landroid/app/Activity;->onBackPressed()V

    .line 182
    sget-object p2, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    invoke-static {p2, p1}, Lo/getPaddingTop;->extraCallback(Lo/getPaddingTop;Lo/shouldMeasureChild;)V

    .line 240
    iput-boolean v2, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 241
    :cond_7
    invoke-virtual {p3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p1, v0, :cond_8

    .line 242
    new-instance p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;

    move-object v2, p1

    move-object v3, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lo/getPaddingTop$onRelationshipValidationResult;Lo/StaggeredGridLayoutManager;)V

    check-cast p1, Lo/createCallback;

    iput-object p1, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 243
    iget-object p1, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p3, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 245
    :cond_8
    :goto_2
    new-instance p1, Lo/getPaddingTop$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-direct {p1, v8, p3}, Lo/getPaddingTop$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_9
    :goto_3
    return-void
.end method
