.class final Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult$2;->onMessageChannelReady:Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 112
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult$2;->onMessageChannelReady:Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;

    iget-object v0, v0, Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;->onNavigationEvent:Lo/PopupMenu$OnMenuItemClickListener;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->swipeProceed:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getSuggestionRowLayout;

    const/4 v1, 0x1

    .line 1104
    iput-boolean v1, v0, Lo/getSuggestionRowLayout;->onNavigationEvent:Z

    .line 1105
    iget-object v1, v0, Lo/getSuggestionRowLayout;->onMessageChannelReady:Lo/rate;

    iget-object v2, v0, Lo/getSuggestionRowLayout;->extraCallback:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    .line 1106
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void
.end method
