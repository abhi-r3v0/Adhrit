.class Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;
.super Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi23$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

.field ICustomTabsCallback$Stub$Proxy:F

.field asBinder:F

.field asInterface:F

.field extraCallback:Lo/MediaMetadataCompat;

.field onMessageChannelReady:Lo/MediaMetadataCompat;

.field onNavigationEvent:F

.field onPostMessage:F

.field onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

.field onTransact:F

.field private requestPostMessageChannel:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1835
    invoke-direct {p0}, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;-><init>()V

    const/4 v0, 0x0

    .line 1822
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1825
    iput v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    .line 1826
    iput v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    .line 1827
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    .line 1828
    iput v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    .line 1829
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    .line 1831
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

    .line 1832
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1833
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    return-void
.end method

.method constructor <init>(Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;)V
    .locals 2

    .line 1840
    invoke-direct {p0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;)V

    const/4 v0, 0x0

    .line 1822
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1825
    iput v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    .line 1826
    iput v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    .line 1827
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    .line 1828
    iput v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    .line 1829
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    .line 1831
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

    .line 1832
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1833
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 1841
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->requestPostMessageChannel:[I

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->requestPostMessageChannel:[I

    .line 1843
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    .line 1844
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    .line 1845
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    .line 1846
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    .line 1847
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    .line 1848
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    .line 1849
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    .line 1850
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    .line 1851
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    .line 1853
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

    .line 1854
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

    .line 1855
    iget p1, p1, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    return-void
.end method

.method private onPostMessage(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    .line 1865
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 1863
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 1861
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private onPostMessage(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    .line 1878
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    .line 1876
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    .line 1874
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private onPostMessage(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 3

    const/4 v0, 0x0

    .line 1901
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->requestPostMessageChannel:[I

    const-string v0, "pathData"

    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 3058
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1915
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1918
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->newSession:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x2

    .line 1921
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1923
    invoke-static {v0}, Lo/getRating;->onMessageChannelReady(Ljava/lang/String;)[Lo/getRating$onMessageChannelReady;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    :cond_3
    const-string v0, "fillColor"

    .line 1926
    invoke-static {p1, p2, p3, v0, v1}, Lo/getText;->ICustomTabsCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lo/MediaMetadataCompat;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    const/16 v0, 0xc

    .line 1928
    iget v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    const-string/jumbo v2, "strokeLineCap"

    .line 1930
    invoke-static {p1, p2, v2, v0, v1}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1932
    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v2}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string/jumbo v2, "strokeLineJoin"

    .line 1933
    invoke-static {p1, p2, v2, v0, v1}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1935
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    .line 1936
    iget v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const-string/jumbo v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/4 v0, 0x3

    const-string/jumbo v1, "strokeColor"

    .line 1939
    invoke-static {p1, p2, p3, v1, v0}, Lo/getText;->ICustomTabsCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lo/MediaMetadataCompat;

    move-result-object p3

    iput-object p3, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    const/16 p3, 0xb

    .line 1941
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    const-string/jumbo v1, "strokeAlpha"

    invoke-static {p1, p2, v1, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    const/4 p3, 0x4

    .line 1943
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    const-string/jumbo v1, "strokeWidth"

    invoke-static {p1, p2, v1, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    const/4 p3, 0x6

    .line 1945
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    const-string/jumbo v1, "trimPathEnd"

    invoke-static {p1, p2, v1, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    const/4 p3, 0x7

    .line 1947
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    const-string/jumbo v1, "trimPathOffset"

    invoke-static {p1, p2, v1, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    const/4 p3, 0x5

    .line 1950
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    const-string/jumbo v1, "trimPathStart"

    invoke-static {p1, p2, v1, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    const/16 p3, 0xd

    .line 1953
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    const-string v1, "fillType"

    invoke-static {p1, p2, v1, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback([I)Z
    .locals 2

    .line 1965
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    invoke-virtual {v0, p1}, Lo/MediaMetadataCompat;->ICustomTabsCallback([I)Z

    move-result v0

    .line 1966
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    invoke-virtual {v1, p1}, Lo/MediaMetadataCompat;->ICustomTabsCallback([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public extraCallback()Z
    .locals 1

    .line 1960
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    invoke-virtual {v0}, Lo/MediaMetadataCompat;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    invoke-virtual {v0}, Lo/MediaMetadataCompat;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method getFillAlpha()F
    .locals 1

    .line 2028
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .line 2018
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    invoke-virtual {v0}, Lo/MediaMetadataCompat;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .line 2007
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .line 1987
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    invoke-virtual {v0}, Lo/MediaMetadataCompat;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .line 1997
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .line 2048
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .line 2058
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .line 2038
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    return v0
.end method

.method public onMessageChannelReady(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1890
    sget-object v0, Lo/MediaSessionCompatApi21$QueueItem;->ICustomTabsCallback:[I

    if-nez p3, :cond_0

    .line 2253
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2255
    invoke-virtual {p3, p2, v0, p1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1892
    :goto_0
    invoke-direct {p0, p1, p4, p3}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 1893
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method setFillAlpha(F)V
    .locals 0

    .line 2033
    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onNavigationEvent:F

    return-void
.end method

.method setFillColor(I)V
    .locals 1

    .line 2023
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady:Lo/MediaMetadataCompat;

    invoke-virtual {v0, p1}, Lo/MediaMetadataCompat;->onPostMessage(I)V

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    .line 2012
    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onPostMessage:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    .line 1992
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->extraCallback:Lo/MediaMetadataCompat;

    invoke-virtual {v0, p1}, Lo/MediaMetadataCompat;->onPostMessage(I)V

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    .line 2002
    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->ICustomTabsCallback:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    .line 2053
    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asInterface:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    .line 2063
    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->asBinder:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    .line 2043
    iput p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onTransact:F

    return-void
.end method
