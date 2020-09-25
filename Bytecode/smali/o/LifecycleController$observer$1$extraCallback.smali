.class final Lo/LifecycleController$observer$1$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LifecycleController$observer$1;-><init>()V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/LifecycleController$observer$1;


# direct methods
.method constructor <init>(Lo/LifecycleController$observer$1;)V
    .locals 0

    iput-object p1, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    .line 1142
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {v0, v1}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "message"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1143
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {v0, v2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const v3, 0x7f130278

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->charLimit:I

    invoke-virtual {v0, v2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "charLimit"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->back_button:I

    invoke-virtual {v0, v2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "back_button"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->backgroundOverlay:I

    invoke-virtual {v0, v2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "backgroundOverlay"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->customiseCta:I

    invoke-virtual {v0, v2}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "customiseCta"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {v5, v6}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v5, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_7

    :cond_6
    const/4 v3, 0x0

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->customiseCta:I

    invoke-virtual {v0, v1}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f130165

    goto :goto_6

    :cond_9
    const v2, 0x7f130185

    :goto_6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1150
    iget-object p1, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p1, v0}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1151
    iget-object p1, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->customiseCta:I

    invoke-virtual {p1, v0}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_a
    const-string p1, "greeting_customise_edit_clicked"

    .line 1153
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1154
    iget-object p1, p0, Lo/LifecycleController$observer$1$extraCallback;->ICustomTabsCallback:Lo/LifecycleController$observer$1;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->message:I

    invoke-virtual {p1, v0}, Lo/LifecycleController$observer$1;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    return-void
.end method
