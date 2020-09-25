.class final Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrollStateChanged;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;",
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
.field private synthetic extraCallback:Lo/dispatchOnScrollStateChanged;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 68
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTicketResponse;

    .line 1098
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-nez p1, :cond_0

    .line 1099
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget-object v0, Lo/findNestedRecyclerView$extraCallback$ICustomTabsCallback;->ICustomTabsCallback:Lo/findNestedRecyclerView$extraCallback$ICustomTabsCallback;

    check-cast v0, Lo/findNestedRecyclerView$extraCallback;

    invoke-static {p1, v0}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;Lo/findNestedRecyclerView$extraCallback;)V

    .line 1100
    :cond_0
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lo/findNestedRecyclerView;->asInterface()Ljava/util/Map;

    move-result-object p1

    const-string v0, "construct_ui_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1101
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->extraCallback(Lo/dispatchOnScrollStateChanged;)V

    .line 1102
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->ICustomTabsService(Lo/dispatchOnScrollStateChanged;)V

    .line 1103
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$INotificationSideChannel$Stub$Proxy;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->warmup(Lo/dispatchOnScrollStateChanged;)V

    return-void
.end method
