.class public final Lo/INotificationSideChannel$Stub;
.super Landroid/view/ActionMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/INotificationSideChannel$Stub$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/INotificationSideChannel;

.field final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/INotificationSideChannel;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 50
    iput-object p1, p0, Lo/INotificationSideChannel$Stub;->onPostMessage:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->extraCallback()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->onRelationshipValidationResult()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    .line 86
    new-instance v0, Lo/subscribe;

    iget-object v1, p0, Lo/INotificationSideChannel$Stub;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v2}, Lo/INotificationSideChannel;->ICustomTabsCallback()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lo/MediaMetadataCompatApi21$Builder;

    invoke-direct {v0, v1, v2}, Lo/subscribe;-><init>(Landroid/content/Context;Lo/MediaMetadataCompatApi21$Builder;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->onMessageChannelReady()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->asBinder()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    .line 1071
    iget-object v0, v0, Lo/INotificationSideChannel;->onMessageChannelReady:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->ICustomTabsCallback$Stub()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    .line 2145
    iget-boolean v0, v0, Lo/INotificationSideChannel;->onNavigationEvent:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->onPostMessage()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0}, Lo/INotificationSideChannel;->asInterface()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0, p1}, Lo/INotificationSideChannel;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0, p1}, Lo/INotificationSideChannel;->onNavigationEvent(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0, p1}, Lo/INotificationSideChannel;->extraCallback(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    .line 2057
    iput-object p1, v0, Lo/INotificationSideChannel;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0, p1}, Lo/INotificationSideChannel;->onPostMessage(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0, p1}, Lo/INotificationSideChannel;->onPostMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    invoke-virtual {v0, p1}, Lo/INotificationSideChannel;->onMessageChannelReady(Z)V

    return-void
.end method
