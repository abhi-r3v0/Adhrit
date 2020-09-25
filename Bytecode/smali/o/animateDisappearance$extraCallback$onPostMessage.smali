.class final Lo/animateDisappearance$extraCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onLoadChildren$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateDisappearance$extraCallback;
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/view/View;",
        "resId",
        "",
        "parent",
        "Landroid/view/ViewGroup;",
        "onInflateFinished",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$InnerCardHolder$bind$2$4$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$InnerCardHolder$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

.field private synthetic extraCallback:Lo/animateDisappearance$extraCallback;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;)V
    .locals 0

    iput-object p1, p0, Lo/animateDisappearance$extraCallback$onPostMessage;->extraCallback:Lo/animateDisappearance$extraCallback;

    iput-object p2, p0, Lo/animateDisappearance$extraCallback$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    :cond_0
    iget-object p2, p0, Lo/animateDisappearance$extraCallback$onPostMessage;->extraCallback:Lo/animateDisappearance$extraCallback;

    const v0, 0x7f0b0670

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/OrderDetailsJsonAdapter;

    .line 1112
    iput-object p1, p2, Lo/animateDisappearance$extraCallback;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter;

    .line 198
    iget-object p1, p0, Lo/animateDisappearance$extraCallback$onPostMessage;->extraCallback:Lo/animateDisappearance$extraCallback;

    iget-object p2, p0, Lo/animateDisappearance$extraCallback$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 2112
    iget-object v0, p1, Lo/animateDisappearance$extraCallback;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter;

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3112
    :cond_1
    invoke-virtual {p1, p2, v0}, Lo/animateDisappearance$extraCallback;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;Lo/OrderDetailsJsonAdapter;)V

    return-void
.end method
