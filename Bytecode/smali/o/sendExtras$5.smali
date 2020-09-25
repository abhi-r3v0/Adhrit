.class final Lo/sendExtras$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromQueueItem$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendExtras;->onPostMessage(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroid/view/View;

.field final synthetic onNavigationEvent:Lo/sendExtras;

.field final synthetic onPostMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/sendExtras;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/sendExtras$5;->onNavigationEvent:Lo/sendExtras;

    iput-object p2, p0, Lo/sendExtras$5;->extraCallback:Landroid/view/View;

    iput-object p3, p0, Lo/sendExtras$5;->onPostMessage:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 3

    .line 158
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    .line 159
    iget-object p1, p0, Lo/sendExtras$5;->extraCallback:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lo/sendExtras$5;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 162
    iget-object v2, p0, Lo/sendExtras$5;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method
