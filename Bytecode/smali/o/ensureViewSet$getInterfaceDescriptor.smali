.class final Lo/ensureViewSet$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureViewSet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/ensureViewSet;


# direct methods
.method constructor <init>(Lo/ensureViewSet;)V
    .locals 0

    iput-object p1, p0, Lo/ensureViewSet$getInterfaceDescriptor;->extraCallback:Lo/ensureViewSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "proceed"

    if-eqz p2, :cond_0

    const-string/jumbo p2, "stash_final_summary_select_accept_conditions"

    .line 195
    invoke-static {p2}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 196
    iget-object p2, p0, Lo/ensureViewSet$getInterfaceDescriptor;->extraCallback:Lo/ensureViewSet;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p2, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/createFullSpanItemFromEnd;->setEnabled(Z)V

    .line 197
    iget-object p2, p0, Lo/ensureViewSet$getInterfaceDescriptor;->extraCallback:Lo/ensureViewSet;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p2, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 1064
    sget-object p1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast p1, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v0, "s_tWhiteFour_bgBlack"

    invoke-static {p2, v0, p1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    return-void

    .line 199
    :cond_0
    iget-object p2, p0, Lo/ensureViewSet$getInterfaceDescriptor;->extraCallback:Lo/ensureViewSet;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p2, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lo/createFullSpanItemFromEnd;->setEnabled(Z)V

    .line 200
    iget-object p2, p0, Lo/ensureViewSet$getInterfaceDescriptor;->extraCallback:Lo/ensureViewSet;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p2, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 2064
    sget-object p1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast p1, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v0, "s_tWhiteFour_bgLightBlack"

    invoke-static {p2, v0, p1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    return-void
.end method
