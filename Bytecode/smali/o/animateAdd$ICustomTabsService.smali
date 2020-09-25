.class final Lo/animateAdd$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0

    iput-object p1, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 234
    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    const-string v1, "digestSlider"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    iget v0, v0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 234
    invoke-static {v0}, Lo/DiffUtil;->onMessageChannelReady(I)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->asBinder:Lcom/dreamplug/fabrik/ui/nba/helper/Actionable;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Actionable;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13015b

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 236
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v2}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    iget-object v2, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/animateChangeImpl;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2627
    iget v1, v2, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const-string v1, "digestSlider.findViewWit\u2026digestSlider.currentItem)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v1, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->credLogoLabel:I

    invoke-virtual {v1, v2}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    const-string v2, "credLogoLabel"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 239
    new-instance v5, Landroid/graphics/Canvas;

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41400000    # 12.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 241
    invoke-virtual {v5, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-float v0, v0

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "Resources.getSystem()"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/4 v9, 0x1

    const/high16 v10, 0x41c80000    # 25.0f

    .line 3010
    invoke-static {v9, v10, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    sub-float/2addr v0, v8

    .line 242
    invoke-virtual {v5, v1, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 243
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 244
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    const-string v1, "digest_screenshot.jpg"

    invoke-static {v3, v1, v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 245
    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->credLogoLabel:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/setSpeed;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_share_triggered"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 247
    iget-object v0, p0, Lo/animateAdd$ICustomTabsService;->onMessageChannelReady:Lo/animateAdd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    invoke-static/range {v2 .. v7}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_3
    return-void
.end method
