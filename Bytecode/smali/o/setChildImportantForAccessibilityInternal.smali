.class public abstract Lo/setChildImportantForAccessibilityInternal;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005H&J\u0015\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0017R\u0014\u0010\u0007\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackAnimation;",
        "",
        "scrollOrientation",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "visibleCount",
        "",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;I)V",
        "mScrollOrientation",
        "getMScrollOrientation",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "mVisibleCount",
        "getMVisibleCount",
        "()I",
        "setMVisibleCount",
        "(I)V",
        "doAnimation",
        "",
        "firstMovePercent",
        "",
        "itemView",
        "Landroid/view/View;",
        "position",
        "setVisibleCount",
        "setVisibleCount$app_release",
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
.field private final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;I)V
    .locals 1

    const-string/jumbo v0, "scrollOrientation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lo/setChildImportantForAccessibilityInternal;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    .line 8
    iput p2, p0, Lo/setChildImportantForAccessibilityInternal;->onPostMessage:I

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()I
    .locals 1

    .line 8
    iget v0, p0, Lo/setChildImportantForAccessibilityInternal;->onPostMessage:I

    return v0
.end method

.method public abstract onMessageChannelReady(FLandroid/view/View;I)V
.end method

.method protected final onPostMessage()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/setChildImportantForAccessibilityInternal;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    return-object v0
.end method
