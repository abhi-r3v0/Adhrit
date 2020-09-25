.class public final Lo/cancel;
.super Lo/INotificationSideChannel;
.source ""

# interfaces
.implements Lo/AudioAttributesImplBaseParcelizer$extraCallback;


# instance fields
.field private ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

.field private asInterface:Lo/AudioAttributesImplBaseParcelizer;

.field private extraCallback:Lo/INotificationSideChannel$ICustomTabsCallback;

.field private onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lo/INotificationSideChannel$ICustomTabsCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/INotificationSideChannel;-><init>()V

    .line 52
    iput-object p1, p0, Lo/cancel;->onPostMessage:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    .line 54
    iput-object p3, p0, Lo/cancel;->extraCallback:Lo/INotificationSideChannel$ICustomTabsCallback;

    .line 56
    new-instance p1, Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/AudioAttributesImplBaseParcelizer;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1239
    iput p2, p1, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult:I

    .line 56
    iput-object p1, p0, Lo/cancel;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    .line 58
    invoke-virtual {p1, p0}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/view/Menu;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/cancel;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lo/cancel;->onTransact:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lo/cancel;->onTransact:Z

    .line 111
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 112
    iget-object v0, p0, Lo/cancel;->extraCallback:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {v0, p0}, Lo/INotificationSideChannel$ICustomTabsCallback;->ICustomTabsCallback(Lo/INotificationSideChannel;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/CharSequence;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 1

    .line 2101
    iget-object p1, p0, Lo/cancel;->extraCallback:Lo/INotificationSideChannel$ICustomTabsCallback;

    iget-object v0, p0, Lo/cancel;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    invoke-interface {p1, p0, v0}, Lo/INotificationSideChannel$ICustomTabsCallback;->onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z

    .line 163
    iget-object p1, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public final onMessageChannelReady()Landroid/view/MenuInflater;
    .locals 2

    .line 137
    new-instance v0, Lo/setDefaultImpl;

    iget-object v1, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setDefaultImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/cancel;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lo/INotificationSideChannel;->onMessageChannelReady(Z)V

    .line 85
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 0

    .line 142
    iget-object p1, p0, Lo/cancel;->extraCallback:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {p1, p0, p2}, Lo/INotificationSideChannel$ICustomTabsCallback;->extraCallback(Lo/INotificationSideChannel;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/cancel;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2069
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/cancel;->extraCallback:Lo/INotificationSideChannel$ICustomTabsCallback;

    iget-object v1, p0, Lo/cancel;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    invoke-interface {v0, p0, v1}, Lo/INotificationSideChannel$ICustomTabsCallback;->onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/cancel;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2064
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/cancel;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onRelationshipValidationResult()Landroid/view/View;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/cancel;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
