.class final Lo/search;
.super Lo/getServiceComponent;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final onNavigationEvent:I


# instance fields
.field final ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/view/View$OnAttachStateChangeListener;

.field private final ICustomTabsService:I

.field private ICustomTabsService$Stub:I

.field private IPostMessageService$Stub:Z

.field private final asInterface:Lo/AudioAttributesImplBaseParcelizer;

.field extraCallback:Landroid/view/ViewTreeObserver;

.field private extraCommand:Lo/getSessionToken$extraCallback;

.field private final getInterfaceDescriptor:I

.field private mayLaunchUrl:Z

.field private final newSession:I

.field onMessageChannelReady:Landroid/view/View;

.field final onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

.field private final onRelationshipValidationResult:Lo/disconnect;

.field private final onTransact:Landroid/content/Context;

.field private postMessage:Landroid/view/View;

.field private requestPostMessageChannel:I

.field private updateVisuals:Z

.field private warmup:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_popup_menu_item_layout:I

    sput v0, Lo/search;->onNavigationEvent:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;IIZ)V
    .locals 3

    .line 117
    invoke-direct {p0}, Lo/getServiceComponent;-><init>()V

    .line 60
    new-instance v0, Lo/search$1;

    invoke-direct {v0, p0}, Lo/search$1;-><init>(Lo/search;)V

    iput-object v0, p0, Lo/search;->ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    new-instance v0, Lo/search$5;

    invoke-direct {v0, p0}, Lo/search$5;-><init>(Lo/search;)V

    iput-object v0, p0, Lo/search;->ICustomTabsCallback$Stub$Proxy:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lo/search;->ICustomTabsService$Stub:I

    .line 118
    iput-object p1, p0, Lo/search;->onTransact:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lo/search;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    .line 120
    iput-boolean p6, p0, Lo/search;->ICustomTabsCallback$Stub:Z

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    .line 122
    new-instance v0, Lo/disconnect;

    iget-boolean v1, p0, Lo/search;->ICustomTabsCallback$Stub:Z

    sget v2, Lo/search;->onNavigationEvent:I

    invoke-direct {v0, p2, p6, v1, v2}, Lo/disconnect;-><init>(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Lo/search;->onRelationshipValidationResult:Lo/disconnect;

    .line 123
    iput p4, p0, Lo/search;->ICustomTabsService:I

    .line 124
    iput p5, p0, Lo/search;->getInterfaceDescriptor:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 127
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, Lo/extraCallback$onMessageChannelReady;->abc_config_prefDialogWidth:I

    .line 128
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 127
    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lo/search;->newSession:I

    .line 130
    iput-object p3, p0, Lo/search;->postMessage:Landroid/view/View;

    .line 132
    new-instance p3, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p4, p0, Lo/search;->onTransact:Landroid/content/Context;

    iget p5, p0, Lo/search;->ICustomTabsService:I

    iget p6, p0, Lo/search;->getInterfaceDescriptor:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 2263
    iget-object p3, p2, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    invoke-interface {p0, p1, p2}, Lo/getSessionToken;->ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V

    const/4 p1, 0x1

    .line 2265
    iput-boolean p1, p2, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lo/search;->postMessage:Landroid/view/View;

    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lo/search;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 350
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lo/search;->mayLaunchUrl:Z

    .line 251
    iget-object p1, p0, Lo/search;->onRelationshipValidationResult:Lo/disconnect;

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    .line 344
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public final isShowing()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lo/search;->updateVisuals:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lo/search;->updateVisuals:Z

    .line 233
    iget-object v0, p0, Lo/search;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->close()V

    .line 235
    iget-object v0, p0, Lo/search;->extraCallback:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/search;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lo/search;->extraCallback:Landroid/view/ViewTreeObserver;

    .line 237
    :cond_0
    iget-object v0, p0, Lo/search;->extraCallback:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lo/search;->ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lo/search;->extraCallback:Landroid/view/ViewTreeObserver;

    .line 240
    :cond_1
    iget-object v0, p0, Lo/search;->onMessageChannelReady:Landroid/view/View;

    iget-object v1, p0, Lo/search;->ICustomTabsCallback$Stub$Proxy:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 242
    iget-object v0, p0, Lo/search;->warmup:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 331
    invoke-virtual {p0}, Lo/search;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    .line 145
    iput p1, p0, Lo/search;->ICustomTabsService$Stub:I

    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/search;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    if-eq p1, v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lo/search;->dismiss()V

    .line 304
    iget-object v0, p0, Lo/search;->extraCommand:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0, p1, p2}, Lo/getSessionToken$extraCallback;->onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Lo/getSessionToken$extraCallback;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lo/search;->extraCommand:Lo/getSessionToken$extraCallback;

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lo/search;->onRelationshipValidationResult:Lo/disconnect;

    .line 3057
    iput-boolean p1, v0, Lo/disconnect;->onMessageChannelReady:Z

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 355
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lo/search;->IPostMessageService$Stub:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/getItem;)Z
    .locals 9

    .line 263
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 264
    new-instance v0, Lo/getRoot;

    iget-object v3, p0, Lo/search;->onTransact:Landroid/content/Context;

    iget-object v5, p0, Lo/search;->onMessageChannelReady:Landroid/view/View;

    iget-boolean v6, p0, Lo/search;->ICustomTabsCallback$Stub:Z

    iget v7, p0, Lo/search;->ICustomTabsService:I

    iget v8, p0, Lo/search;->getInterfaceDescriptor:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lo/getRoot;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZII)V

    .line 266
    iget-object v2, p0, Lo/search;->extraCommand:Lo/getSessionToken$extraCallback;

    .line 5325
    iput-object v2, v0, Lo/getRoot;->ICustomTabsCallback:Lo/getSessionToken$extraCallback;

    .line 5326
    iget-object v3, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v3, :cond_0

    .line 5327
    iget-object v3, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v3, v2}, Lo/getServiceComponent;->onMessageChannelReady(Lo/getSessionToken$extraCallback;)V

    .line 267
    :cond_0
    invoke-static {p1}, Lo/getServiceComponent;->onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;)Z

    move-result v2

    .line 6118
    iput-boolean v2, v0, Lo/getRoot;->onMessageChannelReady:Z

    .line 6119
    iget-object v3, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v3, :cond_1

    .line 6120
    iget-object v3, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v3, v2}, Lo/getServiceComponent;->onMessageChannelReady(Z)V

    .line 270
    :cond_1
    iget-object v2, p0, Lo/search;->warmup:Landroid/widget/PopupWindow$OnDismissListener;

    .line 7094
    iput-object v2, v0, Lo/getRoot;->asInterface:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    .line 271
    iput-object v2, p0, Lo/search;->warmup:Landroid/widget/PopupWindow$OnDismissListener;

    .line 274
    iget-object v2, p0, Lo/search;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v2, v1}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    .line 277
    iget-object v2, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v2

    .line 278
    iget-object v3, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v3

    .line 282
    iget v4, p0, Lo/search;->ICustomTabsService$Stub:I

    iget-object v5, p0, Lo/search;->postMessage:Landroid/view/View;

    .line 283
    invoke-static {v5}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v5

    .line 282
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 285
    iget-object v4, p0, Lo/search;->postMessage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 7320
    :cond_2
    iget-object v4, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v4}, Lo/getServiceComponent;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 7209
    :cond_4
    iget-object v4, v0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    if-nez v4, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    .line 7213
    :cond_5
    invoke-virtual {v0, v2, v3, v5, v5}, Lo/getRoot;->onMessageChannelReady(IIZZ)V

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_7

    .line 289
    iget-object v0, p0, Lo/search;->extraCommand:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_6

    .line 290
    invoke-interface {v0, p1}, Lo/getSessionToken$extraCallback;->onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z

    :cond_6
    return v5

    :cond_7
    return v1
