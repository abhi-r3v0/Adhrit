.class public final Lo/clearSelection$ICustomTabsService$Stub$Proxy;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/cred/pay/ui/checkout/card/newcard/CheckoutAddCardFragment$showViesKnowMoreDialog$1$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/util/Map;

.field private synthetic onNavigationEvent:Lo/clearSelection;


# direct methods
.method constructor <init>(Lo/clearSelection;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/clearSelection$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Lo/clearSelection;

    iput-object p2, p0, Lo/clearSelection$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Ljava/util/Map;

    .line 357
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lo/clearSelection$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Ljava/util/Map;

    const-string/jumbo v0, "vsc_know_more_bottom_sheet_t&C_click"

    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 360
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://www.visa.co.in/legal/visa-checkout-lite/terms-of-service.html"

    .line 361
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lo/clearSelection$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Lo/clearSelection;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
