.class public Lo/MediaSessionCompatApi23$CallbackProxy;
.super Lo/MediaSessionCompatApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;,
        Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;,
        Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;,
        Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;,
        Lo/MediaSessionCompatApi23$CallbackProxy$ICustomTabsCallback;,
        Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;,
        Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;,
        Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;
    }
.end annotation


# static fields
.field static final extraCallback:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

.field private ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

.field private final asBinder:Landroid/graphics/Matrix;

.field private asInterface:Z

.field private onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

.field private onPostMessage:Landroid/graphics/ColorFilter;

.field private onRelationshipValidationResult:Z

.field private final onTransact:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 280
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lo/MediaSessionCompatApi23$CallbackProxy;->extraCallback:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Lo/MediaSessionCompatApi24;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asInterface:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 317
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asBinder:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    .line 322
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    return-void
.end method

.method constructor <init>(Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;)V
    .locals 2

    .line 325
    invoke-direct {p0}, Lo/MediaSessionCompatApi24;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asInterface:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 317
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asBinder:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    .line 326
    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 327
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method private static ICustomTabsCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    .line 746
    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 744
    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 742
    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 740
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 738
    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 736
    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ICustomTabsCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/MediaSessionCompatApi23$CallbackProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>()V

    .line 682
    invoke-virtual {v0, p0, p1, p2, p3}, Lo/MediaSessionCompatApi23$CallbackProxy;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private onNavigationEvent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 817
    iget-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    .line 822
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 823
    iget-object v3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onNavigationEvent:Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 825
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 826
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_0
    if-eq v3, v5, :cond_8

    .line 830
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_0

    if-eq v3, v8, :cond_8

    :cond_0
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_6

    .line 832
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;

    const-string v8, "path"

    .line 834
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 835
    new-instance v3, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;

    invoke-direct {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;-><init>()V

    .line 836
    invoke-virtual {v3, p1, p3, p4, p2}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->onMessageChannelReady(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 837
    iget-object v6, v7, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 839
    iget-object v6, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->newSession:Lo/postOrRun;

    invoke-virtual {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$extraCallback;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    .line 842
    iget v7, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    iget v3, v3, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->getInterfaceDescriptor:I

    or-int/2addr v3, v7

    iput v3, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    goto :goto_1

    :cond_2
    const-string v8, "clip-path"

    .line 843
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 844
    new-instance v3, Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;

    invoke-direct {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;-><init>()V

    .line 845
    invoke-virtual {v3, p1, p3, p4, p2}, Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;->onMessageChannelReady(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 846
    iget-object v7, v7, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 848
    iget-object v7, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->newSession:Lo/postOrRun;

    invoke-virtual {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onNavigationEvent;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_3
    iget v7, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    iget v3, v3, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->getInterfaceDescriptor:I

    or-int/2addr v3, v7

    iput v3, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    goto :goto_1

    .line 851
    :cond_4
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 852
    new-instance v3, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;

    invoke-direct {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;-><init>()V

    .line 853
    invoke-virtual {v3, p1, p3, p4, p2}, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->onPostMessage(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 854
    iget-object v7, v7, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 856
    invoke-virtual {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 857
    iget-object v7, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->newSession:Lo/postOrRun;

    invoke-virtual {v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_5
    iget v7, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    iget v3, v3, Lo/MediaSessionCompatApi23$CallbackProxy$onMessageChannelReady;->onMessageChannelReady:I

    or-int/2addr v3, v7

    iput v3, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    goto :goto_1

    :cond_6
    if-ne v3, v8, :cond_7

    .line 863
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 864
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 865
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 868
    :cond_7
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_9

    return-void

    .line 877
    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 755
    iget-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    const-string/jumbo v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    .line 760
    invoke-static {p1, p2, v2, v3, v4}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 762
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v2, "tint"

    const-string v3, "http://schemas.android.com/apk/res/android"

    .line 3058
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x2

    if-eqz v2, :cond_3

    .line 2169
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2170
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2171
    iget v6, v2, Landroid/util/TypedValue;->type:I

    if-eq v6, v5, :cond_2

    .line 2174
    iget v6, v2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_1

    iget v6, v2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1

    .line 3190
    iget p3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_1

    .line 2179
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2180
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 2179
    invoke-static {v2, v3, p3}, Lo/newInstance;->ICustomTabsCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_1

    .line 2172
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to resolve attribute at index 1"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_4

    .line 768
    iput-object p3, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    :cond_4
    const/4 p3, 0x5

    .line 771
    iget-boolean v2, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, p3, v2}, Lo/getText;->onMessageChannelReady(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p3

    iput-boolean p3, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    const/4 p3, 0x7

    .line 774
    iget v0, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onRelationshipValidationResult:F

    const-string/jumbo v2, "viewportWidth"

    invoke-static {p1, p2, v2, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onRelationshipValidationResult:F

    const/16 p3, 0x8

    .line 778
    iget v0, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->asBinder:F

    const-string/jumbo v2, "viewportHeight"

    invoke-static {p1, p2, v2, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->asBinder:F

    .line 782
    iget p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onRelationshipValidationResult:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-lez p3, :cond_9

    .line 785
    iget p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->asBinder:F

    cmpg-float p3, p3, v0

    if-lez p3, :cond_8

    const/4 p3, 0x3

    .line 790
    iget v2, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onMessageChannelReady:F

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onMessageChannelReady:F

    .line 792
    iget p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onPostMessage:F

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onPostMessage:F

    .line 794
    iget p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onMessageChannelReady:F

    cmpg-float p3, p3, v0

    if-lez p3, :cond_7

    .line 797
    iget p3, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onPostMessage:F

    cmpg-float p3, p3, v0

    if-lez p3, :cond_6

    const/4 p3, 0x4

    .line 804
    invoke-virtual {v1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getAlpha()F

    move-result v0

    const-string v2, "alpha"

    .line 803
    invoke-static {p1, p2, v2, p3, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    .line 805
    invoke-virtual {v1, p2}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->setAlpha(F)V

    .line 807
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 809
    iput-object p1, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onTransact:Ljava/lang/String;

    .line 810
    iget-object p2, v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->newSession:Lo/postOrRun;

    invoke-virtual {p2, p1, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    .line 798
    :cond_6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 795
    :cond_7
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 786
    :cond_8
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 783
    :cond_9
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private onNavigationEvent()Z
    .locals 3

    .line 907
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 908
    invoke-virtual {p0}, Lo/MediaSessionCompatApi23$CallbackProxy;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-static {p0}, Lo/MediaMetadataCompat$BitmapKey;->onRelationshipValidationResult(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method static onPostMessage(IF)I
    .locals 2

    .line 687
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static onPostMessage(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lo/MediaSessionCompatApi23$CallbackProxy;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    .line 645
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 646
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>()V

    .line 647
    invoke-static {p0, p1, p2}, Lo/containsKey;->extraCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 648
    new-instance p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;

    iget-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 649
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    .line 654
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 655
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 657
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    :cond_2
    if-ne v3, v4, :cond_3

    .line 664
    invoke-static {p0, p1, v2, p2}, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/MediaSessionCompatApi23$CallbackProxy;

    move-result-object p0

    return-object p0

    .line 662
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 668
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 666
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 345
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->newSession:Lo/postOrRun;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method ICustomTabsCallback(Z)V
    .locals 0

    .line 902
    iput-boolean p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asInterface:Z

    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lo/MediaSessionCompatApi24;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 587
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 360
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 367
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 373
    :cond_1
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onPostMessage:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    .line 379
    :cond_2
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 380
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asBinder:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 381
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 382
    iget-object v3, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 384
    iget-object v4, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 385
    iget-object v5, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onTransact:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 393
    :cond_4
    iget-object v4, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 394
    iget-object v4, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 395
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 396
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    .line 402
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 403
    iget-object v5, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v8, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    invoke-direct {p0}, Lo/MediaSessionCompatApi23$CallbackProxy;->onNavigationEvent()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 408
    iget-object v5, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    .line 409
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    :cond_6
    iget-object v5, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {v2, v1, v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent(II)V

    .line 418
    iget-boolean v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->asInterface:Z

    if-nez v2, :cond_7

    .line 419
    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {v2, v1, v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady(II)V

    goto :goto_0

    .line 421
    :cond_7
    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {v2}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady()Z

    move-result v2

    if-nez v2, :cond_8

    .line 422
    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {v2, v1, v3}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady(II)V

    .line 423
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {v1}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage()V

    .line 426
    :cond_8
    :goto_0
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v2, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 427
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 432
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 925
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 928
    :cond_0
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 465
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onPostMessage:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 350
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 352
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;

    iget-object v1, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    .line 355
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    return-object v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 577
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 581
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onPostMessage:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 568
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 572
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onMessageChannelReady:F

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 559
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lo/MediaSessionCompatApi24;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/MediaSessionCompatApi23$CallbackProxy;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Lo/MediaMetadataCompat$BitmapKey;->onNavigationEvent(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 713
    new-instance v1, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-direct {v1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;-><init>()V

    .line 714
    iput-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    .line 716
    sget-object v1, Lo/MediaSessionCompatApi21$QueueItem;->onNavigationEvent:[I

    if-nez p4, :cond_1

    .line 1253
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1255
    invoke-virtual {p4, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 719
    :goto_0
    invoke-direct {p0, v1, p2, p4}, Lo/MediaSessionCompatApi23$CallbackProxy;->onNavigationEvent(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 720
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    const/4 v1, 0x1

    .line 722
    iput-boolean v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsService:Z

    .line 723
    invoke-direct {p0, p1, p2, p3, p4}, Lo/MediaSessionCompatApi23$CallbackProxy;->onNavigationEvent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 725
    iget-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 933
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 937
    :cond_0
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 599
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-boolean v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 532
    :cond_0
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 534
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 277
    invoke-super {p0}, Lo/MediaSessionCompatApi24;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 332
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 337
    :cond_0
    iget-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lo/MediaSessionCompatApi24;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 338
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    invoke-direct {v0, v1}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;)V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onRelationshipValidationResult:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method onMessageChannelReady(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 483
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onStateChange([I)Z
    .locals 5

    .line 539
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 545
    iget-object v2, v1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_1

    .line 546
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    iget-object v4, v1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v2, v4}, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    .line 547
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x1

    .line 550
    :cond_1
    invoke-virtual {v1}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent([I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 551
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 942
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 946
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/MediaSessionCompatApi24;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 441
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 447
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->setRootAlpha(I)V

    .line 448
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 604
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    iput-boolean p1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lo/MediaSessionCompatApi24;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Lo/MediaSessionCompatApi24;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 459
    :cond_0
    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onPostMessage:Landroid/graphics/ColorFilter;

    .line 460
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lo/MediaSessionCompatApi24;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Lo/MediaSessionCompatApi24;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Lo/MediaSessionCompatApi24;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lo/MediaSessionCompatApi24;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 493
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 504
    iget-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 505
    iput-object p1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 506
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    .line 507
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback:Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;

    .line 519
    iget-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 520
    iput-object p1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    .line 521
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy;->onMessageChannelReady:Landroid/graphics/PorterDuffColorFilter;

    .line 522
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 951
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 954
    :cond_0
    invoke-super {p0, p1, p2}, Lo/MediaSessionCompatApi24;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 959
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 963
    :cond_0
    invoke-super {p0, p1}, Lo/MediaSessionCompatApi24;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
