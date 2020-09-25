.class public final Lo/ICustomTabsService$ICustomTabsService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ICustomTabsService"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:Landroid/view/ViewGroup;

.field ICustomTabsCallback$Stub$Proxy:Z

.field ICustomTabsService:Z

.field asBinder:Lo/AudioAttributesImplBaseParcelizer;

.field asInterface:Landroid/view/View;

.field extraCallback:I

.field extraCommand:Z

.field getInterfaceDescriptor:Landroid/content/Context;

.field mayLaunchUrl:Z

.field newSession:Lo/AudioAttributesImplApi21Parcelizer;

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I

.field onRelationshipValidationResult:I

.field onTransact:Landroid/view/View;

.field public postMessage:Z

.field requestPostMessageChannel:Landroid/os/Bundle;

.field warmup:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2845
    iput p1, p0, Lo/ICustomTabsService$ICustomTabsService;->onMessageChannelReady:I

    const/4 p1, 0x0

    .line 2847
    iput-boolean p1, p0, Lo/ICustomTabsService$ICustomTabsService;->extraCommand:Z

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/getSessionToken$extraCallback;)Lo/getExtras;
    .locals 4

    .line 2912
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->asBinder:Lo/AudioAttributesImplBaseParcelizer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2914
    :cond_0
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    if-nez v0, :cond_1

    .line 2915
    new-instance v0, Lo/AudioAttributesImplApi21Parcelizer;

    iget-object v1, p0, Lo/ICustomTabsService$ICustomTabsService;->getInterfaceDescriptor:Landroid/content/Context;

    sget v2, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lo/AudioAttributesImplApi21Parcelizer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    .line 4138
    iput-object p1, v0, Lo/AudioAttributesImplApi21Parcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    .line 2918
    iget-object p1, p0, Lo/ICustomTabsService$ICustomTabsService;->asBinder:Lo/AudioAttributesImplBaseParcelizer;

    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    .line 4250
    iget-object v1, p1, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 4263
    iget-object v2, p1, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4264
    invoke-interface {v0, v1, p1}, Lo/getSessionToken;->ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V

    const/4 v0, 0x1

    .line 4265
    iput-boolean v0, p1, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 2921
    :cond_1
    iget-object p1, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->ICustomTabsCallback$Stub:Landroid/view/ViewGroup;

    .line 5105
    iget-object v1, p1, Lo/AudioAttributesImplApi21Parcelizer;->onNavigationEvent:Lo/read;

    if-nez v1, :cond_3

    .line 5106
    iget-object v1, p1, Lo/AudioAttributesImplApi21Parcelizer;->onPostMessage:Landroid/view/LayoutInflater;

    sget v2, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_expanded_menu_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/read;

    iput-object v0, p1, Lo/AudioAttributesImplApi21Parcelizer;->onNavigationEvent:Lo/read;

    .line 5108
    iget-object v0, p1, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    if-nez v0, :cond_2

    .line 5109
    new-instance v0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    invoke-direct {v0, p1}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;-><init>(Lo/AudioAttributesImplApi21Parcelizer;)V

    iput-object v0, p1, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    .line 5111
    :cond_2
    iget-object v0, p1, Lo/AudioAttributesImplApi21Parcelizer;->onNavigationEvent:Lo/read;

    iget-object v1, p1, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5112
    iget-object v0, p1, Lo/AudioAttributesImplApi21Parcelizer;->onNavigationEvent:Lo/read;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5114
    :cond_3
    iget-object p1, p1, Lo/AudioAttributesImplApi21Parcelizer;->onNavigationEvent:Lo/read;

    return-object p1
.end method

.method final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 4

    .line 2868
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2869
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2870
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2873
    sget v2, Lo/extraCallback$ICustomTabsCallback;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2874
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 2875
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2879
    :cond_0
    sget v2, Lo/extraCallback$ICustomTabsCallback;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2880
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 2881
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 2883
    :cond_1
    sget v0, Lo/extraCallback$onTransact;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2886
    :goto_0
    new-instance v0, Lo/IPostMessageService$Stub$Proxy;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lo/IPostMessageService$Stub$Proxy;-><init>(Landroid/content/Context;I)V

    .line 2887
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2889
    iput-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->getInterfaceDescriptor:Landroid/content/Context;

    .line 2891
    sget-object p1, Lo/extraCallback$asInterface;->AppCompatTheme:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2892
    sget v0, Lo/extraCallback$asInterface;->AppCompatTheme_panelBackground:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ICustomTabsService$ICustomTabsService;->extraCallback:I

    .line 2894
    sget v0, Lo/extraCallback$asInterface;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ICustomTabsService$ICustomTabsService;->onRelationshipValidationResult:I

    .line 2896
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final extraCallback()Z
    .locals 4

    .line 2851
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->onTransact:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2852
    :cond_0
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->asInterface:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2854
    :cond_1
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    .line 3125
    iget-object v3, v0, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    if-nez v3, :cond_2

    .line 3126
    new-instance v3, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    invoke-direct {v3, v0}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;-><init>(Lo/AudioAttributesImplApi21Parcelizer;)V

    iput-object v3, v0, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    .line 3128
    :cond_2
    iget-object v0, v0, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    .line 2854
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method final onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 4

    .line 2900
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->asBinder:Lo/AudioAttributesImplBaseParcelizer;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2903
    iget-object v1, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/getSessionToken;)V

    .line 2905
    :cond_1
    iput-object p1, p0, Lo/ICustomTabsService$ICustomTabsService;->asBinder:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz p1, :cond_2

    .line 2907
    iget-object v0, p0, Lo/ICustomTabsService$ICustomTabsService;->newSession:Lo/AudioAttributesImplApi21Parcelizer;

    if-eqz v0, :cond_2

    .line 3250
    iget-object v1, p1, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 3263
    iget-object v2, p1, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    invoke-interface {v0, v1, p1}, Lo/getSessionToken;->ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V

    const/4 v0, 0x1

    .line 3265
    iput-boolean v0, p1, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    :cond_2
    return-void
.end method
