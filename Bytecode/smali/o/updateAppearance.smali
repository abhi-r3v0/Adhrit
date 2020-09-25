.class final Lo/updateAppearance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onAttachedToWindow;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lo/setOnDismissListener;
    .locals 1

    .line 14
    new-instance v0, Lo/setInitialActivityCount;

    invoke-direct {v0, p1}, Lo/setInitialActivityCount;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/setTextSize;
    .locals 1

    .line 24
    new-instance v0, Lo/sendRepeatMode;

    invoke-direct {v0}, Lo/sendRepeatMode;-><init>()V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/sort;
    .locals 1

    .line 19
    new-instance v0, Lo/getController;

    invoke-direct {v0}, Lo/getController;-><init>()V

    return-object v0
.end method
