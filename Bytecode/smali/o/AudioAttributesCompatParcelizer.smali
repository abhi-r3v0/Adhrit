.class public abstract Lo/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionToken;


# instance fields
.field public ICustomTabsCallback:Landroid/content/Context;

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field public extraCallback:Lo/AudioAttributesImplBaseParcelizer;

.field public onMessageChannelReady:Lo/getSessionToken$extraCallback;

.field public onNavigationEvent:Lo/getExtras;

.field public onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onPostMessage:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onRelationshipValidationResult:Landroid/view/LayoutInflater;

    .line 64
    iput p2, p0, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback$Stub:I

    .line 65
    iput p3, p0, Lo/AudioAttributesCompatParcelizer;->asBinder:I

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    return-void
.end method

.method public ICustomTabsCallback(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public extraCallback(Z)V
    .locals 9

    .line 91
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 97
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 100
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/MediaBrowserCompat;

    .line 101
    invoke-virtual {p0, v5}, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback(Lo/MediaBrowserCompat;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 102
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 103
    instance-of v7, v6, Lo/getExtras$extraCallback;

    if-eqz v7, :cond_1

    .line 104
    move-object v7, v6

    check-cast v7, Lo/getExtras$extraCallback;

    invoke-interface {v7}, Lo/getExtras$extraCallback;->ICustomTabsCallback()Lo/MediaBrowserCompat;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 105
    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Lo/AudioAttributesCompatParcelizer;->onPostMessage(Lo/MediaBrowserCompat;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    .line 108
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 109
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_4

    .line 1134
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 1136
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1138
    :cond_3
    iget-object v5, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v1, v4

    .line 120
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 121
    invoke-virtual {p0, p1, v1}, Lo/AudioAttributesCompatParcelizer;->extraCallback(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public extraCallback(Landroid/view/ViewGroup;I)Z
    .locals 0

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 1

    .line 213
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1, p2}, Lo/getSessionToken$extraCallback;->onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/getSessionToken$extraCallback;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationEvent(Landroid/view/ViewGroup;)Lo/getExtras;
    .locals 3

    .line 77
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onRelationshipValidationResult:Landroid/view/LayoutInflater;

    iget v1, p0, Lo/AudioAttributesCompatParcelizer;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getExtras;

    iput-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    .line 79
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-interface {p1, v0}, Lo/getExtras;->initialize(Lo/AudioAttributesImplBaseParcelizer;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lo/AudioAttributesCompatParcelizer;->extraCallback(Z)V

    .line 83
    :cond_0
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->onNavigationEvent:Lo/getExtras;

    return-object p1
.end method

.method public onNavigationEvent(Lo/getItem;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lo/AudioAttributesCompatParcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lo/AudioAttributesCompatParcelizer;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    :goto_0
    invoke-interface {v0, p1}, Lo/getSessionToken$extraCallback;->onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage(Lo/MediaBrowserCompat;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 183
    instance-of v0, p2, Lo/getExtras$extraCallback;

    if-eqz v0, :cond_0

    .line 184
    check-cast p2, Lo/getExtras$extraCallback;

    goto :goto_0

    .line 1167
    :cond_0
    iget-object p2, p0, Lo/AudioAttributesCompatParcelizer;->onRelationshipValidationResult:Landroid/view/LayoutInflater;

    iget v0, p0, Lo/AudioAttributesCompatParcelizer;->asBinder:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getExtras$extraCallback;

    .line 188
    :goto_0
    invoke-virtual {p0, p1, p2}, Lo/AudioAttributesCompatParcelizer;->onPostMessage(Lo/MediaBrowserCompat;Lo/getExtras$extraCallback;)V

    .line 189
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public abstract onPostMessage(Lo/MediaBrowserCompat;Lo/getExtras$extraCallback;)V
.end method
