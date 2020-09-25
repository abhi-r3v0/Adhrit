.class Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:J

.field final extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:J

.field onNavigationEvent:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$onPostMessage;->extraCallback:Ljava/util/ArrayList;

    const/4 v0, 0x5

    .line 5654
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$onPostMessage;->onNavigationEvent:I

    const-wide/16 v0, 0x0

    .line 5655
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$onPostMessage;->onMessageChannelReady:J

    .line 5656
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$onPostMessage;->ICustomTabsCallback:J

    return-void
.end method
