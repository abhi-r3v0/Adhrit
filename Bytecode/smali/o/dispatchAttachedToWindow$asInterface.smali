.class final Lo/dispatchAttachedToWindow$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "resp",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/dispatchAttachedToWindow;


# direct methods
.method constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 52
    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;

    .line 1235
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->onLoadChildren:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x54

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "notificationGroup"

    const/16 v2, 0x8

    const-string v3, "notificationCountBadge"

    if-eqz v0, :cond_0

    .line 1236
    iget-object p1, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->notificationGroup:I

    invoke-virtual {p1, v0}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object p1, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->notificationCountBadge:I

    invoke-virtual {p1, v0}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->notificationGroup:I

    invoke-virtual {v0, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 2014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;->extraCallback:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 1242
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v2, 0x63

    if-le v0, v2, :cond_2

    const-string v0, "99+"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    :goto_1
    iget-object v2, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->notificationCountBadge:I

    invoke-virtual {v2, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v4, "$this$visible"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    iget-object v2, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->notificationCountBadge:I

    invoke-virtual {v2, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1246
    :cond_3
    iget-object v0, p0, Lo/dispatchAttachedToWindow$asInterface;->onPostMessage:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->notificationCountBadge:I

    invoke-virtual {v0, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const/4 v0, 0x1

    new-array v2, v0, [Lo/addWrite;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "unseen_count"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v1

    const-string p1, "pairs"

    .line 1248
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "notification_icon_visible"

    .line 1248
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
