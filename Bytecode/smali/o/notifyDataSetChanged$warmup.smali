.class final Lo/notifyDataSetChanged$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
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
        "Landroid/view/WindowInsets;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "insets",
        "Landroid/view/WindowInsets;",
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
.field private synthetic onMessageChannelReady:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$warmup;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 78
    check-cast p1, Landroid/view/WindowInsets;

    if-eqz p1, :cond_0

    .line 1182
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1183
    :goto_0
    iget-object v0, p0, Lo/notifyDataSetChanged$warmup;->onMessageChannelReady:Lo/notifyDataSetChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomBar:I

    invoke-virtual {v0, v1}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setFrom;

    .line 1184
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 1185
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1186
    sget-object v2, Lo/notifyDataSetChanged;->onPostMessage:Lo/notifyDataSetChanged$ICustomTabsCallback;

    .line 2427
    invoke-static {}, Lo/notifyDataSetChanged;->onMessageChannelReady()I

    move-result v2

    add-int/2addr v2, p1

    .line 1186
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1185
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    iget-object v0, p0, Lo/notifyDataSetChanged$warmup;->onMessageChannelReady:Lo/notifyDataSetChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->messageSnackBar:I

    invoke-virtual {v0, v1}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/appendViewToAllSpans;

    .line 1190
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 1191
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1192
    sget-object v2, Lo/notifyDataSetChanged;->onPostMessage:Lo/notifyDataSetChanged$ICustomTabsCallback;

    .line 3427
    invoke-static {}, Lo/notifyDataSetChanged;->onMessageChannelReady()I

    move-result v2

    add-int/2addr v2, p1

    .line 1192
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1191
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    iget-object v0, p0, Lo/notifyDataSetChanged$warmup;->onMessageChannelReady:Lo/notifyDataSetChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->menuGroup:I

    invoke-virtual {v0, v1}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "menuGroup"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 1456
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v1, :cond_2

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 1457
    move-object v3, v1

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    .line 1196
    sget-object v4, Lo/notifyDataSetChanged;->onPostMessage:Lo/notifyDataSetChanged$ICustomTabsCallback;

    .line 4427
    invoke-static {}, Lo/notifyDataSetChanged;->onMessageChannelReady()I

    move-result v4

    add-int/2addr v4, p1

    .line 1196
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1458
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    iget-object v0, p0, Lo/notifyDataSetChanged$warmup;->onMessageChannelReady:Lo/notifyDataSetChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->menuList:I

    invoke-virtual {v0, v1}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "menuList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 1460
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 1461
    move-object v2, v1

    check-cast v2, Lo/onChildrenLoaded$onPostMessage;

    .line 1199
    sget-object v3, Lo/notifyDataSetChanged;->onPostMessage:Lo/notifyDataSetChanged$ICustomTabsCallback;

    .line 5427
    invoke-static {}, Lo/notifyDataSetChanged;->onMessageChannelReady()I

    move-result v3

    add-int/2addr v3, p1

    .line 6021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v4, "Resources.getSystem()"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    .line 6022
    invoke-static {v4, v5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v3, p1

    .line 1199
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1462
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1460
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1456
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
