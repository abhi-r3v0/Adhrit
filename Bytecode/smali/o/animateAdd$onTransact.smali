.class public final Lo/animateAdd$onTransact;
.super Lo/isRunning;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestFragment$onViewCreated$3",
        "Lcom/dreamplug/fabrik/ui/digest/OnSwipeGestureListener;",
        "onClicked",
        "",
        "onSwipeUp",
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
.field private synthetic ICustomTabsCallback:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-direct {p0, p2}, Lo/isRunning;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 8

    .line 122
    iget-object v0, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    iget-object v0, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    const-string v1, "digestSlider"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    iget v0, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 122
    invoke-static {v0}, Lo/DiffUtil;->onMessageChannelReady(I)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lo/addWrite;

    const/4 v4, 0x0

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "action"

    const-string/jumbo v7, "swipe_up"

    invoke-direct {v5, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const-string v4, "pairs"

    .line 123
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "$this$plus"

    .line 123
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3659
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v2, Ljava/util/Map;

    .line 123
    invoke-static {v2}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "digest_cta_swiped"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 124
    iget-object v1, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v1, v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 8

    .line 129
    iget-object v0, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    iget-object v0, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    const-string v1, "digestSlider"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4627
    iget v0, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 129
    invoke-static {v0}, Lo/DiffUtil;->onMessageChannelReady(I)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    if-eqz v0, :cond_0

    .line 5035
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    if-eqz v0, :cond_0

    .line 5116
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lo/addWrite;

    const/4 v4, 0x0

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v6, "action"

    const-string v7, "click"

    invoke-direct {v5, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const-string v4, "pairs"

    .line 130
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "$this$plus"

    .line 130
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6659
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v2, Ljava/util/Map;

    .line 130
    invoke-static {v2}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "digest_cta_swiped"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 131
    iget-object v1, p0, Lo/animateAdd$onTransact;->ICustomTabsCallback:Lo/animateAdd;

    invoke-static {v1, v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V

    :cond_0
    return-void
.end method
