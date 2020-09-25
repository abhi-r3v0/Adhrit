.class public final Lo/addRootSnake;
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
        "Lcom/dreamplug/fabrik/ui/digest/templates/StoryView4;",
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

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lo/calculateDiff;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 6

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0e006e

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "view"

    .line 16
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/addRootSnake;->onPostMessage(Landroid/view/View;)V

    .line 17
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v3, "text1"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    iget-object v3, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1024
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 1033
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "text_1"

    .line 17
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getTargetScrollPosition;

    if-eqz v3, :cond_0

    .line 2000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 17
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    const-string v3, "image1"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_7

    check-cast v0, Lo/setMaxFrame;

    .line 19
    check-cast v0, Lo/getComposition;

    const-string v4, "image1.hierarchy"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onMessageChannelReady()Lo/setFailureListener$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x2

    .line 4369
    invoke-virtual {v0, v5}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 4370
    instance-of v5, v0, Lo/fromAssets;

    if-eqz v5, :cond_1

    .line 4371
    check-cast v0, Lo/fromAssets;

    goto :goto_1

    .line 4373
    :cond_1
    sget-object v5, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v5}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 5094
    :goto_1
    iget-object v5, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v5, v4, :cond_2

    if-eqz v5, :cond_3

    .line 6053
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 5098
    iput-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 5099
    iput-object v2, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 5100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 5101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    :cond_4
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 7016
    iget-object v1, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 7024
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 7033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v1, :cond_5

    const-string v2, "image_1"

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/getTargetScrollPosition;

    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void

    .line 4215
    :cond_6
    throw v2

    .line 3215
    :cond_7
    throw v2
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/addRootSnake;->onNavigationEvent:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/addRootSnake;->onNavigationEvent:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/addRootSnake;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/addRootSnake;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
