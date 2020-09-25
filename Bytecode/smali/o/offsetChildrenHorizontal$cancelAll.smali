.class final Lo/offsetChildrenHorizontal$cancelAll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetChildrenHorizontal;-><init>()V
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
        "Lo/onChildAttachedToWindow$ICustomTabsCallback;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelViewModel$UiResponse;",
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
.field private synthetic onPostMessage:Lo/offsetChildrenHorizontal;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 68
    check-cast p1, Lo/onChildAttachedToWindow$ICustomTabsCallback;

    .line 1080
    iget-object v0, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1081
    iget-object v0, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->primaryCta:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    const-string v1, "primaryCta"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/saveOldPosition;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 1082
    iget-object p1, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget-object v0, Lo/onChildAttachedToWindow$onPostMessage$onNavigationEvent;->onNavigationEvent:Lo/onChildAttachedToWindow$onPostMessage$onNavigationEvent;

    check-cast v0, Lo/onChildAttachedToWindow$onPostMessage;

    invoke-static {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(Lo/offsetChildrenHorizontal;Lo/onChildAttachedToWindow$onPostMessage;)V

    .line 1083
    :cond_0
    iget-object p1, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->extraCallback(Lo/offsetChildrenHorizontal;)Lo/onChildAttachedToWindow;

    move-result-object p1

    invoke-virtual {p1}, Lo/onChildAttachedToWindow;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    const-string v0, "construct_ui_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1084
    iget-object p1, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget-object v0, Lo/onChildAttachedToWindow$onPostMessage$asInterface;->onNavigationEvent:Lo/onChildAttachedToWindow$onPostMessage$asInterface;

    check-cast v0, Lo/onChildAttachedToWindow$onPostMessage;

    invoke-static {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(Lo/offsetChildrenHorizontal;Lo/onChildAttachedToWindow$onPostMessage;)V

    .line 1085
    iget-object p1, p0, Lo/offsetChildrenHorizontal$cancelAll;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->newSession(Lo/offsetChildrenHorizontal;)V

    return-void
.end method
