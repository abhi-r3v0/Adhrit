.class final Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()Z
    .locals 7

    .line 166
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 167
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->extraCallback:I

    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady:I

    if-le v1, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v6, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    and-int/2addr v0, v1

    if-nez v0, :cond_2

    return v2

    .line 172
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_5

    .line 173
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->extraCallback:I

    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->ICustomTabsCallback:I

    if-le v1, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    :goto_1
    shl-int/2addr v1, v4

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    return v2

    .line 178
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_8

    .line 179
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onNavigationEvent:I

    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady:I

    if-le v1, v6, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    if-ne v1, v6, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    :goto_2
    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    return v2

    .line 184
    :cond_8
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_b

    .line 185
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onNavigationEvent:I

    iget v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->ICustomTabsCallback:I

    if-le v1, v6, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    if-ne v1, v6, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x4

    :goto_3
    shl-int/lit8 v1, v3, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    return v2

    :cond_b
    return v5
.end method
