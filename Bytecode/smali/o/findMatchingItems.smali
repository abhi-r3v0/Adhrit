.class public final Lo/findMatchingItems;
.super Lo/calculateDiff;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/templates/StoryView7;",
        "Lcom/dreamplug/fabrik/ui/digest/templates/DigestBaseView;",
        "context",
        "Landroid/content/Context;",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "index",
        "",
        "(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V",
        "initView",
        "",
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
.field private onNavigationEvent:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lo/calculateDiff;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 5

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0e0071

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "view"

    .line 15
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/findMatchingItems;->onPostMessage(Landroid/view/View;)V

    .line 16
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    const-string v3, "backgroundView"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_7

    check-cast v0, Lo/setMaxFrame;

    .line 16
    check-cast v0, Lo/getComposition;

    const-string v3, "backgroundView.hierarchy"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onMessageChannelReady()Lo/setFailureListener$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x2

    .line 3369
    invoke-virtual {v0, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 3370
    instance-of v4, v0, Lo/fromAssets;

    if-eqz v4, :cond_0

    .line 3371
    check-cast v0, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v4, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v4}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 4094
    :goto_0
    iget-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v4, v3, :cond_1

    if-eqz v4, :cond_2

    .line 5053
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 4098
    iput-object v3, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v2, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_3
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "text1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6016
    iget-object v1, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 6024
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 6033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v1, :cond_4

    const-string/jumbo v3, "text_1"

    .line 17
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTargetScrollPosition;

    if-eqz v1, :cond_4

    .line 7000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 17
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "text2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7016
    iget-object v1, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 7024
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 7033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v1, :cond_5

    const-string/jumbo v3, "text_2"

    .line 18
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTargetScrollPosition;

    if-eqz v1, :cond_5

    .line 8000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .line 18
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3215
    :cond_6
    throw v2

    .line 2215
    :cond_7
    throw v2
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findMatchingItems;->onNavigationEvent:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findMatchingItems;->onNavigationEvent:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findMatchingItems;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/findMatchingItems;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
