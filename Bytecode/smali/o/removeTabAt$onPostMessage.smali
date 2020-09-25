.class final Lo/removeTabAt$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeTabAt;->onActivityCreated(Landroid/os/Bundle;)V
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
        "Lo/isInputMethodNotNeeded;",
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
        "Lcom/cred/pay/repository/models/Instrument;",
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
.field private synthetic extraCallback:Lo/removeTabAt;


# direct methods
.method constructor <init>(Lo/removeTabAt;)V
    .locals 0

    iput-object p1, p0, Lo/removeTabAt$onPostMessage;->extraCallback:Lo/removeTabAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 42
    check-cast p1, Lo/isInputMethodNotNeeded;

    .line 1131
    iget-object v0, p0, Lo/removeTabAt$onPostMessage;->extraCallback:Lo/removeTabAt;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->pay:I

    invoke-virtual {v0, v1}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "pay"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string/jumbo p1, "s_tWhiteFour_bgLightBlack"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "s_tWhiteFour_bgBlack"

    .line 2064
    :goto_0
    sget-object v1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, p1, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    return-void
.end method
