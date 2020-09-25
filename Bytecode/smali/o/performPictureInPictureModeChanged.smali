.class public final Lo/performPictureInPictureModeChanged;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/adapters/ListItem10ViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "kotlin.jvm.PlatformType",
        "image1",
        "Lcom/dreamplug/ui/CredDraweeView;",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
        "text2",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

.field private final onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 14010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e023b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/flagRemovedAndOffsetPosition;

    iput-object p1, p0, Lo/performPictureInPictureModeChanged;->onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performPictureInPictureModeChanged;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performPictureInPictureModeChanged;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/performPictureInPictureModeChanged;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "cta"

    .line 32
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/performPictureInPictureModeChanged$4;

    invoke-direct {p2, p0}, Lo/performPictureInPictureModeChanged$4;-><init>(Lo/performPictureInPictureModeChanged;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 13

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_f

    .line 39
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1061
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 40
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_a

    .line 41
    iget-object v0, p0, Lo/performPictureInPictureModeChanged;->onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

    const-string v4, "image1"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lo/setSpeed;

    .line 2061
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    if-eqz v0, :cond_3

    .line 2184
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onMessageChannelReady:Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    .line 41
    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 42
    iget-object v0, p0, Lo/performPictureInPictureModeChanged;->onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 3216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_9

    check-cast v0, Lo/setMaxFrame;

    .line 42
    check-cast v0, Lo/getComposition;

    const-string v5, "image1.hierarchy"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->extraCallback()Lo/setFailureListener$extraCallback;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v6, 0x2

    .line 5369
    invoke-virtual {v0, v6}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 5370
    instance-of v6, v0, Lo/fromAssets;

    if-eqz v6, :cond_4

    .line 5371
    check-cast v0, Lo/fromAssets;

    goto :goto_4

    .line 5373
    :cond_4
    sget-object v6, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v6}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 6094
    :goto_4
    iget-object v6, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v6, v5, :cond_6

    if-eqz v6, :cond_5

    .line 7053
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_5
    if-nez v2, :cond_7

    .line 6098
    iput-object v5, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 6099
    iput-object v1, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 6100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 6101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 43
    :cond_7
    iget-object v0, p0, Lo/performPictureInPictureModeChanged;->onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 5215
    :cond_8
    throw v1

    .line 4215
    :cond_9
    throw v1

    .line 45
    :cond_a
    :goto_6
    iget-object v0, p0, Lo/performPictureInPictureModeChanged;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "text1"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 8051
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_b

    .line 9000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_b
    move-object v2, v1

    .line 45
    :goto_7
    invoke-static {v0, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lo/performPictureInPictureModeChanged;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "text2"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 9053
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_c

    .line 10000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_8

    :cond_c
    move-object v2, v1

    .line 46
    :goto_8
    invoke-static {v0, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 10071
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    const-string v2, "cta"

    if-eqz v0, :cond_e

    .line 10173
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v0, :cond_e

    .line 49
    iget-object v0, p0, Lo/performPictureInPictureModeChanged;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 11071
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    .line 11173
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 12014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_d

    .line 13000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 49
    :cond_d
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void

    .line 51
    :cond_e
    iget-object p1, p0, Lo/performPictureInPictureModeChanged;->onNavigationEvent:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 13017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method
