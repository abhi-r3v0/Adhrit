.class public final Lo/getText;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ActivityChooserModel$ActivitySorter;


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

.field public static final synthetic $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5528
    invoke-static {}, Lo/correctDataPath$extraCallback;->values()[Lo/correctDataPath$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/correctDataPath$extraCallback;->OK:Lo/correctDataPath$extraCallback;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    sget-object v3, Lo/correctDataPath$extraCallback;->BAD_CONFIG:Lo/correctDataPath$extraCallback;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    sget-object v3, Lo/correctDataPath$extraCallback;->AUTH_ERROR:Lo/correctDataPath$extraCallback;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 5496
    :catch_2
    invoke-static {}, Lo/isRelevant$onMessageChannelReady;->values()[Lo/isRelevant$onMessageChannelReady;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    :try_start_3
    sget-object v3, Lo/isRelevant$onMessageChannelReady;->OK:Lo/isRelevant$onMessageChannelReady;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    sget-object v2, Lo/isRelevant$onMessageChannelReady;->BAD_CONFIG:Lo/isRelevant$onMessageChannelReady;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lo/MediaMetadataCompat;
    .locals 2

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 4058
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 142
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 143
    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 144
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 146
    iget p0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Lo/MediaMetadataCompat;->ICustomTabsCallback(I)Lo/MediaMetadataCompat;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    .line 150
    invoke-static {p1, p0, p2}, Lo/MediaMetadataCompat;->ICustomTabsCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lo/MediaMetadataCompat;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 154
    :cond_2
    invoke-static {p3}, Lo/MediaMetadataCompat;->ICustomTabsCallback(I)Lo/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 1058
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return p4

    .line 74
    :cond_1
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method public static extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 3058
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return p4

    .line 108
    :cond_1
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static onMessageChannelReady(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 2058
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return p4

    .line 91
    :cond_1
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onMessageChannelReady(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 5008
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lt v0, p1, :cond_1

    .line 5011
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p2, :cond_0

    .line 5015
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sub-int p3, p2, p1

    .line 5018
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr p3, v1

    .line 5020
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    .line 5022
    iput p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    .line 5023
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    .line 5012
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom point of input rect can\'t be bigger than maxTop"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5009
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "top point of input rect can\'t be lower than minTop"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
