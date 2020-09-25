.class final Lo/notifyDataSetChanged$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/notifyDataSetChanged;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouch"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    .line 358
    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "menuArrow"

    const-string v3, "menuText"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 359
    iget-object p1, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->menuText:I

    invoke-virtual {p1, p2}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 360
    iget-object p1, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->menuArrow:I

    invoke-virtual {p1, p2}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_1

    .line 362
    iget-object p1, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->menuText:I

    invoke-virtual {p1, p2}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 363
    iget-object p1, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->menuArrow:I

    invoke-virtual {p1, p2}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object p2, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->menuText:I

    invoke-virtual {p2, v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 366
    iget-object p2, p0, Lo/notifyDataSetChanged$asInterface;->onNavigationEvent:Lo/notifyDataSetChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->menuArrow:I

    invoke-virtual {p2, v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPressed(Z)V

    :goto_0
    return v1
.end method
