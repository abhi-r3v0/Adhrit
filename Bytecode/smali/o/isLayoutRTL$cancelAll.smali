.class final Lo/isLayoutRTL$cancelAll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutRTL;
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
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$shareCurrentCard$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isLayoutRTL;

.field private synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    iput-object p2, p0, Lo/isLayoutRTL$cancelAll;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 630
    iget-object v0, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v0, v1}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string/jumbo v1, "rewardShareCard"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/isLayoutRTL$cancelAll;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const v2, 0x7f130403

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "https://cred.onelink.me/k63y/rewardshare"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 632
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v0, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v0, v2}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    iget-object v2, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->rewardShareCard:I

    invoke-virtual {v2, v3}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v1, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 635
    sget-object v2, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    const-string/jumbo v2, "screenshot.jpg"

    invoke-static {v0, v2, v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 636
    iget-object v0, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    invoke-static/range {v2 .. v7}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_3
    return-void

    .line 638
    :cond_4
    iget-object v0, p0, Lo/isLayoutRTL$cancelAll;->extraCallback:Lo/isLayoutRTL;

    iget-object v1, p0, Lo/isLayoutRTL$cancelAll;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/isLayoutRTL;->onMessageChannelReady(Lo/isLayoutRTL;Ljava/lang/String;)V

    return-void
.end method
