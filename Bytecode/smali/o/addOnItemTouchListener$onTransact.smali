.class final Lo/addOnItemTouchListener$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$onTransact;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 50
    check-cast p1, Ljava/lang/String;

    .line 1147
    iget-object v0, p0, Lo/addOnItemTouchListener$onTransact;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1148
    iget-object v0, p0, Lo/addOnItemTouchListener$onTransact;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-static {v0}, Lo/addOnItemTouchListener;->extraCallback(Lo/addOnItemTouchListener;)Lo/onActivityResult;

    move-result-object v0

    iget-object v1, p0, Lo/addOnItemTouchListener$onTransact;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    .line 2031
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2032
    sget v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1149
    iget-object p1, p0, Lo/addOnItemTouchListener$onTransact;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-static {p1}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;)Lo/resetScroll;

    move-result-object p1

    invoke-virtual {p1}, Lo/resetScroll;->ICustomTabsCallback()V

    return-void
.end method
