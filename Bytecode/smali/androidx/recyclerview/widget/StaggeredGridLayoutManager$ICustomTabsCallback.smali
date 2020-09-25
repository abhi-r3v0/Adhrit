.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:[I

.field final synthetic asInterface:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field extraCallback:Z

.field onMessageChannelReady:Z

.field onNavigationEvent:I

.field onPostMessage:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 3267
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->asInterface:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3268
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->onMessageChannelReady()V

    return-void
.end method


# virtual methods
.method final extraCallback()V
    .locals 1

    .line 3294
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->extraCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->asInterface:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->asInterface:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 3295
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method final onMessageChannelReady()V
    .locals 2

    const/4 v0, -0x1

    .line 3272
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->ICustomTabsCallback:I

    const/high16 v1, -0x80000000

    .line 3273
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v1, 0x0

    .line 3274
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->extraCallback:Z

    .line 3275
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 3276
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->onPostMessage:Z

    .line 3277
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ICustomTabsCallback;->ICustomTabsCallback$Stub:[I

    if-eqz v1, :cond_0

    .line 3278
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
