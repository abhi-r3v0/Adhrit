.class public final Lo/RecyclerView$OnScrollListener;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecyclerView$OnScrollListener$onMessageChannelReady;,
        Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/ErrorBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "sheetData",
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/ErrorBottomSheet$ErrorBottomSheetData;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "Companion",
        "ErrorBottomSheetData",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/RecyclerView$OnScrollListener;->onPostMessage:Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/RecyclerView$OnScrollListener;Lo/RecyclerView$OnScrollListener$onMessageChannelReady;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    return-void
.end method

.method private onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/RecyclerView$OnScrollListener;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/RecyclerView$OnScrollListener;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static final synthetic onPostMessage(Lo/RecyclerView$OnScrollListener;)Lo/RecyclerView$OnScrollListener$onMessageChannelReady;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f140105

    .line 24
    invoke-virtual {p0, p1, v0}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0030

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 6000
    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    iget-object p2, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz p2, :cond_0

    .line 1075
    iget-object p2, p2, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 35
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "view.title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    iget-object p2, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz p2, :cond_1

    .line 1076
    iget-object p2, p2, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 38
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "view.desc"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_1
    iget-object p2, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    const-string/jumbo v0, "view.retry"

    if-eqz p2, :cond_2

    .line 1077
    iget-object p2, p2, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 41
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_2
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->dismiss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "view.dismiss"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v2, Lo/RecyclerView$OnScrollListener$onPostMessage;

    invoke-direct {v2, p0}, Lo/RecyclerView$OnScrollListener$onPostMessage;-><init>(Lo/RecyclerView$OnScrollListener;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p2, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 48
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v2, Lo/RecyclerView$OnScrollListener$onNavigationEvent;

    invoke-direct {v2, p0}, Lo/RecyclerView$OnScrollListener$onNavigationEvent;-><init>(Lo/RecyclerView$OnScrollListener;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p2, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 53
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2077
    iget-object v0, v0, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 53
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->dismiss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz v0, :cond_4

    .line 2078
    iget-object v0, v0, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 54
    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->poweredByContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    const-string/jumbo v0, "view.poweredByContainer"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 2079
    iget-boolean v0, v0, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onPostMessage:Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/16 v4, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    .line 86
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->dismiss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz p2, :cond_7

    .line 3078
    iget-object p2, p2, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object p2, v2

    :goto_4
    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_9

    const/4 p2, 0x0

    goto :goto_6

    :cond_9
    const/16 p2, 0x8

    .line 88
    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz p1, :cond_a

    .line 3080
    iget-object p1, p1, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    goto :goto_7

    :cond_a
    move-object p1, v2

    :goto_7
    const-string p2, "image"

    if-eqz p1, :cond_d

    .line 60
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-direct {p0, p1}, Lo/RecyclerView$OnScrollListener;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lo/RecyclerView$OnScrollListener;->onNavigationEvent:Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    if-eqz v0, :cond_b

    .line 4080
    iget-object v2, v0, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    :cond_b
    if-nez v2, :cond_c

    .line 60
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-direct {p0, p1}, Lo/RecyclerView$OnScrollListener;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$visible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 63
    :cond_d
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-direct {p0, p1}, Lo/RecyclerView$OnScrollListener;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
