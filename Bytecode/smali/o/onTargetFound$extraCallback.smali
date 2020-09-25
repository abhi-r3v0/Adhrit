.class final Lo/onTargetFound$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onTargetFound;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onViewStateRestored$onNavigationEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView$EmptyScreenData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onTargetFound;


# direct methods
.method constructor <init>(Lo/onTargetFound;)V
    .locals 0

    iput-object p1, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 44
    check-cast p1, Lo/onViewStateRestored$onNavigationEvent;

    const/4 v0, 0x0

    const-string v1, "$this$visible"

    const-string v2, "recyclerView"

    const/16 v3, 0x8

    const-string v4, "$this$gone"

    const-string v5, "emptyCardLayout"

    if-eqz p1, :cond_0

    .line 1185
    iget-object v6, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {v6, v7}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/onViewStateRestored;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v0, v1}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {v0, v1}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onViewStateRestored;

    invoke-virtual {v0, p1}, Lo/onViewStateRestored;->setData(Lo/onViewStateRestored$onNavigationEvent;)V

    .line 1188
    iget-object p1, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {p1, v0}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onViewStateRestored;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/onViewStateRestored;->setUiTheme(Z)V

    return-void

    .line 1190
    :cond_0
    iget-object p1, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {p1, v6}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onViewStateRestored;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object p1, p0, Lo/onTargetFound$extraCallback;->extraCallback:Lo/onTargetFound;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, v3}, Lo/onTargetFound;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
