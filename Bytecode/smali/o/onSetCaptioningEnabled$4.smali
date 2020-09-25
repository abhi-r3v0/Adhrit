.class final Lo/onSetCaptioningEnabled$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSetCaptioningEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/onSetCaptioningEnabled$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 190
    check-cast p1, Lo/onSetCaptioningEnabled$onNavigationEvent;

    check-cast p2, Lo/onSetCaptioningEnabled$onNavigationEvent;

    .line 1194
    iget-object v0, p1, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    .line 1195
    iget-object p1, p1, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v4

    .line 1199
    :cond_3
    iget-boolean v0, p1, Lo/onSetCaptioningEnabled$onNavigationEvent;->onNavigationEvent:Z

    iget-boolean v3, p2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onNavigationEvent:Z

    if-eq v0, v3, :cond_5

    .line 1200
    iget-boolean p1, p1, Lo/onSetCaptioningEnabled$onNavigationEvent;->onNavigationEvent:Z

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v2

    .line 1204
    :cond_5
    iget v0, p2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onMessageChannelReady:I

    iget v2, p1, Lo/onSetCaptioningEnabled$onNavigationEvent;->onMessageChannelReady:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v0

    .line 1208
    :cond_6
    iget p1, p1, Lo/onSetCaptioningEnabled$onNavigationEvent;->ICustomTabsCallback:I

    iget p2, p2, Lo/onSetCaptioningEnabled$onNavigationEvent;->ICustomTabsCallback:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    return p1

    :cond_7
    return v1
.end method
