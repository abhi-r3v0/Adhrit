.class public final Lo/getViewAdapterPosition;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getViewAdapterPosition$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/BankAccountBannerViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cardImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "container",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "mainContent",
        "Lcom/dreamplug/widget/CredTextView;",
        "poweredBy",
        "poweredByImage",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "payload",
        "payloads",
        "",
        "",
        "BankAccountBanner",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/onChildrenLoaded;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 6010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e019c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getViewAdapterPosition;->extraCallback:Lo/onChildrenLoaded;

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->mainContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getViewAdapterPosition;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->poweredBy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getViewAdapterPosition;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->poweredByImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getViewAdapterPosition;->onNavigationEvent:Lo/setSpeed;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cardImage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getViewAdapterPosition;->onMessageChannelReady:Lo/setSpeed;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v2, v1, Lo/getViewAdapterPosition$extraCallback;

    if-eqz v2, :cond_5

    .line 30
    iget-object v2, v0, Lo/getViewAdapterPosition;->extraCallback:Lo/onChildrenLoaded;

    const-string v3, "container"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/getViewAdapterPosition$extraCallback;

    .line 1041
    iget-object v3, v1, Lo/getViewAdapterPosition$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/Card;

    .line 1100
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/Card;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1106
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Background;

    if-eqz v3, :cond_0

    .line 1120
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x7

    .line 30
    invoke-static {v3, v4, v4, v4, v5}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v2, v0, Lo/getViewAdapterPosition;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string v3, "mainContent"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    iget-object v3, v1, Lo/getViewAdapterPosition$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/Card;

    .line 2100
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/Card;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;

    if-eqz v3, :cond_1

    .line 2108
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 31
    :goto_1
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, v0, Lo/getViewAdapterPosition;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string v3, "poweredBy"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3041
    iget-object v3, v1, Lo/getViewAdapterPosition$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/Card;

    .line 3100
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/Card;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;

    if-eqz v3, :cond_2

    .line 3110
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 32
    :goto_2
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v5, v0, Lo/getViewAdapterPosition;->onNavigationEvent:Lo/setSpeed;

    const-string v2, "poweredByImage"

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4041
    iget-object v2, v1, Lo/getViewAdapterPosition$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/Card;

    .line 4100
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/track/network/response/Card;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;

    if-eqz v2, :cond_3

    .line 4112
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;->ICustomTabsCallback:Ljava/lang/String;

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    .line 33
    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 34
    iget-object v13, v0, Lo/getViewAdapterPosition;->onMessageChannelReady:Lo/setSpeed;

    const-string v2, "cardImage"

    invoke-static {v13, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5041
    iget-object v1, v1, Lo/getViewAdapterPosition$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/Card;

    .line 5100
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/track/network/response/Card;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;

    if-eqz v1, :cond_4

    .line 5106
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Background;

    if-eqz v1, :cond_4

    .line 5122
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/track/network/response/Background;->onPostMessage:Ljava/lang/String;

    :cond_4
    move-object v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    .line 34
    invoke-static/range {v13 .. v20}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 36
    :cond_5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/getViewAdapterPosition$onPostMessage;

    invoke-direct {v2, v0}, Lo/getViewAdapterPosition$onPostMessage;-><init>(Lo/getViewAdapterPosition;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onPostMessage(Lo/StaggeredGridLayoutManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StaggeredGridLayoutManager;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1, p2}, Lo/createOrientationHelpers;->onPostMessage(Lo/StaggeredGridLayoutManager;Ljava/util/List;)V

    return-void
.end method
