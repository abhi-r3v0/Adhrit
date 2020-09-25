.class public final Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
.super Lo/asBinder;
.source ""

# interfaces
.implements Lo/RecyclerView$LayoutParams$onMessageChannelReady;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0008\u0010\u0017\u001a\u00020\u0014H\u0014J\u0008\u0010\u0018\u001a\u00020\u0014H\u0014J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0006H\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0008\u0010\u001d\u001a\u00020\u0014H\u0002J\u001c\u0010\u001e\u001a\u00020\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/snake/SnakeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/dreamplug/fabrik/ui/snake/engine/RetroSnakeEngine$OnScoreUpdateListener;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "()V",
        "eventHighScore",
        "",
        "eventId",
        "",
        "fromReward",
        "",
        "retroSnakeEngine",
        "Lcom/dreamplug/fabrik/ui/snake/engine/RetroSnakeEngine;",
        "sharedPref",
        "Landroid/content/SharedPreferences;",
        "getSharedPref",
        "()Landroid/content/SharedPreferences;",
        "sharedPref$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "onScoreUpdated",
        "updatedScore",
        "setEventHighScore",
        "score",
        "setupGame",
        "uncaughtException",
        "t",
        "Ljava/lang/Thread;",
        "e",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/RecyclerView$LayoutParams;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/isSameListener;

.field private onTransact:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    .line 31
    new-instance v0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onTransact;

    invoke-direct {v0, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onTransact;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    iput-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)I
    .locals 0

    .line 25
    iget p0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent:I

    return p0
.end method

.method public static final synthetic extraCallback(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 7

    .line 2074
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {p0, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "gameFrame"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2101
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->viewLeft:I

    invoke-virtual {p0, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onMessageChannelReady;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->viewRight:I

    invoke-virtual {p0, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$asInterface;

    invoke-direct {v1, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$asInterface;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2107
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->score:I

    invoke-virtual {p0, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "score"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2108
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "hiScore"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 2109
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SNAKE_GAME_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent:I

    .line 2110
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->hiScore:I

    invoke-virtual {p0, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1301ad

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2112
    :cond_0
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->hiScore:I

    invoke-virtual {p0, v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f130284

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v4, Lo/setTrackTintMode;->disconnect:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x29

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;Lo/RecyclerView$LayoutParams;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->ICustomTabsCallback:Lo/RecyclerView$LayoutParams;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->ICustomTabsCallback:Lo/RecyclerView$LayoutParams;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;I)V
    .locals 3

    .line 4134
    iput p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent:I

    .line 5000
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 4135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SNAKE_GAME_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onTransact:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onTransact:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onTransact:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onTransact:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SnakeActivity"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f0e0023

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060209

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onMessageChannelReady:Z

    .line 47
    :cond_0
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {p0, p1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    new-instance v0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onPostMessage;

    invoke-direct {v0, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onPostMessage;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p1, v0}, Lo/onChildrenLoaded;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 57
    iget-boolean p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onMessageChannelReady:Z

    if-nez p1, :cond_1

    .line 58
    sget-object p1, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onNavigationEvent;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 148
    invoke-super {p0}, Lo/asBinder;->onPause()V

    .line 149
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->ICustomTabsCallback:Lo/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "snake_game_duration"

    .line 1191
    invoke-static {v1}, Lo/getTrackTintMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1192
    iput-boolean v1, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback:Z

    .line 1194
    :try_start_0
    iget-object v0, v0, Lo/RecyclerView$LayoutParams;->onMessageChannelReady:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 117
    new-instance v0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;-><init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;I)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 142
    invoke-super {p0}, Lo/asBinder;->onResume()V

    .line 143
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->ICustomTabsCallback:Lo/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/RecyclerView$LayoutParams;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .line 153
    sget-object v0, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const-string/jumbo v1, "something went wrong."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static/range {v0 .. v6}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
