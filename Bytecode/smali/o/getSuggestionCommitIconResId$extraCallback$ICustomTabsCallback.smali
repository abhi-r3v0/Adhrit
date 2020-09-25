.class final Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSuggestionCommitIconResId$extraCallback;
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
.field private synthetic onNavigationEvent:Lo/AFHelper;

.field private synthetic onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;


# direct methods
.method constructor <init>(Lo/getSuggestionCommitIconResId$extraCallback;Lo/AFHelper;)V
    .locals 0

    iput-object p1, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;

    iput-object p2, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onNavigationEvent:Lo/AFHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 70
    iget-object v0, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;

    iget-object v0, v0, Lo/getSuggestionCommitIconResId$extraCallback;->extraCallback:Lo/getSuggestionCommitIconResId;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 92
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v3, "image_load"

    .line 71
    iget-object v4, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;

    iget-object v4, v4, Lo/getSuggestionCommitIconResId$extraCallback;->ICustomTabsCallback:Lo/getHostPrefix;

    const-string v5, "request"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1150
    iget-object v4, v4, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tag"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v3, v4}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;

    iget-boolean v3, v3, Lo/getSuggestionCommitIconResId$extraCallback;->onNavigationEvent:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onNavigationEvent:Lo/AFHelper;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lo/AFHelper;->onMessageChannelReady()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 75
    :goto_0
    iget-object v5, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;

    iget-object v5, v5, Lo/getSuggestionCommitIconResId$extraCallback;->extraCallback:Lo/getSuggestionCommitIconResId;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v3, v3, v5

    iget-object v5, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onNavigationEvent:Lo/AFHelper;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lo/AFHelper;->onPostMessage()I

    move-result v4

    :cond_1
    div-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 78
    :cond_2
    iget-object v3, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onNavigationEvent:Lo/AFHelper;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lo/AFHelper;->onPostMessage()I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 79
    :goto_1
    iget-object v5, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/getSuggestionCommitIconResId$extraCallback;

    iget-object v5, v5, Lo/getSuggestionCommitIconResId$extraCallback;->extraCallback:Lo/getSuggestionCommitIconResId;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int v3, v3, v5

    iget-object v5, p0, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;->onNavigationEvent:Lo/AFHelper;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lo/AFHelper;->onMessageChannelReady()I

    move-result v4

    :cond_4
    div-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 91
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
