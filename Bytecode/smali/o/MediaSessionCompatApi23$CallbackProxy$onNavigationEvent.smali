.class Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;
.super Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi23$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1768
    invoke-direct {p0}, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;-><init>()V

    return-void
.end method

.method constructor <init>(Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;)V
    .locals 0

    .line 1773
    invoke-direct {p0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;)V

    return-void
.end method

.method private onMessageChannelReady(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 1793
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1795
    iput-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->newSession:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 1799
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1801
    invoke-static {v1}, Lo/getRating;->onMessageChannelReady(Ljava/lang/String;)[Lo/getRating$onMessageChannelReady;

    move-result-object v1

    iput-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    :cond_1
    const/4 v1, 0x2

    const-string v2, "fillType"

    .line 1803
    invoke-static {p1, p2, v2, v1, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "pathData"

    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 2058
    invoke-interface {p4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1782
    :cond_1
    sget-object v0, Lo/MediaSessionCompatApi21$QueueItem;->onMessageChannelReady:[I

    if-nez p3, :cond_2

    .line 2253
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_1

    .line 2255
    :cond_2
    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1784
    :goto_1
    invoke-direct {p0, p1, p4}, Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;->onMessageChannelReady(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1785
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
