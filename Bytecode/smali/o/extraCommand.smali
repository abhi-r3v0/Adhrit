.class public final Lo/extraCommand;
.super Lo/onPostMessage;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/extraCommand$extraCallback;
    }
.end annotation


# static fields
.field private static final mayLaunchUrl:Landroid/view/animation/Interpolator;

.field private static final postMessage:Landroid/view/animation/Interpolator;


# instance fields
.field ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

.field ICustomTabsCallback$Stub:Lo/INotificationSideChannel$ICustomTabsCallback;

.field ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

.field ICustomTabsService:Z

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Z

.field asBinder:Lo/INotificationSideChannel;

.field asInterface:Landroid/view/View;

.field private cancel:Z

.field extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

.field final extraCommand:Lo/populateSessionApplicationData;

.field final getInterfaceDescriptor:Lo/setVolumeTo;

.field newSession:Z

.field private notify:Z

.field onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field onNavigationEvent:Landroid/content/Context;

.field onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

.field onRelationshipValidationResult:Z

.field onTransact:Lo/extraCommand$extraCallback;

.field final requestPostMessageChannel:Lo/setVolumeTo;

.field private updateVisuals:Landroid/content/Context;

.field private validateRelationship:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/onPostMessage$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lo/extraCommand;->postMessage:Landroid/view/animation/Interpolator;

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lo/extraCommand;->mayLaunchUrl:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 169
    invoke-direct {p0}, Lo/onPostMessage;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/extraCommand;->validateRelationship:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lo/extraCommand;->ICustomTabsService$Stub:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/extraCommand;->onRelationshipValidationResult:Z

    .line 129
    iput-boolean v0, p0, Lo/extraCommand;->IPostMessageService$Stub$Proxy:Z

    .line 135
    new-instance v0, Lo/extraCommand$3;

    invoke-direct {v0, p0}, Lo/extraCommand$3;-><init>(Lo/extraCommand;)V

    iput-object v0, p0, Lo/extraCommand;->getInterfaceDescriptor:Lo/setVolumeTo;

    .line 152
    new-instance v0, Lo/extraCommand$1;

    invoke-direct {v0, p0}, Lo/extraCommand$1;-><init>(Lo/extraCommand;)V

    iput-object v0, p0, Lo/extraCommand;->requestPostMessageChannel:Lo/setVolumeTo;

    .line 160
    new-instance v0, Lo/extraCommand$4;

    invoke-direct {v0, p0}, Lo/extraCommand$4;-><init>(Lo/extraCommand;)V

    iput-object v0, p0, Lo/extraCommand;->extraCommand:Lo/populateSessionApplicationData;

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Lo/extraCommand;->onPostMessage(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/extraCommand;->asInterface:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Lo/onPostMessage;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/extraCommand;->validateRelationship:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lo/extraCommand;->ICustomTabsService$Stub:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/extraCommand;->onRelationshipValidationResult:Z

    .line 129
    iput-boolean v0, p0, Lo/extraCommand;->IPostMessageService$Stub$Proxy:Z

    .line 135
    new-instance v0, Lo/extraCommand$3;

    invoke-direct {v0, p0}, Lo/extraCommand$3;-><init>(Lo/extraCommand;)V

    iput-object v0, p0, Lo/extraCommand;->getInterfaceDescriptor:Lo/setVolumeTo;

    .line 152
    new-instance v0, Lo/extraCommand$1;

    invoke-direct {v0, p0}, Lo/extraCommand$1;-><init>(Lo/extraCommand;)V

    iput-object v0, p0, Lo/extraCommand;->requestPostMessageChannel:Lo/setVolumeTo;

    .line 160
    new-instance v0, Lo/extraCommand$4;

    invoke-direct {v0, p0}, Lo/extraCommand$4;-><init>(Lo/extraCommand;)V

    iput-object v0, p0, Lo/extraCommand;->extraCommand:Lo/populateSessionApplicationData;

    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/extraCommand;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method static ICustomTabsCallback(ZZZ)Z
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private ICustomTabsCallback$Stub(Z)V
    .locals 4

    .line 261
    iput-boolean p1, p0, Lo/extraCommand;->ICustomTabsService$Stub$Proxy:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 264
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 265
    iget-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 268
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 4511
    :goto_0
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 281
    :goto_1
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    iget-boolean v3, p0, Lo/extraCommand;->ICustomTabsService$Stub$Proxy:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 282
    iget-object v0, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lo/extraCommand;->ICustomTabsService$Stub$Proxy:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private asBinder(Z)V
    .locals 5

    .line 769
    iget-boolean v0, p0, Lo/extraCommand;->warmup:Z

    iget-boolean v1, p0, Lo/extraCommand;->newSession:Z

    iget-boolean v2, p0, Lo/extraCommand;->notify:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 773
    iget-boolean v0, p0, Lo/extraCommand;->IPostMessageService$Stub$Proxy:Z

    if-nez v0, :cond_3

    .line 774
    iput-boolean v4, p0, Lo/extraCommand;->IPostMessageService$Stub$Proxy:Z

    .line 775
    invoke-direct {p0, p1}, Lo/extraCommand;->asInterface(Z)V

    return-void

    .line 778
    :cond_2
    iget-boolean v0, p0, Lo/extraCommand;->IPostMessageService$Stub$Proxy:Z

    if-eqz v0, :cond_3

    .line 779
    iput-boolean v3, p0, Lo/extraCommand;->IPostMessageService$Stub$Proxy:Z

    .line 780
    invoke-direct {p0, p1}, Lo/extraCommand;->onRelationshipValidationResult(Z)V

    :cond_3
    return-void
.end method

.method private asInterface(Z)V
    .locals 4

    .line 786
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lo/getDefaultImpl;->onMessageChannelReady()V

    .line 789
    :cond_0
    iget-object v0, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget v0, p0, Lo/extraCommand;->ICustomTabsService$Stub:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/extraCommand;->cancel:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 793
    :cond_1
    iget-object v0, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 794
    iget-object v0, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 796
    fill-array-data p1, :array_0

    .line 797
    iget-object v2, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 798
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 800
    :cond_2
    iget-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 801
    new-instance p1, Lo/getDefaultImpl;

    invoke-direct {p1}, Lo/getDefaultImpl;-><init>()V

    .line 802
    iget-object v2, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/getLaunchPendingIntent;->ICustomTabsCallback(F)Lo/getLaunchPendingIntent;

    move-result-object v2

    .line 803
    iget-object v3, p0, Lo/extraCommand;->extraCommand:Lo/populateSessionApplicationData;

    invoke-virtual {v2, v3}, Lo/getLaunchPendingIntent;->ICustomTabsCallback(Lo/populateSessionApplicationData;)Lo/getLaunchPendingIntent;

    .line 804
    invoke-virtual {p1, v2}, Lo/getDefaultImpl;->ICustomTabsCallback(Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;

    .line 805
    iget-boolean v2, p0, Lo/extraCommand;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/extraCommand;->asInterface:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 806
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 807
    iget-object v0, p0, Lo/extraCommand;->asInterface:Landroid/view/View;

    invoke-static {v0}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/getLaunchPendingIntent;->ICustomTabsCallback(F)Lo/getLaunchPendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/getDefaultImpl;->ICustomTabsCallback(Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;

    .line 809
    :cond_3
    sget-object v0, Lo/extraCommand;->mayLaunchUrl:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lo/getDefaultImpl;->extraCallback(Landroid/view/animation/Interpolator;)Lo/getDefaultImpl;

    const-wide/16 v0, 0xfa

    .line 810
    invoke-virtual {p1, v0, v1}, Lo/getDefaultImpl;->onNavigationEvent(J)Lo/getDefaultImpl;

    .line 818
    iget-object v0, p0, Lo/extraCommand;->requestPostMessageChannel:Lo/setVolumeTo;

    invoke-virtual {p1, v0}, Lo/getDefaultImpl;->onNavigationEvent(Lo/setVolumeTo;)Lo/getDefaultImpl;

    .line 819
    iput-object p1, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    .line 820
    invoke-virtual {p1}, Lo/getDefaultImpl;->ICustomTabsCallback()V

    goto :goto_0

    .line 822
    :cond_4
    iget-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 823
    iget-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 824
    iget-boolean p1, p0, Lo/extraCommand;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/extraCommand;->asInterface:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 825
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 827
    :cond_5
    iget-object p1, p0, Lo/extraCommand;->requestPostMessageChannel:Lo/setVolumeTo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationEnd(Landroid/view/View;)V

    .line 829
    :goto_0
    iget-object p1, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    .line 830
    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static extraCallback(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;
    .locals 3

    .line 235
    instance-of v0, p0, Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 236
    check-cast p0, Landroidx/appcompat/widget/DecorToolbar;

    return-object p0

    .line 237
    :cond_0
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 238
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    move-result-object p0

    return-object p0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "null"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInterfaceDescriptor()V
    .locals 2

    .line 710
    iget-boolean v0, p0, Lo/extraCommand;->notify:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Lo/extraCommand;->notify:Z

    .line 712
    iget-object v1, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 715
    :cond_0
    invoke-direct {p0, v0}, Lo/extraCommand;->asBinder(Z)V

    :cond_1
    return-void
.end method

.method private newSession()V
    .locals 2

    .line 684
    iget-boolean v0, p0, Lo/extraCommand;->notify:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lo/extraCommand;->notify:Z

    .line 686
    iget-object v1, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 689
    invoke-direct {p0, v0}, Lo/extraCommand;->asBinder(Z)V

    :cond_1
    return-void
.end method

.method private onPostMessage(Landroid/view/View;)V
    .locals 5

    .line 193
    sget v0, Lo/extraCallback$asBinder;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 197
    :cond_0
    sget v0, Lo/extraCallback$asBinder;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lo/extraCommand;->extraCallback(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    .line 198
    sget v0, Lo/extraCallback$asBinder;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    .line 200
    sget v0, Lo/extraCallback$asBinder;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    .line 203
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 208
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    .line 211
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 214
    iput-boolean v0, p0, Lo/extraCommand;->IPostMessageService:Z

    .line 217
    :cond_2
    iget-object v2, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    .line 2043
    new-instance v3, Lo/cancelAll;

    invoke-direct {v3, v2}, Lo/cancelAll;-><init>(Landroid/content/Context;)V

    .line 2110
    iget-object v2, v3, Lo/cancelAll;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 2393
    :cond_5
    :goto_2
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 3090
    iget-object p1, v3, Lo/cancelAll;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/extraCallback$extraCallback;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 219
    invoke-direct {p0, p1}, Lo/extraCommand;->ICustomTabsCallback$Stub(Z)V

    .line 221
    iget-object p1, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    const/4 v0, 0x0

    sget-object v2, Lo/extraCallback$asInterface;->ActionBar:[I

    sget v3, Lo/extraCallback$ICustomTabsCallback;->actionBarStyle:I

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 224
    sget v0, Lo/extraCallback$asInterface;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p0}, Lo/onPostMessage;->onPostMessage()V

    .line 227
    :cond_6
    sget v0, Lo/extraCallback$asInterface;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_7

    int-to-float v0, v0

    .line 3247
    iget-object v1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1, v0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;F)V

    .line 231
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 204
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onRelationshipValidationResult(Z)V
    .locals 4

    .line 835
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lo/getDefaultImpl;->onMessageChannelReady()V

    .line 839
    :cond_0
    iget v0, p0, Lo/extraCommand;->ICustomTabsService$Stub:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/extraCommand;->cancel:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 840
    :cond_1
    iget-object v0, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 841
    iget-object v0, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 842
    new-instance v0, Lo/getDefaultImpl;

    invoke-direct {v0}, Lo/getDefaultImpl;-><init>()V

    .line 843
    iget-object v2, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 845
    fill-array-data p1, :array_0

    .line 846
    iget-object v3, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 847
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 849
    :cond_2
    iget-object p1, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/getLaunchPendingIntent;->ICustomTabsCallback(F)Lo/getLaunchPendingIntent;

    move-result-object p1

    .line 850
    iget-object v1, p0, Lo/extraCommand;->extraCommand:Lo/populateSessionApplicationData;

    invoke-virtual {p1, v1}, Lo/getLaunchPendingIntent;->ICustomTabsCallback(Lo/populateSessionApplicationData;)Lo/getLaunchPendingIntent;

    .line 851
    invoke-virtual {v0, p1}, Lo/getDefaultImpl;->ICustomTabsCallback(Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;

    .line 852
    iget-boolean p1, p0, Lo/extraCommand;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/extraCommand;->asInterface:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 853
    invoke-static {p1}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/getLaunchPendingIntent;->ICustomTabsCallback(F)Lo/getLaunchPendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getDefaultImpl;->ICustomTabsCallback(Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;

    .line 855
    :cond_3
    sget-object p1, Lo/extraCommand;->postMessage:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lo/getDefaultImpl;->extraCallback(Landroid/view/animation/Interpolator;)Lo/getDefaultImpl;

    const-wide/16 v1, 0xfa

    .line 856
    invoke-virtual {v0, v1, v2}, Lo/getDefaultImpl;->onNavigationEvent(J)Lo/getDefaultImpl;

    .line 857
    iget-object p1, p0, Lo/extraCommand;->getInterfaceDescriptor:Lo/setVolumeTo;

    invoke-virtual {v0, p1}, Lo/getDefaultImpl;->onNavigationEvent(Lo/setVolumeTo;)Lo/getDefaultImpl;

    .line 858
    iput-object v0, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    .line 859
    invoke-virtual {v0}, Lo/getDefaultImpl;->ICustomTabsCallback()V

    return-void

    .line 861
    :cond_4
    iget-object p1, p0, Lo/extraCommand;->getInterfaceDescriptor:Lo/setVolumeTo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationEnd(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 677
    iget-boolean v0, p0, Lo/extraCommand;->warmup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Lo/extraCommand;->warmup:Z

    .line 679
    invoke-direct {p0, v0}, Lo/extraCommand;->asBinder(Z)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 2

    .line 349
    iget-boolean v0, p0, Lo/extraCommand;->IPostMessageService$Stub:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 352
    :cond_0
    iput-boolean p1, p0, Lo/extraCommand;->IPostMessageService$Stub:Z

    .line 354
    iget-object p1, p0, Lo/extraCommand;->validateRelationship:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 356
    iget-object v1, p0, Lo/extraCommand;->validateRelationship:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final enableContentAnimations(Z)V
    .locals 0

    .line 672
    iput-boolean p1, p0, Lo/extraCommand;->onRelationshipValidationResult:Z

    return-void
.end method

.method public final extraCallback()I
    .locals 1

    .line 516
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
    .locals 2

    .line 521
    iget-object v0, p0, Lo/extraCommand;->onTransact:Lo/extraCommand$extraCallback;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Lo/INotificationSideChannel;->extraCallback()V

    .line 525
    :cond_0
    iget-object v0, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 526
    iget-object v0, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 527
    new-instance v0, Lo/extraCommand$extraCallback;

    iget-object v1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lo/extraCommand$extraCallback;-><init>(Lo/extraCommand;Landroid/content/Context;Lo/INotificationSideChannel$ICustomTabsCallback;)V

    .line 528
    invoke-virtual {v0}, Lo/extraCommand$extraCallback;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 531
    iput-object v0, p0, Lo/extraCommand;->onTransact:Lo/extraCommand$extraCallback;

    .line 532
    invoke-virtual {v0}, Lo/INotificationSideChannel;->onPostMessage()V

    .line 533
    iget-object p1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Lo/INotificationSideChannel;)V

    const/4 p1, 0x1

    .line 534
    invoke-virtual {p0, p1}, Lo/extraCommand;->onMessageChannelReady(Z)V

    .line 535
    iget-object p1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final extraCallback(Z)V
    .locals 1

    .line 1393
    iget-boolean v0, p0, Lo/extraCommand;->IPostMessageService:Z

    if-nez v0, :cond_0

    .line 1394
    invoke-virtual {p0, p1}, Lo/onPostMessage;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method public final extraCallback(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1400
    iget-object v0, p0, Lo/extraCommand;->onTransact:Lo/extraCommand$extraCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6006
    :cond_0
    iget-object v0, v0, Lo/extraCommand$extraCallback;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 1406
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 1405
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1407
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1408
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final hideForSystem()V
    .locals 1

    .line 721
    iget-boolean v0, p0, Lo/extraCommand;->newSession:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Lo/extraCommand;->newSession:Z

    .line 723
    invoke-direct {p0, v0}, Lo/extraCommand;->asBinder(Z)V

    :cond_0
    return-void
.end method

.method public final onContentScrollStarted()V
    .locals 1

    .line 961
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Lo/getDefaultImpl;->onMessageChannelReady()V

    const/4 v0, 0x0

    .line 963
    iput-object v0, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    :cond_0
    return-void
.end method

.method public final onContentScrollStopped()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()Landroid/content/Context;
    .locals 4

    .line 919
    iget-object v0, p0, Lo/extraCommand;->updateVisuals:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 921
    iget-object v1, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 922
    sget v2, Lo/extraCallback$ICustomTabsCallback;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 923
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 926
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lo/extraCommand;->updateVisuals:Landroid/content/Context;

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    iput-object v0, p0, Lo/extraCommand;->updateVisuals:Landroid/content/Context;

    .line 931
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/extraCommand;->updateVisuals:Landroid/content/Context;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 874
    invoke-direct {p0}, Lo/extraCommand;->newSession()V

    goto :goto_0

    .line 876
    :cond_0
    invoke-direct {p0}, Lo/extraCommand;->getInterfaceDescriptor()V

    .line 5914
    :goto_0
    iget-object v0, p0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    .line 886
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v1, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Lo/getLaunchPendingIntent;

    move-result-object p1

    .line 888
    iget-object v0, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Lo/getLaunchPendingIntent;

    move-result-object v0

    goto :goto_1

    .line 891
    :cond_1
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Lo/getLaunchPendingIntent;

    move-result-object v0

    .line 893
    iget-object p1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Lo/getLaunchPendingIntent;

    move-result-object p1

    .line 896
    :goto_1
    new-instance v1, Lo/getDefaultImpl;

    invoke-direct {v1}, Lo/getDefaultImpl;-><init>()V

    .line 897
    invoke-virtual {v1, p1, v0}, Lo/getDefaultImpl;->extraCallback(Lo/getLaunchPendingIntent;Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;

    .line 898
    invoke-virtual {v1}, Lo/getDefaultImpl;->ICustomTabsCallback()V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 901
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 904
    :cond_3
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 905
    iget-object p1, p0, Lo/extraCommand;->extraCallback:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 703
    iget-boolean v0, p0, Lo/extraCommand;->warmup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Lo/extraCommand;->warmup:Z

    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, v0}, Lo/extraCommand;->asBinder(Z)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/content/res/Configuration;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lo/extraCommand;->onNavigationEvent:Landroid/content/Context;

    .line 4043
    new-instance v0, Lo/cancelAll;

    invoke-direct {v0, p1}, Lo/cancelAll;-><init>(Landroid/content/Context;)V

    .line 4090
    iget-object p1, v0, Lo/cancelAll;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/extraCallback$extraCallback;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 257
    invoke-direct {p0, p1}, Lo/extraCommand;->ICustomTabsCallback$Stub(Z)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5472
    :goto_0
    iget-object v1, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v1

    const/4 v2, 0x1

    .line 5474
    iput-boolean v2, p0, Lo/extraCommand;->IPostMessageService:Z

    .line 5476
    iget-object v2, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 729
    iget-object v0, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 733
    iput-boolean v0, p0, Lo/extraCommand;->ICustomTabsService:Z

    .line 734
    iget-object v1, p0, Lo/extraCommand;->onMessageChannelReady:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lo/extraCommand;->cancel:Z

    if-nez p1, :cond_0

    .line 332
    iget-object p1, p0, Lo/extraCommand;->ICustomTabsCallback$Stub$Proxy:Lo/getDefaultImpl;

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Lo/getDefaultImpl;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 973
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lo/extraCommand;->ICustomTabsCallback:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    .line 319
    iput p1, p0, Lo/extraCommand;->ICustomTabsService$Stub:I

    return-void
.end method

.method public final showForSystem()V
    .locals 1

    .line 695
    iget-boolean v0, p0, Lo/extraCommand;->newSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Lo/extraCommand;->newSession:Z

    const/4 v0, 0x1

    .line 697
    invoke-direct {p0, v0}, Lo/extraCommand;->asBinder(Z)V

    :cond_0
    return-void
.end method
