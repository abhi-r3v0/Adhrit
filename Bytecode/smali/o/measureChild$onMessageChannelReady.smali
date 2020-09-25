.class public final Lo/measureChild$onMessageChannelReady;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/measureChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashCommonPitchAdapter$ItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "description",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "icon",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "title",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 26
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/measureChild$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 27
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/measureChild$onMessageChannelReady;->onNavigationEvent:Landroid/widget/TextView;

    .line 28
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/measureChild$onMessageChannelReady;->onMessageChannelReady:Lo/setSpeed;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz v0, :cond_6

    .line 32
    iget-object v0, p0, Lo/measureChild$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    .line 1015
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onNavigationEvent:Ljava/lang/String;

    .line 32
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, p0, Lo/measureChild$onMessageChannelReady;->onMessageChannelReady:Lo/setSpeed;

    const-string v0, "icon"

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->onPostMessage:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    .line 33
    invoke-static/range {v2 .. v9}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 34
    iget-object v1, p0, Lo/measureChild$onMessageChannelReady;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v0, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Lo/setMaxFrame;

    .line 34
    check-cast v0, Lo/getComposition;

    const-string v2, "icon.hierarchy"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onPostMessage()Lo/setFailureListener$extraCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    .line 4369
    invoke-virtual {v0, v3}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 4370
    instance-of v3, v0, Lo/fromAssets;

    if-eqz v3, :cond_0

    .line 4371
    check-cast v0, Lo/fromAssets;

    goto :goto_0

    .line 4373
    :cond_0
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 5094
    :goto_0
    iget-object v3, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v3, v2, :cond_2

    if-eqz v3, :cond_1

    .line 6053
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    .line 5098
    iput-object v2, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 5099
    iput-object v1, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 5100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 5101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 35
    :cond_3
    iget-object v0, p0, Lo/measureChild$onMessageChannelReady;->onNavigationEvent:Landroid/widget/TextView;

    const-string v1, "description"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7017
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 35
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4215
    :cond_4
    throw v1

    .line 3215
    :cond_5
    throw v1

    :cond_6
    :goto_3
    return-void
.end method
