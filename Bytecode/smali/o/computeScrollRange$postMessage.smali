.class final Lo/computeScrollRange$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
.field private synthetic onPostMessage:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 1087
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->ICustomTabsCallback$Stub(Lo/computeScrollRange;)V

    .line 1088
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->onRelationshipValidationResult(Lo/computeScrollRange;)V

    .line 1089
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object p1

    .line 2080
    iget-object p1, p1, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const-string/jumbo v0, "tncText"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1090
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;Z)V

    .line 1091
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->tncText:I

    invoke-virtual {p1, v2}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1093
    :cond_0
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    invoke-static {p1, v1}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;Z)V

    .line 1094
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tncText:I

    invoke-virtual {p1, v1}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    :goto_0
    iget-object p1, p0, Lo/computeScrollRange$postMessage;->onPostMessage:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;)V

    return-void
.end method
