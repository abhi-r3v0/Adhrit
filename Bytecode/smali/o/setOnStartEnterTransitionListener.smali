.class public final Lo/setOnStartEnterTransitionListener;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/adapters/PageFooter1ViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "image",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
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
.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 10010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/setOnStartEnterTransitionListener;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/setOnStartEnterTransitionListener;->onNavigationEvent:Lo/setSpeed;

    .line 27
    iget-object p1, p0, Lo/setOnStartEnterTransitionListener;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string p2, "cta"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setOnStartEnterTransitionListener$3;

    invoke-direct {p2, p0}, Lo/setOnStartEnterTransitionListener$3;-><init>(Lo/setOnStartEnterTransitionListener;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, p0, Lo/setOnStartEnterTransitionListener;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string v1, "cta"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v1, :cond_0

    .line 2014
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_0

    .line 3000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 32
    :goto_0
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3061
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    const-string v0, "image"

    if-eqz p1, :cond_7

    .line 3184
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 34
    iget-object p1, p0, Lo/setOnStartEnterTransitionListener;->onNavigationEvent:Lo/setSpeed;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 4216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_6

    check-cast p1, Lo/setMaxFrame;

    .line 34
    check-cast p1, Lo/getComposition;

    const-string v1, "image.hierarchy"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->extraCallback()Lo/setFailureListener$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    .line 6369
    invoke-virtual {p1, v3}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 6370
    instance-of v3, p1, Lo/fromAssets;

    if-eqz v3, :cond_1

    .line 6371
    check-cast p1, Lo/fromAssets;

    goto :goto_1

    .line 6373
    :cond_1
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 7094
    :goto_1
    iget-object v3, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v3, v1, :cond_3

    if-eqz v3, :cond_2

    .line 8053
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_4

    .line 7098
    iput-object v1, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 7099
    iput-object v2, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 7100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 7101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 35
    :cond_4
    iget-object v3, p0, Lo/setOnStartEnterTransitionListener;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    return-void

    .line 6215
    :cond_5
    throw v2

    .line 5215
    :cond_6
    throw v2

    .line 36
    :cond_7
    iget-object p1, p0, Lo/setOnStartEnterTransitionListener;->onNavigationEvent:Lo/setSpeed;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 9017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method
