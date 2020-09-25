.class public final Lo/clearSelection$requestPostMessageChannel;
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
        "com/cred/pay/ui/checkout/card/newcard/CheckoutAddCardFragment$showViesIntroDialog$2$1",
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

    iput-object p1, p0, Lo/clearSelection$requestPostMessageChannel;->onNavigationEvent:Lo/clearSelection;

    iput-object p2, p0, Lo/clearSelection$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/Map;

    .line 317
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lo/clearSelection$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/Map;

    const-string/jumbo v0, "vsc_user_education_screen_know_more_click"

    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    iget-object p1, p0, Lo/clearSelection$requestPostMessageChannel;->onNavigationEvent:Lo/clearSelection;

    invoke-static {p1}, Lo/clearSelection;->asInterface(Lo/clearSelection;)V

    return-void
.end method
