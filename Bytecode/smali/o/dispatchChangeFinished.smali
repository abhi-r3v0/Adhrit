.class public final Lo/dispatchChangeFinished;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Landroid/widget/TextView;

.field private asInterface:Lo/createFullSpanItemFromEnd;

.field final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field final onNavigationEvent:Lo/isSameListener;

.field private onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/snapFromFling;Lo/shouldBeKeptAsChild$onPostMessage;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "bottomSheetCommunicationInterface"

    invoke-static {p3, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/dispatchChangeFinished;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 16
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/dispatchChangeFinished;->extraCallback:Landroid/widget/TextView;

    .line 17
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/dispatchChangeFinished;->onMessageChannelReady:Landroid/widget/TextView;

    .line 18
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/dispatchChangeFinished;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->view_other_banks:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/dispatchChangeFinished;->asInterface:Lo/createFullSpanItemFromEnd;

    .line 22
    new-instance p1, Lo/dispatchChangeFinished$ICustomTabsCallback;

    invoke-direct {p1, p4}, Lo/dispatchChangeFinished$ICustomTabsCallback;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 22
    iput-object p2, p0, Lo/dispatchChangeFinished;->onNavigationEvent:Lo/isSameListener;

    .line 30
    iget-object p1, p0, Lo/dispatchChangeFinished;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p2, p0, Lo/dispatchChangeFinished;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/repositionToWrapContentIfNecessary;

    .line 30
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    iget-object p1, p0, Lo/dispatchChangeFinished;->onMessageChannelReady:Landroid/widget/TextView;

    const-string/jumbo p2, "submit"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/dispatchChangeFinished$3;

    invoke-direct {p2, p3}, Lo/dispatchChangeFinished$3;-><init>(Lo/shouldBeKeptAsChild$onPostMessage;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 35
    iget-object p1, p0, Lo/dispatchChangeFinished;->asInterface:Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "viewOtherBank"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/dispatchChangeFinished$5;

    invoke-direct {p2, p3}, Lo/dispatchChangeFinished$5;-><init>(Lo/shouldBeKeptAsChild$onPostMessage;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3010
    iget-object v0, p0, Lo/dispatchChangeFinished;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 2056
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
