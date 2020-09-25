.class final Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub;
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/findContainingItemView$onMessageChannelReady;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$OpenInadequateCurrencyDialog;",
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
.field private synthetic onMessageChannelReady:Lo/offsetChildrenHorizontal;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 1110
    iget-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1111
    iget-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->primaryCta:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string v0, "primaryCta"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/saveOldPosition;->setEnabled(Z)V

    .line 1112
    iget-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget-object v0, Lo/onChildAttachedToWindow$onPostMessage$onPostMessage;->extraCallback:Lo/onChildAttachedToWindow$onPostMessage$onPostMessage;

    check-cast v0, Lo/onChildAttachedToWindow$onPostMessage;

    invoke-static {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(Lo/offsetChildrenHorizontal;Lo/onChildAttachedToWindow$onPostMessage;)V

    return-void
.end method
