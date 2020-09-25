.class public final Lo/onPlayFromSearch;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source ""


# instance fields
.field final ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

.field final onMessageChannelReady:Lo/onSessionDestroyed;

.field final onNavigationEvent:Lo/onSessionDestroyed;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 39
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Lo/onSessionDestroyed;

    move-result-object v0

    iput-object v0, p0, Lo/onPlayFromSearch;->onNavigationEvent:Lo/onSessionDestroyed;

    .line 51
    new-instance v0, Lo/onPlayFromSearch$4;

    invoke-direct {v0, p0}, Lo/onPlayFromSearch$4;-><init>(Lo/onPlayFromSearch;)V

    iput-object v0, p0, Lo/onPlayFromSearch;->onMessageChannelReady:Lo/onSessionDestroyed;

    .line 43
    iput-object p1, p0, Lo/onPlayFromSearch;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final getItemDelegate()Lo/onSessionDestroyed;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/onPlayFromSearch;->onMessageChannelReady:Lo/onSessionDestroyed;

    return-object v0
.end method
