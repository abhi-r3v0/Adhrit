.class final Lo/onStartLoading$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onStartLoading;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onStartLoading;


# direct methods
.method constructor <init>(Lo/onStartLoading;)V
    .locals 0

    iput-object p1, p0, Lo/onStartLoading$extraCallback;->onMessageChannelReady:Lo/onStartLoading;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 26
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    iget-object p1, p0, Lo/onStartLoading$extraCallback;->onMessageChannelReady:Lo/onStartLoading;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/onActivityPostResumed;

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "link_email_screen_load"

    const-string v3, "feedback"

    invoke-static {p1, v2, v3, v0, v1}, Lo/onActivityPostResumed;->extraCallback(Lo/onActivityPostResumed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    .line 1066
    iget-object p1, p0, Lo/onStartLoading$extraCallback;->onMessageChannelReady:Lo/onStartLoading;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 26
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1065
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.control.ActivateCredProtectFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
