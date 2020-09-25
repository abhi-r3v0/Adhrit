.class public final Lo/setFrom;
.super Lo/onChildrenLoaded;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setFrom$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001!B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0010J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cJ\u0018\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0006\u0010 \u001a\u00020\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/widget/BottomNavigationBar;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "bottomBarItemClick",
        "Lcom/dreamplug/fabrik/ui/main/widget/BottomNavigationBar$BottomBarItemClick;",
        "getBottomBarItemClick",
        "()Lcom/dreamplug/fabrik/ui/main/widget/BottomNavigationBar$BottomBarItemClick;",
        "setBottomBarItemClick",
        "(Lcom/dreamplug/fabrik/ui/main/widget/BottomNavigationBar$BottomBarItemClick;)V",
        "bottomTag",
        "",
        "getBottomTag",
        "()Ljava/lang/String;",
        "setBottomTag",
        "(Ljava/lang/String;)V",
        "previousbottomTag",
        "initListener",
        "",
        "selectBottomBarItem",
        "tag",
        "setNotificationBadges",
        "badgeData",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
        "setView",
        "isSelected",
        "",
        "setupBottomBarItems",
        "BottomBarItemClick",
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
.field ICustomTabsCallback:Lo/setFrom$onPostMessage;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setFrom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/setFrom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lo/onChildrenLoaded;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo p1, "tab_home"

    .line 21
    iput-object p1, p0, Lo/setFrom;->onNavigationEvent:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lo/setFrom;->onMessageChannelReady:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e0032

    invoke-static {p1, p3, p2}, Lo/onChildrenLoaded;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lo/setFrom;->setupBottomBarItems()V

    .line 28
    iget-object p1, p0, Lo/setFrom;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/setFrom;->onPostMessage(Ljava/lang/String;)V

    .line 16094
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->home:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string p2, "home"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setFrom$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/setFrom$onMessageChannelReady;-><init>(Lo/setFrom;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 16100
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cards:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string p2, "cards"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setFrom$extraCallback;

    invoke-direct {p2, p0}, Lo/setFrom$extraCallback;-><init>(Lo/setFrom;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 16106
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->money:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string p2, "money"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setFrom$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/setFrom$ICustomTabsCallback;-><init>(Lo/setFrom;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 16112
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lifestyle:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string p2, "lifestyle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setFrom$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/setFrom$onNavigationEvent;-><init>(Lo/setFrom;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lo/setFrom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;Z)V
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tab_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    const-string v2, "home"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lo/getSwitchMinWidth$onPostMessage;->home:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "tab_cards"

    .line 130
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cards:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;->onPostMessage:Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;

    const-string v2, "money"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p1, Lo/getSwitchMinWidth$onPostMessage;->money:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$onPostMessage;->onMessageChannelReady:Lo/onGetChildDrawingOrder$onItemLoaded$onPostMessage;

    const-string v1, "lifestyle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lifestyle:I

    invoke-virtual {p0, p1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    goto :goto_0

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bottom bar tag ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], state ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "] called"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setFrom;->onRelationshipValidationResult:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setFrom;->onRelationshipValidationResult:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/setFrom;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/setFrom;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lo/setFrom;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/setFrom;->onMessageChannelReady:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lo/setFrom;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 123
    invoke-direct {p0, v0, p1}, Lo/setFrom;->extraCallback(Ljava/lang/String;Z)V

    .line 124
    iget-object p1, p0, Lo/setFrom;->onNavigationEvent:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/setFrom;->extraCallback(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setBottomBarItemClick(Lo/setFrom$onPostMessage;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/setFrom;->ICustomTabsCallback:Lo/setFrom$onPostMessage;

    return-void
.end method

.method public final setBottomTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lo/setFrom;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public final setNotificationBadges(Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)V
    .locals 10

    const-string v0, "badgeData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->homeBadge:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "homeBadge"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$gone"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 1017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardsBadge:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "cardsBadge"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->moneyBadge:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    const-string v5, "moneyBadge"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 36
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifestyleBadge:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "lifestyleBadge"

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5009
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz p1, :cond_10

    .line 37
    check-cast p1, Ljava/lang/Iterable;

    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;

    .line 5015
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5017
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "home"

    .line 40
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    const-string v8, "$this$visible"

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    .line 5019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 40
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 40
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    .line 41
    :cond_3
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->homeBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 42
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->homeBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7017
    :cond_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "cards"

    .line 44
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 44
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 8019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 44
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    .line 45
    :cond_7
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->cardsBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9009
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 46
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->cardsBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9017
    :cond_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "money"

    .line 48
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 48
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 10019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 48
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_c

    .line 49
    :cond_b
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->moneyBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11009
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->moneyBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    .line 50
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11017
    :cond_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "lifestyle"

    .line 52
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 52
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 12019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 52
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :cond_e
    :goto_7
    if-eqz v7, :cond_0

    .line 53
    :cond_f
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lifestyleBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13009
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 54
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lifestyleBadge:I

    invoke-virtual {p0, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public final setupBottomBarItems()V
    .locals 11

    .line 62
    sget-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    const-string v0, "home"

    invoke-static {v0}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object v1

    .line 63
    sget-object v2, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    const-string v2, "cards"

    invoke-static {v2}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object v3

    .line 64
    sget-object v4, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    const-string v4, "money"

    invoke-static {v4}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object v5

    .line 65
    sget-object v6, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    const-string v6, "lifestyle"

    invoke-static {v6}, Lo/setTrackResource;->onPostMessage(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v1, :cond_0

    .line 68
    sget v10, Lo/getSwitchMinWidth$onPostMessage;->home:I

    invoke-virtual {p0, v10}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lo/onChildrenLoaded;

    invoke-static {v10, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tvHome:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v10, "tvHome"

    invoke-static {v0, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13017
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->extraCallback:Ljava/lang/String;

    .line 69
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_0
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->home:I

    invoke-virtual {p0, v1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz v3, :cond_1

    .line 74
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cards:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tvCards:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "tvCards"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14017
    iget-object v1, v3, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->extraCallback:Ljava/lang/String;

    .line 75
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cards:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x1

    if-eqz v5, :cond_2

    .line 14027
    iget-object v1, v5, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 79
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_2

    .line 80
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->money:I

    invoke-virtual {p0, v1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tvMoney:I

    invoke-virtual {p0, v1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "tvMoney"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15017
    iget-object v2, v5, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->extraCallback:Ljava/lang/String;

    .line 81
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 83
    :cond_2
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->money:I

    invoke-virtual {p0, v1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz v7, :cond_3

    .line 15027
    iget-object v1, v7, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 85
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_3

    .line 86
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifestyle:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 87
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tvLifestyle:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "tvLifestyle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16017
    iget-object v1, v7, Lcom/dreamplug/fabrik/ui/tabholder/BottomBarItem;->extraCallback:Ljava/lang/String;

    .line 87
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 89
    :cond_3
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifestyle:I

    invoke-virtual {p0, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
