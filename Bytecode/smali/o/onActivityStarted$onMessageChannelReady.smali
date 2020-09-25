.class final Lo/onActivityStarted$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityStarted;-><init>()V
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
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "invites",
        "",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
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
.field private synthetic onNavigationEvent:Lo/onActivityStarted;


# direct methods
.method constructor <init>(Lo/onActivityStarted;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityStarted$onMessageChannelReady;->onNavigationEvent:Lo/onActivityStarted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 38
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 1154
    iget-object v0, p0, Lo/onActivityStarted$onMessageChannelReady;->onNavigationEvent:Lo/onActivityStarted;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v0, v1}, Lo/onActivityStarted;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1155
    iget-object v0, p0, Lo/onActivityStarted$onMessageChannelReady;->onNavigationEvent:Lo/onActivityStarted;

    invoke-static {v0}, Lo/onActivityStarted;->onPostMessage(Lo/onActivityStarted;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 1156
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1159
    iget-object p1, p0, Lo/onActivityStarted$onMessageChannelReady;->onNavigationEvent:Lo/onActivityStarted;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Lo/onActivityStarted;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "you have paid the bill for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onActivityStarted$onMessageChannelReady;->onNavigationEvent:Lo/onActivityStarted;

    invoke-static {v1}, Lo/onActivityStarted;->extraCallback(Lo/onActivityStarted;)Lo/onActivitySaveInstanceState;

    move-result-object v1

    .line 3120
    iget v1, v1, Lo/onActivitySaveInstanceState;->ICustomTabsCallback$Stub:I

    .line 1159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onActivityStarted$onMessageChannelReady;->onNavigationEvent:Lo/onActivityStarted;

    invoke-static {v1}, Lo/onActivityStarted;->extraCallback(Lo/onActivityStarted;)Lo/onActivitySaveInstanceState;

    move-result-object v1

    .line 4120
    iget v1, v1, Lo/onActivitySaveInstanceState;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "friends"

    goto :goto_0

    :cond_0
    const-string v1, "friend"

    .line 1159
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
