.class final Lo/getComponents$onNavigationEvent;
.super Lo/seekTo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getComponents;


# direct methods
.method constructor <init>(Lo/getComponents;Lo/getComponents;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 974
    invoke-direct {p0, p2}, Lo/seekTo;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(FF)I
    .locals 1

    .line 979
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 2126
    invoke-virtual {v0}, Lo/getComponents;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 3126
    invoke-virtual {v0}, Lo/getComponents;->ICustomTabsCallback()Landroid/graphics/RectF;

    move-result-object v0

    .line 979
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ICustomTabsCallback(Lo/getPlaybackState;)V
    .locals 4

    .line 1027
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 7735
    iget-object v1, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 7866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1027
    :goto_0
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->onMessageChannelReady(Z)V

    .line 1028
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lo/getPlaybackState;->onTransact(Z)V

    .line 1029
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 8735
    iget-object v1, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 8866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 1029
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "android.view.View"

    .line 1035
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1030
    :cond_3
    :goto_2
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 9735
    iget-object v1, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 9866
    iget-boolean v0, v0, Lo/FirebaseAnalytics;->ICustomTabsService:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    const-string v0, "android.widget.CompoundButton"

    goto :goto_4

    :cond_5
    const-string v0, "android.widget.Button"

    .line 1030
    :goto_4
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    .line 1037
    :goto_5
    iget-object v0, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1038
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    .line 1039
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->extraCallback(Ljava/lang/CharSequence;)V

    return-void

    .line 1043
    :cond_6
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMessageChannelReady(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 995
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 5126
    iput-boolean p2, p1, Lo/getComponents;->onMessageChannelReady:Z

    .line 996
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 986
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 4126
    invoke-virtual {v1}, Lo/getComponents;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 4557
    iget-object v2, v1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v1, v1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 4725
    iget-boolean v1, v1, Lo/FirebaseAnalytics;->onTransact:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 988
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(II)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    .line 1052
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1054
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {p1}, Lo/getComponents;->onPostMessage()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(ILo/getPlaybackState;)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1004
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 5725
    iget-object v2, p1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 5862
    iget-object p1, p1, Lo/FirebaseAnalytics;->newSession:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1006
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1008
    :cond_1
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1009
    iget-object v2, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 1010
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lo/toStringMap$onTransact;->mtrl_chip_close_icon_content_description:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1013
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v0, p1

    :cond_2
    aput-object v0, v1, v4

    .line 1011
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1014
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    .line 1016
    :goto_1
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    .line 6126
    invoke-virtual {p1}, Lo/getComponents;->onMessageChannelReady()Landroid/graphics/Rect;

    move-result-object p1

    .line 1016
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onPostMessage(Landroid/graphics/Rect;)V

    .line 1017
    sget-object p1, Lo/getPlaybackState$extraCallback;->onPostMessage:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->ICustomTabsCallback(Lo/getPlaybackState$extraCallback;)V

    .line 1018
    iget-object p1, p0, Lo/getComponents$onNavigationEvent;->onNavigationEvent:Lo/getComponents;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->asInterface(Z)V

    return-void

    .line 1020
    :cond_3
    invoke-virtual {p2, v0}, Lo/getPlaybackState;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    .line 7126
    sget-object p1, Lo/getComponents;->onPostMessage:Landroid/graphics/Rect;

    .line 1021
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onPostMessage(Landroid/graphics/Rect;)V

    return-void
.end method
