.class final Lo/getCollapseIcon$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCollapseIcon;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onQueryTextChange;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/datadog/android/log/Logger;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>(Lo/getCollapseIcon;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 12

    .line 1024
    new-instance v0, Lo/onQueryTextChange$ICustomTabsCallback;

    invoke-direct {v0}, Lo/onQueryTextChange$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x1

    .line 1220
    iput-boolean v1, v0, Lo/onQueryTextChange$ICustomTabsCallback;->onMessageChannelReady:Z

    const-string v2, "com.dreamplug.androidapp"

    const-string/jumbo v3, "serviceName"

    .line 1026
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    iput-object v2, v0, Lo/onQueryTextChange$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 2238
    iput-boolean v1, v0, Lo/onQueryTextChange$ICustomTabsCallback;->extraCallback:Z

    .line 2258
    iput-boolean v1, v0, Lo/onQueryTextChange$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 3196
    iget-boolean v1, v0, Lo/onQueryTextChange$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v1, :cond_2

    .line 3280
    sget-object v1, Lo/SearchView$OnQueryTextListener;->asInterface:Lo/SearchView$OnQueryTextListener;

    invoke-static {}, Lo/SearchView$OnQueryTextListener;->onPostMessage()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3281
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    const/4 v1, 0x6

    const-string v3, "Datadog has not been initialized.\nPlease add the following code in your application\'s onCreate() method:\nDatadog.initialize(context, \"<CLIENT_TOKEN>\");"

    invoke-static {v0, v3, v2, v2, v1}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    goto :goto_0

    .line 3284
    :cond_0
    iget-boolean v1, v0, Lo/onQueryTextChange$ICustomTabsCallback;->extraCallback:Z

    if-eqz v1, :cond_1

    .line 3285
    sget-object v1, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->onPostMessage()Lo/onActionViewExpanded;

    move-result-object v2

    :cond_1
    move-object v7, v2

    .line 3289
    new-instance v1, Lo/enoughToFilter;

    .line 3290
    sget-object v2, Lo/SearchView$OnQueryTextListener;->asInterface:Lo/SearchView$OnQueryTextListener;

    invoke-static {}, Lo/SearchView$OnQueryTextListener;->onMessageChannelReady()Lo/updateSearchAutoComplete;

    move-result-object v2

    invoke-interface {v2}, Lo/updateSearchAutoComplete;->onPostMessage()Lo/getPreferredWidth;

    move-result-object v6

    .line 3291
    iget-object v4, v0, Lo/onQueryTextChange$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 3292
    iget-object v5, v0, Lo/onQueryTextChange$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 3294
    sget-object v2, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->ICustomTabsCallback()Lo/SearchView$OnCloseListener;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/SearchView$OnCloseListener;

    .line 3295
    sget-object v2, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->onMessageChannelReady()Lo/showSoftInputIfNecessary;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/showSoftInputIfNecessary;

    .line 3296
    iget-boolean v10, v0, Lo/onQueryTextChange$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 3297
    new-instance v2, Lo/onItemClicked;

    iget v0, v0, Lo/onQueryTextChange$ICustomTabsCallback;->onTransact:F

    invoke-direct {v2, v0}, Lo/onItemClicked;-><init>(F)V

    move-object v11, v2

    check-cast v11, Lo/onActionViewCollapsed;

    move-object v3, v1

    .line 3289
    invoke-direct/range {v3 .. v11}, Lo/enoughToFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/getPreferredWidth;Lo/onActionViewExpanded;Lo/SearchView$OnCloseListener;Lo/showSoftInputIfNecessary;ZLo/onActionViewCollapsed;)V

    check-cast v1, Lo/getSearchViewTextMinWidthDp;

    goto :goto_1

    .line 3199
    :cond_2
    :goto_0
    sget-object v0, Lo/ensureImeVisible;->extraCallback:Lo/ensureImeVisible;

    move-object v1, v0

    check-cast v1, Lo/getSearchViewTextMinWidthDp;

    .line 3202
    :goto_1
    new-instance v0, Lo/onQueryTextChange;

    invoke-direct {v0, v1}, Lo/onQueryTextChange;-><init>(Lo/getSearchViewTextMinWidthDp;)V

    .line 1030
    invoke-static {v0}, Lo/getCollapseIcon;->onNavigationEvent(Lo/onQueryTextChange;)V

    return-object v0
.end method
