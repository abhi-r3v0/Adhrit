.class final Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    iput p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->onMessageChannelReady:I

    .line 64
    iput p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->ICustomTabsCallback:I

    .line 65
    iput p4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->onPostMessage:I

    .line 66
    iput p5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method
