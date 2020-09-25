.class final Lo/offsetChildrenHorizontal$asInterface;
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
        "Lo/onChildAttachedToWindow$onNavigationEvent;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelViewModel$ResultResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/offsetChildrenHorizontal;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 68
    check-cast p1, Lo/onChildAttachedToWindow$onNavigationEvent;

    .line 1089
    iget-object v0, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1091
    iget-object p1, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->primaryCta:I

    invoke-virtual {p1, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string v1, "primaryCta"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/saveOldPosition;->setEnabled(Z)V

    return-void

    :cond_0
    new-array p1, v0, [Lo/addWrite;

    const/4 v1, 0x0

    .line 1094
    iget-object v2, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    invoke-static {v2}, Lo/offsetChildrenHorizontal;->getInterfaceDescriptor(Lo/offsetChildrenHorizontal;)Ljava/lang/String;

    move-result-object v2

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "outcome"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v1

    const-string v1, "pairs"

    .line 1094
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1095
    iget-object p1, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->extraCallback(Lo/offsetChildrenHorizontal;)Lo/onChildAttachedToWindow;

    move-result-object p1

    invoke-virtual {p1}, Lo/onChildAttachedToWindow;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p1, "construct_ui_outcome_load"

    .line 1094
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1097
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {p1}, Lo/onPanelClosed;->onNavigationEvent()Lo/setActive;

    .line 1098
    iget-object p1, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->onMessageChannelReady(Lo/offsetChildrenHorizontal;)V

    .line 1099
    iget-object p1, p0, Lo/offsetChildrenHorizontal$asInterface;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget-object v0, Lo/onChildAttachedToWindow$onPostMessage$onRelationshipValidationResult;->extraCallback:Lo/onChildAttachedToWindow$onPostMessage$onRelationshipValidationResult;

    check-cast v0, Lo/onChildAttachedToWindow$onPostMessage;

    invoke-static {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(Lo/offsetChildrenHorizontal;Lo/onChildAttachedToWindow$onPostMessage;)V

    return-void
.end method
