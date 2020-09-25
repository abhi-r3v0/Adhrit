.class public abstract Lo/dispatchChildDetached;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J0\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H&J\r\u0010\u001d\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u001eJ\u0008\u0010\u001f\u001a\u00020\u0014H&J\u0015\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\"R\u001a\u0010\u0008\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayout;",
        "",
        "scrollOrientation",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "visibleCount",
        "",
        "perItemOffset",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;II)V",
        "mPerItemOffset",
        "getMPerItemOffset",
        "()I",
        "setMPerItemOffset",
        "(I)V",
        "mScrollOrientation",
        "getMScrollOrientation",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "mVisibleCount",
        "getMVisibleCount",
        "setMVisibleCount",
        "doLayout",
        "",
        "stackLayoutManager",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager;",
        "scrollOffset",
        "firstMovePercent",
        "",
        "itemView",
        "Landroid/view/View;",
        "position",
        "getItemOffset",
        "getItemOffset$app_release",
        "requestLayout",
        "setItemOffset",
        "offset",
        "setItemOffset$app_release",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private onMessageChannelReady:I

.field private final onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;II)V
    .locals 0

    const-string/jumbo p2, "scrollOrientation"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lo/dispatchChildDetached;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    .line 11
    iput p3, p0, Lo/dispatchChildDetached;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method protected final extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/dispatchChildDetached;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    return-object v0
.end method

.method public abstract extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager;IFLandroid/view/View;I)V
.end method

.method protected final onMessageChannelReady()I
    .locals 1

    .line 11
    iget v0, p0, Lo/dispatchChildDetached;->onMessageChannelReady:I

    return v0
.end method
