.class public final Lo/ensureViewSet$newSession;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureViewSet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/fabrik/ui/lending/LendingStashSummaryFragment$onViewCreated$9$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "view",
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
.field private synthetic ICustomTabsCallback:Lo/setActivityChooserPolicyIfNeeded$onPostMessage;


# direct methods
.method constructor <init>(Lo/setActivityChooserPolicyIfNeeded$onPostMessage;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lo/ensureViewSet$newSession;->ICustomTabsCallback:Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "stash_final_summary_click_terms_conditions"

    .line 208
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 209
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    sget-object v0, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    invoke-static {}, Lo/getMovementFlags;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 215
    iget-object v0, p0, Lo/ensureViewSet$newSession;->ICustomTabsCallback:Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    .line 1047
    iget-object v0, v0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    const v1, 0x7f0600b2

    .line 215
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method