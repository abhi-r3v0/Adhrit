.class public final Lo/DiffUtil$Callback;
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
        "Lcom/dreamplug/fabrik/ui/digest/templates/StoryView1;",
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
.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lo/calculateDiff;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;I)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 4

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e006a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view"

    .line 14
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/DiffUtil$Callback;->onPostMessage(Landroid/view/View;)V

    .line 16
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v2, "text1"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 1033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "text_1"

    .line 16
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    if-eqz v2, :cond_0

    .line 2000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p0, v0}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v2, "text2"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    iget-object v2, p0, Lo/calculateDiff;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 2024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 2033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "text_2"

    .line 17
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    .line 3000
    iget-object v1, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/DiffUtil$Callback;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/DiffUtil$Callback;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/DiffUtil$Callback;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/DiffUtil$Callback;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
