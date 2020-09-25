.class final Lo/FragmentContainerView$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/TintContextWrapper;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/androidapp/databinding/LayoutBankListUnbilledItemBinding;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/FragmentContainerView;

.field private synthetic onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/FragmentContainerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/FragmentContainerView$onMessageChannelReady;->ICustomTabsCallback:Lo/FragmentContainerView;

    iput-object p2, p0, Lo/FragmentContainerView$onMessageChannelReady;->onPostMessage:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1026
    iget-object v0, p0, Lo/FragmentContainerView$onMessageChannelReady;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lo/FragmentContainerView$onMessageChannelReady;->ICustomTabsCallback:Lo/FragmentContainerView;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0e01bf

    const/4 v3, 0x0

    .line 1058
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0075

    .line 1071
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_3

    const v1, 0x7f0b0170

    .line 1076
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lo/flagRemovedAndOffsetPosition;

    if-eqz v5, :cond_2

    const v1, 0x7f0b0178

    .line 1081
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lo/flagRemovedAndOffsetPosition;

    if-eqz v6, :cond_1

    const v1, 0x7f0b017b

    .line 1086
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lo/flagRemovedAndOffsetPosition;

    if-eqz v7, :cond_0

    .line 1091
    new-instance v1, Lo/TintContextWrapper;

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/TintContextWrapper;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Lo/flagRemovedAndOffsetPosition;Lo/flagRemovedAndOffsetPosition;Lo/flagRemovedAndOffsetPosition;)V

    return-object v1

    :cond_0
    const-string v0, "cardTwoIcon"

    goto :goto_0

    :cond_1
    const-string v0, "cardThreeIcon"

    goto :goto_0

    :cond_2
    const-string v0, "cardOneIcon"

    goto :goto_0

    :cond_3
    const-string v0, "allCardsCount"

    .line 1094
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
