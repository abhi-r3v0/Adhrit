.class Landroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

.field final onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    .line 133
    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method final onPostMessage(IIII)Landroid/view/View;
    .locals 8

    .line 213
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onMessageChannelReady()I

    move-result v0

    .line 214
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onNavigationEvent()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 218
    iget-object v4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    .line 219
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->extraCallback(Landroid/view/View;)I

    move-result v5

    .line 220
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onNavigationEvent(Landroid/view/View;)I

    move-result v6

    .line 221
    iget-object v7, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    .line 1141
    iput v0, v7, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady:I

    .line 1142
    iput v1, v7, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 1143
    iput v5, v7, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->extraCallback:I

    .line 1144
    iput v6, v7, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    .line 223
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    .line 1152
    iput v5, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    .line 224
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    .line 2148
    iget v7, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    or-int/2addr v7, p3

    iput v7, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    .line 225
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    .line 231
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    .line 2152
    iput v5, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    .line 232
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    .line 3148
    iget v6, v5, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    or-int/2addr v6, p4

    iput v6, v5, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    .line 233
    iget-object v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method final onPostMessage(Landroid/view/View;)Z
    .locals 5

    .line 248
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onMessageChannelReady()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onNavigationEvent()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    .line 249
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->extraCallback(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onPostMessage:Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$extraCallback;->onNavigationEvent(Landroid/view/View;)I

    move-result p1

    .line 4141
    iput v1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady:I

    .line 4142
    iput v2, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 4143
    iput v3, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->extraCallback:I

    .line 4144
    iput p1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onNavigationEvent:I

    .line 251
    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    const/4 v0, 0x0

    .line 4152
    iput v0, p1, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    .line 252
    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    .line 5148
    iget v0, p1, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    or-int/lit16 v0, v0, 0x6003

    iput v0, p1, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onPostMessage:I

    .line 253
    iget-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->onMessageChannelReady:Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result p1

    return p1
.end method
