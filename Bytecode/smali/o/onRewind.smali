.class public Lo/onRewind;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onRewind$onNavigationEvent;,
        Lo/onRewind$onPostMessage;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/onRewind$onPostMessage;

.field public final extraCallback:Lo/onRewind$onNavigationEvent;

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onRewind$onNavigationEvent;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    .line 50
    new-instance p1, Lo/onRewind$onPostMessage;

    invoke-direct {p1}, Lo/onRewind$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onRewind;->onPostMessage:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extraCallback(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 117
    :cond_0
    iget-object v1, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v1}, Lo/onRewind$onNavigationEvent;->onNavigationEvent()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 120
    iget-object v3, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v3, v2}, Lo/onRewind$onPostMessage;->onMessageChannelReady(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    .line 123
    :goto_1
    iget-object p1, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {p1, v2}, Lo/onRewind$onPostMessage;->extraCallback(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final onNavigationEvent(Landroid/view/View;)I
    .locals 2

    .line 297
    iget-object v0, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/onRewind$onNavigationEvent;->onNavigationEvent(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 301
    :cond_0
    iget-object v1, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v1, p1}, Lo/onRewind$onPostMessage;->extraCallback(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 309
    :cond_1
    iget-object v0, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v0, p1}, Lo/onRewind$onPostMessage;->onMessageChannelReady(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 282
    invoke-virtual {p0, p1}, Lo/onRewind;->extraCallback(I)I

    move-result p1

    .line 283
    iget-object v0, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v0, p1}, Lo/onRewind$onPostMessage;->onNavigationEvent(I)Z

    .line 284
    iget-object v0, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/onRewind$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    .line 231
    iget-object p2, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {p2}, Lo/onRewind$onNavigationEvent;->onNavigationEvent()I

    move-result p2

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0, p2}, Lo/onRewind;->extraCallback(I)I

    move-result p2

    .line 235
    :goto_0
    iget-object v0, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v0, p2, p4}, Lo/onRewind$onPostMessage;->onNavigationEvent(IZ)V

    if-eqz p4, :cond_1

    .line 2060
    iget-object p4, p0, Lo/onRewind;->onPostMessage:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    iget-object p4, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {p4, p1}, Lo/onRewind$onNavigationEvent;->extraCallback(Landroid/view/View;)V

    .line 239
    :cond_1
    iget-object p4, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {p4, p1, p2, p3}, Lo/onRewind$onNavigationEvent;->ICustomTabsCallback(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    .line 99
    iget-object p2, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {p2}, Lo/onRewind$onNavigationEvent;->onNavigationEvent()I

    move-result p2

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lo/onRewind;->extraCallback(I)I

    move-result p2

    .line 103
    :goto_0
    iget-object v0, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v0, p2, p3}, Lo/onRewind$onPostMessage;->onNavigationEvent(IZ)V

    if-eqz p3, :cond_1

    .line 1060
    iget-object p3, p0, Lo/onRewind;->onPostMessage:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object p3, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {p3, p1}, Lo/onRewind$onNavigationEvent;->extraCallback(Landroid/view/View;)V

    .line 107
    :cond_1
    iget-object p3, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {p3, p1, p2}, Lo/onRewind$onNavigationEvent;->onMessageChannelReady(Landroid/view/View;I)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lo/onRewind;->extraCallback(I)I

    move-result p1

    .line 161
    iget-object v0, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/onRewind$onNavigationEvent;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v1, p1}, Lo/onRewind$onPostMessage;->onNavigationEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    iget-object v1, p0, Lo/onRewind;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    iget-object v1, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v1, v0}, Lo/onRewind$onNavigationEvent;->onPostMessage(Landroid/view/View;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/onRewind$onNavigationEvent;->extraCallback(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/onRewind;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onRewind;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
