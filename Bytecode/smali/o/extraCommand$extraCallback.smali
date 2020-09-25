.class public final Lo/extraCommand$extraCallback;
.super Lo/INotificationSideChannel;
.source ""

# interfaces
.implements Lo/AudioAttributesImplBaseParcelizer$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

.field private asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

.field private final extraCallback:Landroid/content/Context;

.field final synthetic onPostMessage:Lo/extraCommand;

.field private onTransact:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/extraCommand;Landroid/content/Context;Lo/INotificationSideChannel$ICustomTabsCallback;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    invoke-direct {p0}, Lo/INotificationSideChannel;-><init>()V

    .line 992
    iput-object p2, p0, Lo/extraCommand$extraCallback;->extraCallback:Landroid/content/Context;

    .line 993
    iput-object p3, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    .line 994
    new-instance p1, Lo/AudioAttributesImplBaseParcelizer;

    invoke-direct {p1, p2}, Lo/AudioAttributesImplBaseParcelizer;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1239
    iput p2, p1, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult:I

    .line 995
    iput-object p1, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 996
    invoke-virtual {p1, p0}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/view/Menu;
    .locals 1

    .line 1006
    iget-object v0, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/CharSequence;
    .locals 1

    .line 1094
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Ljava/lang/CharSequence;
    .locals 1

    .line 1099
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->onTransact:Lo/extraCommand$extraCallback;

    if-eq v0, p0, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-boolean v0, v0, Lo/extraCommand;->warmup:Z

    iget-object v1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-boolean v1, v1, Lo/extraCommand;->newSession:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/extraCommand;->ICustomTabsCallback(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iput-object p0, v0, Lo/extraCommand;->asBinder:Lo/INotificationSideChannel;

    .line 1024
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v1, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    iput-object v1, v0, Lo/extraCommand;->ICustomTabsCallback$Stub:Lo/INotificationSideChannel$ICustomTabsCallback;

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v0, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {v0, p0}, Lo/INotificationSideChannel$ICustomTabsCallback;->ICustomTabsCallback(Lo/INotificationSideChannel;)V

    :goto_0
    const/4 v0, 0x0

    .line 1028
    iput-object v0, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    .line 1029
    iget-object v1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    invoke-virtual {v1, v2}, Lo/extraCommand;->onMessageChannelReady(Z)V

    .line 1032
    iget-object v1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v1, v1, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    .line 1033
    iget-object v1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v1, v1, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1035
    iget-object v1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v1, v1, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-boolean v2, v2, Lo/extraCommand;->ICustomTabsService:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1037
    iget-object v1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iput-object v0, v1, Lo/extraCommand;->onTransact:Lo/extraCommand$extraCallback;

    return-void
.end method

.method public final extraCallback(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 0

    .line 1148
    iget-object p1, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    if-nez p1, :cond_0

    return-void

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lo/INotificationSideChannel;->onPostMessage()V

    .line 1152
    iget-object p1, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object p1, p1, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public final onMessageChannelReady()Landroid/view/MenuInflater;
    .locals 2

    .line 1001
    new-instance v0, Lo/setDefaultImpl;

    iget-object v1, p0, Lo/extraCommand$extraCallback;->extraCallback:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/setDefaultImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1069
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/extraCommand$extraCallback;->onTransact:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 1

    .line 1104
    invoke-super {p0, p1}, Lo/INotificationSideChannel;->onMessageChannelReady(Z)V

    .line 1105
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1120
    iget-object p1, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 1121
    invoke-interface {p1, p0, p2}, Lo/INotificationSideChannel$ICustomTabsCallback;->extraCallback(Lo/INotificationSideChannel;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 7074
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 4

    .line 1058
    iget-object v0, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 4078
    iget-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4079
    iput-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 4080
    iput-boolean v2, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 4081
    iput-boolean v2, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 1060
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    iget-object v1, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-interface {v0, p0, v1}, Lo/INotificationSideChannel$ICustomTabsCallback;->onPostMessage(Lo/INotificationSideChannel;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object v1, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 4086
    iput-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 4088
    iget-boolean v3, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v3, :cond_1

    .line 4089
    iput-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 4090
    iget-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v1, v2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    .line 1062
    iget-object v1, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 5086
    iput-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 5088
    iget-boolean v3, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v3, :cond_2

    .line 5089
    iput-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 5090
    iget-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v1, v2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    .line 1063
    :cond_2
    throw v0
.end method

.method public final onPostMessage()V
    .locals 4

    .line 1042
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->onTransact:Lo/extraCommand$extraCallback;

    if-eq v0, p0, :cond_0

    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 2078
    iget-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2079
    iput-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 2080
    iput-boolean v2, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 2081
    iput-boolean v2, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    .line 1051
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/extraCommand$extraCallback;->asInterface:Lo/INotificationSideChannel$ICustomTabsCallback;

    iget-object v1, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-interface {v0, p0, v1}, Lo/INotificationSideChannel$ICustomTabsCallback;->onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    iget-object v0, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 2086
    iput-boolean v2, v0, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 2088
    iget-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v1, :cond_2

    .line 2089
    iput-boolean v2, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 2090
    iget-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 1053
    iget-object v1, p0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 3086
    iput-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 3088
    iget-boolean v3, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v3, :cond_3

    .line 3089
    iput-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 3090
    iget-boolean v2, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {v1, v2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    .line 1054
    :cond_3
    throw v0
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6079
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onPostMessage:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onRelationshipValidationResult()Landroid/view/View;
    .locals 1

    .line 1115
    iget-object v0, p0, Lo/extraCommand$extraCallback;->onTransact:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
