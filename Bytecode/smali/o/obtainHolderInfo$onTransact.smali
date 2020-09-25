.class public final Lo/obtainHolderInfo$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onAnimationStarted$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainHolderInfo;-><init>()V
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
        "com/dreamplug/fabrik/ui/main/remotecontrol/RCDialogFragment$onItemClickListener$1",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
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
.field private synthetic onPostMessage:Lo/obtainHolderInfo;


# direct methods
.method constructor <init>(Lo/obtainHolderInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lo/obtainHolderInfo$onTransact;->onPostMessage:Lo/obtainHolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;Lo/StaggeredGridLayoutManager;)V
    .locals 7

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    instance-of v0, p2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "rc3"

    const-string v2, "rc2"

    const-string v3, "rc1"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 165
    :pswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    :goto_0
    invoke-static {p1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bottom"

    goto :goto_2

    :cond_1
    const-string p1, ""

    goto :goto_2

    :cond_2
    :goto_1
    const-string/jumbo p1, "top"

    .line 170
    :goto_2
    check-cast p2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 1034
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 1057
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1117
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 171
    :goto_3
    iget-object v2, p0, Lo/obtainHolderInfo$onTransact;->onPostMessage:Lo/obtainHolderInfo;

    invoke-static {v2}, Lo/obtainHolderInfo;->onMessageChannelReady(Lo/obtainHolderInfo;)Lo/onAnimationFinished;

    move-result-object v2

    .line 2028
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "externalId"

    .line 171
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "section"

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v2, v2, Lo/onAnimationFinished;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeAndRecycleView;

    const-string v4, "remote_control"

    .line 2094
    invoke-interface {v2, v3, v4}, Lo/removeAndRecycleView;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object v2

    .line 2095
    new-instance v3, Lo/onAnimationFinished$ICustomTabsCallback;

    invoke-direct {v3, p1, v0}, Lo/onAnimationFinished$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-interface {v2, v3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    const/4 v2, 0x3

    new-array v3, v2, [Lo/addWrite;

    const/4 v4, 0x0

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "cta_section"

    invoke-direct {v5, v6, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const/4 p1, 0x1

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "action"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, p1

    const/4 p1, 0x2

    .line 5026
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->extraCallback:Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;

    if-eqz v0, :cond_4

    .line 5150
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/main/remotecontrol/CompletionAction;->onNavigationEvent:Ljava/lang/String;

    .line 6043
    :cond_4
    new-instance v0, Lo/addWrite;

    const-string v4, "category"

    invoke-direct {v0, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v3, p1

    const-string p1, "pairs"

    .line 172
    invoke-static {v3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 172
    invoke-static {p1}, Lo/obtainHolderInfo;->onNavigationEvent(Ljava/util/Map;)V

    .line 177
    iget-object p1, p0, Lo/obtainHolderInfo$onTransact;->onPostMessage:Lo/obtainHolderInfo;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lo/obtainHolderInfo;->extraCallback(Lo/obtainHolderInfo;Landroid/app/Dialog;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b820
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
