.class final Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateAnchorFromChildren;->onPostMessage(Ljava/lang/String;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimBaseFragment$shareCurrentCard$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/updateAnchorFromChildren;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/updateAnchorFromChildren;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    iput-object p2, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 421
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v0, v1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string/jumbo v1, "rewardShareCard"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onPostMessage()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const v3, 0x7f130403

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "https://cred.onelink.me/k63y/rewardshare"

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context!!.getString(R.st\u2026plate, REWARD_SHARE_LINK)"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v6, v0

    .line 423
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v0, v3}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v0, v2}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    iget-object v2, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v2, v3}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 427
    sget-object v2, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    const-string/jumbo v2, "screenshot.jpg"

    invoke-static {v0, v2, v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 428
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    invoke-static/range {v4 .. v9}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_3
    return-void

    .line 430
    :cond_4
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/updateAnchorFromChildren;

    iget-object v1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/updateAnchorFromChildren;->onPostMessage(Lo/updateAnchorFromChildren;Ljava/lang/String;)V

    return-void
.end method
