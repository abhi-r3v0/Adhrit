.class public final Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AudioAttributesImplApi21Parcelizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

.field private onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/AudioAttributesImplApi21Parcelizer;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 232
    iput p1, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onNavigationEvent:I

    .line 235
    invoke-direct {p0}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onPostMessage()V

    return-void
.end method

.method private onPostMessage()V
    .locals 5

    .line 277
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    iget-object v0, v0, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 3395
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->requestPostMessageChannel:Lo/MediaBrowserCompat;

    if-eqz v0, :cond_1

    .line 279
    iget-object v1, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    iget-object v1, v1, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 4208
    invoke-virtual {v1}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 4209
    iget-object v1, v1, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 282
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaBrowserCompat;

    if-ne v4, v0, :cond_0

    .line 284
    iput v3, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onNavigationEvent:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .line 240
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    iget-object v0, v0, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 2208
    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 2209
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 242
    iget v1, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onNavigationEvent:I

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onPostMessage(I)Lo/MediaBrowserCompat;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 268
    iget-object p2, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    iget-object p2, p2, Lo/AudioAttributesImplApi21Parcelizer;->onPostMessage:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    iget v0, v0, Lo/AudioAttributesImplApi21Parcelizer;->extraCallback:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 271
    :cond_0
    move-object p3, p2

    check-cast p3, Lo/getExtras$extraCallback;

    .line 272
    invoke-virtual {p0, p1}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onPostMessage(I)Lo/MediaBrowserCompat;

    move-result-object p1

    invoke-interface {p3, p1}, Lo/getExtras$extraCallback;->extraCallback(Lo/MediaBrowserCompat;)V

    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onPostMessage()V

    .line 295
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onPostMessage(I)Lo/MediaBrowserCompat;
    .locals 2

    .line 250
    iget-object v0, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onMessageChannelReady:Lo/AudioAttributesImplApi21Parcelizer;

    iget-object v0, v0, Lo/AudioAttributesImplApi21Parcelizer;->ICustomTabsCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 3208
    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onTransact()V

    .line 3209
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->asInterface:Ljava/util/ArrayList;

    .line 252
    iget v1, p0, Lo/AudioAttributesImplApi21Parcelizer$onPostMessage;->onNavigationEvent:I

    if-ltz v1, :cond_0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 255
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat;

    return-object p1
.end method
