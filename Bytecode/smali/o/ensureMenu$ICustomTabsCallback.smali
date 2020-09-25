.class public final Lo/ensureMenu$ICustomTabsCallback;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenu;->onNavigationEvent(ZZLjava/lang/CharSequence;I)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/androidapp/login/DisclaimerTextPresenter$updateUi$experianClickSpan$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "textView",
        "Landroid/view/View;",
        "updateDrawState",
        "ds",
        "Landroid/text/TextPaint;",
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
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:Lo/ensureMenu;


# direct methods
.method constructor <init>(Lo/ensureMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lo/ensureMenu$ICustomTabsCallback;->onMessageChannelReady:Lo/ensureMenu;

    const p1, 0x7f060244

    iput p1, p0, Lo/ensureMenu$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onboard_click_bureau_faq"

    .line 73
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 74
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lo/ensureMenu$ICustomTabsCallback;->onMessageChannelReady:Lo/ensureMenu;

    .line 1037
    iget-object v0, v0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 74
    :goto_0
    const-class v2, Lo/getOuterActionMenuPresenter;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ENDPOINT"

    const-string v2, "/bureau-terms"

    .line 75
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lo/ensureMenu$ICustomTabsCallback;->onMessageChannelReady:Lo/ensureMenu;

    .line 2037
    iget-object v0, v0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    const v0, 0x7f0600b2

    .line 82
    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 83
    iget-object v0, p0, Lo/ensureMenu$ICustomTabsCallback;->onMessageChannelReady:Lo/ensureMenu;

    .line 3037
    iget-object v0, v0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    iget v1, p0, Lo/ensureMenu$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method