.end method

.method public final onPostMessage(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lo/search;->warmup:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final show()V
    .locals 7

    .line 3149
    invoke-virtual {p0}, Lo/search;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 3153
    :cond_0
    iget-boolean v0, p0, Lo/search;->updateVisuals:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/search;->postMessage:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3157
    :cond_1
    iput-object v0, p0, Lo/search;->onMessageChannelReady:Landroid/view/View;

    .line 3159
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3160
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3161
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 3163
    iget-object v0, p0, Lo/search;->onMessageChannelReady:Landroid/view/View;

    .line 3164
    iget-object v3, p0, Lo/search;->extraCallback:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 3165
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lo/search;->extraCallback:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 3167
    iget-object v3, p0, Lo/search;->ICustomTabsCallback:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3169
    :cond_3
    iget-object v3, p0, Lo/search;->ICustomTabsCallback$Stub$Proxy:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3170
    iget-object v3, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3171
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v3, p0, Lo/search;->ICustomTabsService$Stub:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 3173
    iget-boolean v0, p0, Lo/search;->mayLaunchUrl:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 3174
    iget-object v0, p0, Lo/search;->onRelationshipValidationResult:Lo/disconnect;

    iget-object v4, p0, Lo/search;->onTransact:Landroid/content/Context;

    iget v5, p0, Lo/search;->newSession:I

    invoke-static {v0, v3, v4, v5}, Lo/search;->onMessageChannelReady(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lo/search;->requestPostMessageChannel:I

    .line 3175
    iput-boolean v2, p0, Lo/search;->mayLaunchUrl:Z

    .line 3178
    :cond_4
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v4, p0, Lo/search;->requestPostMessageChannel:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 3179
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 3180
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 4078
    iget-object v4, p0, Lo/getServiceComponent;->asBinder:Landroid/graphics/Rect;

    .line 3180
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 3181
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 3183
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 3184
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3186
    iget-boolean v4, p0, Lo/search;->IPostMessageService$Stub:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lo/search;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    .line 4312
    iget-object v4, v4, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 3187
    iget-object v4, p0, Lo/search;->onTransact:Landroid/content/Context;

    .line 3188
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 3190
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 3192
    iget-object v6, p0, Lo/search;->asInterface:Lo/AudioAttributesImplBaseParcelizer;

    .line 5312
    iget-object v6, v6, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 3192
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3194
    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3195
    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3200
    :cond_6
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v1, p0, Lo/search;->onRelationshipValidationResult:Lo/disconnect;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3201
    iget-object v0, p0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    return-void

    .line 209
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
