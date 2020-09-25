.class public final Lo/disconnect;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private final ICustomTabsCallback:Z

.field public extraCallback:Lo/AudioAttributesImplBaseParcelizer;

.field onMessageChannelReady:Z

.field private final onNavigationEvent:Landroid/view/LayoutInflater;

.field private onPostMessage:I

.field private final onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lo/disconnect;->onPostMessage:I

    .line 45
    iput-boolean p3, p0, Lo/disconnect;->ICustomTabsCallback:Z

    .line 46
    iput-object p2, p0, Lo/disconnect;->onNavigationEvent:Landroid/view/LayoutInflater;

    .line 47
    iput-object p1, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 48
    iput p4, p0, Lo/disconnect;->onRelationshipValidationResult:I

    .line 49
    invoke-direct {p0}, Lo/disconnect;->ICustomTabsCallback()V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 5

    .line 114
    iget-object v0, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 3395
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->requestPostMessageChannel:Lo/MediaBrowserCompat;

    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 4208
    invoke-virtual {v1}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 4209
    iget-object v1, v1, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaBrowserCompat;

    if-ne v4, v0, :cond_0

    .line 121
    iput v3, p0, Lo/disconnect;->onPostMessage:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lo/disconnect;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .line 62
    iget-boolean v0, p0, Lo/disconnect;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 2208
    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 2209
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    :goto_0
    iget v1, p0, Lo/disconnect;->onPostMessage:I

    if-gez v1, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/disconnect;->onMessageChannelReady(I)Lo/MediaBrowserCompat;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 94
    iget-object p2, p0, Lo/disconnect;->onNavigationEvent:Landroid/view/LayoutInflater;

    iget v1, p0, Lo/disconnect;->onRelationshipValidationResult:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lo/disconnect;->onMessageChannelReady(I)Lo/MediaBrowserCompat;

    move-result-object p3

    invoke-virtual {p3}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result p3

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Lo/disconnect;->onMessageChannelReady(I)Lo/MediaBrowserCompat;

    move-result-object v1

    invoke-virtual {v1}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, p3

    .line 101
    :goto_0
    move-object v2, p2

    check-cast v2, Lo/IconCompatParcelizer;

    iget-object v3, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 102
    invoke-virtual {v3}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v2, v0}, Lo/IconCompatParcelizer;->setGroupDividerEnabled(Z)V

    .line 105
    move-object p3, p2

    check-cast p3, Lo/getExtras$extraCallback;

    .line 106
    iget-boolean v0, p0, Lo/disconnect;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v2, v4}, Lo/IconCompatParcelizer;->setForceShowIcon(Z)V

    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Lo/disconnect;->onMessageChannelReady(I)Lo/MediaBrowserCompat;

    move-result-object p1

    invoke-interface {p3, p1}, Lo/getExtras$extraCallback;->extraCallback(Lo/MediaBrowserCompat;)V

    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lo/disconnect;->ICustomTabsCallback()V

    .line 132
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onMessageChannelReady(I)Lo/MediaBrowserCompat;
    .locals 2

    .line 76
    iget-boolean v0, p0, Lo/disconnect;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 3208
    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 3209
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onRelationshipValidationResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    :goto_0
    iget v1, p0, Lo/disconnect;->onPostMessage:I

    if-ltz v1, :cond_1

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 81
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat;

    return-object p1
.end method
