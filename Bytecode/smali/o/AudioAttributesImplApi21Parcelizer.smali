.class public final Lo/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionToken;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

.field private ICustomTabsCallback$Stub:I

.field extraCallback:I

.field public onMessageChannelReady:Lo/getSessionToken$extraCallback;

.field public onNavigationEvent:Lo/read;

.field public onPostMessage:Landroid/view/LayoutInflater;

.field private onRelationshipValidationResult:Landroid/content/Context;

.field public onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->extraCallback:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p2}, Lo/AudioAttributesImplApi21Parcelizer;-><init>(I)V

    .line 72
    iput-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onRelationshipValidationResult:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onPostMessage:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer;->onRelationshipValidationResult:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onRelationshipValidationResult:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer;->onPostMessage:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onPostMessage:Landroid/view/LayoutInflater;

    .line 97
    :cond_0
    iput-object p2, p0, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 98
    iget-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    .line 133
    iget-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    iget-object p2, p0, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    invoke-virtual {p2, p3}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onPostMessage(I)Lo/MediaBrowserCompat;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Landroid/view/MenuItem;Lo/getSessionToken;I)Z

    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Lo/getSessionToken$extraCallback;->onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/getSessionToken$extraCallback;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Lo/getItem;)Z
    .locals 8

    .line 143
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    new-instance v0, Lo/connect;

    invoke-direct {v0, p1}, Lo/connect;-><init>(Lo/AudioAttributesImplBaseParcelizer;)V

    .line 2054
    iget-object v1, v0, Lo/connect;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer;

    .line 2057
    new-instance v2, Lo/onTransact$onNavigationEvent;

    .line 2830
    iget-object v3, v1, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 2057
    invoke-direct {v2, v3}, Lo/onTransact$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 2059
    new-instance v3, Lo/AudioAttributesImplApi21Parcelizer;

    .line 3358
    iget-object v4, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v4, v4, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    .line 2059
    sget v5, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_list_menu_item_layout:I

    invoke-direct {v3, v4, v5}, Lo/AudioAttributesImplApi21Parcelizer;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lo/connect;->onPostMessage:Lo/AudioAttributesImplApi21Parcelizer;

    .line 2062
    iget-object v3, v0, Lo/connect;->onPostMessage:Lo/AudioAttributesImplApi21Parcelizer;

    .line 4138
    iput-object v0, v3, Lo/AudioAttributesImplApi21Parcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    .line 2063
    iget-object v3, v0, Lo/connect;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer;

    iget-object v4, v0, Lo/connect;->onPostMessage:Lo/AudioAttributesImplApi21Parcelizer;

    .line 4250
    iget-object v5, v3, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 4263
    iget-object v6, v3, Lo/AudioAttributesImplBaseParcelizer;->newSession:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4264
    invoke-interface {v4, v5, v3}, Lo/getSessionToken;->ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V

    const/4 v4, 0x1

    .line 4265
    iput-boolean v4, v3, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 2064
    iget-object v3, v0, Lo/connect;->onPostMessage:Lo/AudioAttributesImplApi21Parcelizer;

    .line 5125
    iget-object v5, v3, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    if-nez v5, :cond_1

    .line 5126
    new-instance v5, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    invoke-direct {v5, v3}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;-><init>(Lo/AudioAttributesImplApi21Parcelizer;)V

    iput-object v5, v3, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    .line 5128
    :cond_1
    iget-object v3, v3, Lo/AudioAttributesImplApi21Parcelizer;->onTransact:Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;

    .line 5659
    iget-object v5, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v3, v5, Lo/onRelationshipValidationResult$ICustomTabsCallback;->newSession:Landroid/widget/ListAdapter;

    .line 5660
    iget-object v3, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

    .line 6320
    iget-object v3, v1, Lo/AudioAttributesImplBaseParcelizer;->warmup:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 6398
    iget-object v1, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/View;

    goto :goto_0

    .line 7316
    :cond_2
    iget-object v3, v1, Lo/AudioAttributesImplBaseParcelizer;->onTransact:Landroid/graphics/drawable/Drawable;

    .line 7445
    iget-object v5, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v3, v5, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Landroid/graphics/drawable/Drawable;

    .line 8312
    iget-object v1, v1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 8377
    iget-object v3, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 8620
    :goto_0
    iget-object v1, v2, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Landroid/content/DialogInterface$OnKeyListener;

    .line 2080
    invoke-virtual {v2}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object v1

    iput-object v1, v0, Lo/connect;->onMessageChannelReady:Lo/onTransact;

    .line 2081
    iget-object v1, v0, Lo/connect;->onMessageChannelReady:Lo/onTransact;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2083
    iget-object v1, v0, Lo/connect;->onMessageChannelReady:Lo/onTransact;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 2084
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2088
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2090
    iget-object v0, v0, Lo/connect;->onMessageChannelReady:Lo/onTransact;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 147
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_3

    .line 148
    invoke-interface {v0, p1}, Lo/getSessionToken$extraCallback;->onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z

    :cond_3
    return v4
.end method
