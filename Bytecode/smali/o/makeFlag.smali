.class public final Lo/makeFlag;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/holder/ActionDataCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "icon1",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 6010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0186

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/makeFlag;->extraCallback:Lo/setSpeed;

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/makeFlag;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz v0, :cond_8

    .line 25
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 1027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz p1, :cond_8

    .line 26
    iget-object v0, p0, Lo/makeFlag;->extraCallback:Lo/setSpeed;

    const-string v8, "icon1"

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v9

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 26
    sget-object v4, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x36

    invoke-static/range {v0 .. v7}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 27
    iget-object v0, p0, Lo/makeFlag;->extraCallback:Lo/setSpeed;

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_7

    check-cast v0, Lo/setMaxFrame;

    .line 27
    check-cast v0, Lo/getComposition;

    const-string v1, "icon1.hierarchy"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->extraCallback()Lo/setFailureListener$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    .line 3369
    invoke-virtual {v0, v2}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 3370
    instance-of v2, v0, Lo/fromAssets;

    if-eqz v2, :cond_1

    .line 3371
    check-cast v0, Lo/fromAssets;

    goto :goto_1

    .line 3373
    :cond_1
    sget-object v2, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v2}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 4094
    :goto_1
    iget-object v2, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v2, v1, :cond_3

    if-eqz v2, :cond_2

    .line 5053
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_4

    .line 4098
    iput-object v1, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v9, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 29
    :cond_4
    iget-object v0, p0, Lo/makeFlag;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 5063
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->newSession:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_5

    .line 6000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/CharSequence;

    .line 29
    :cond_5
    invoke-static {v0, v9}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lo/makeFlag;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    new-instance v0, Lo/makeFlag$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/makeFlag$onNavigationEvent;-><init>(Lo/makeFlag;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 3215
    :cond_6
    throw v9

    .line 2215
    :cond_7
    throw v9

    :cond_8
    return-void
.end method
