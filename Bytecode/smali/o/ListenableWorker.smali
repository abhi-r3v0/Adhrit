.class public final Lo/ListenableWorker;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

.field private static final ICustomTabsCallback$Stub:[B

.field private static final asInterface:[B

.field private static final extraCallback:[B

.field public static final onMessageChannelReady:Z

.field private static onNavigationEvent:Z

.field private static final onPostMessage:[B

.field private static final onTransact:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/ListenableWorker;->onMessageChannelReady:Z

    .line 1090
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 1094
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_1

    const-string v0, "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

    .line 1097
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1098
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1099
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1100
    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1106
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v0, v1, :cond_1

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :cond_1
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lo/ListenableWorker;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    .line 27
    sput-boolean v3, Lo/ListenableWorker;->onNavigationEvent:Z

    const-string v0, "RIFF"

    .line 76
    invoke-static {v0}, Lo/ListenableWorker;->onPostMessage(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ListenableWorker;->extraCallback:[B

    const-string v0, "WEBP"

    .line 77
    invoke-static {v0}, Lo/ListenableWorker;->onPostMessage(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ListenableWorker;->onPostMessage:[B

    const-string v0, "VP8 "

    .line 80
    invoke-static {v0}, Lo/ListenableWorker;->onPostMessage(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ListenableWorker;->asInterface:[B

    const-string v0, "VP8L"

    .line 82
    invoke-static {v0}, Lo/ListenableWorker;->onPostMessage(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ListenableWorker;->ICustomTabsCallback$Stub:[B

    const-string v0, "VP8X"

    .line 83
    invoke-static {v0}, Lo/ListenableWorker;->onPostMessage(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/ListenableWorker;->onTransact:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback([B)Z
    .locals 4

    .line 157
    sget-object v0, Lo/ListenableWorker;->onTransact:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result v0

    const/16 v1, 0x14

    .line 159
    aget-byte p0, p0, v1

    const/16 v1, 0x10

    and-int/2addr p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public static extraCallback()Lo/ArrayCreatingInputMerger;
    .locals 2

    .line 30
    sget-boolean v0, Lo/ListenableWorker;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lo/ListenableWorker;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.webpsupport.WebpBitmapFactoryImpl"

    .line 37
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ArrayCreatingInputMerger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    const/4 v1, 0x1

    .line 41
    sput-boolean v1, Lo/ListenableWorker;->onNavigationEvent:Z

    return-object v0
.end method

.method public static extraCallback([B)Z
    .locals 2

    .line 142
    sget-object v0, Lo/ListenableWorker;->asInterface:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result p0

    return p0
.end method

.method public static extraCallback([BI)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/16 p1, 0xc

    .line 151
    sget-object v0, Lo/ListenableWorker;->onTransact:[B

    .line 152
    invoke-static {p0, p1, v0}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent([B)Z
    .locals 4

    .line 135
    sget-object v0, Lo/ListenableWorker;->onTransact:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result v0

    const/16 v1, 0x14

    .line 137
    aget-byte p0, p0, v1

    const/4 v1, 0x2

    and-int/2addr p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public static onPostMessage([B)Z
    .locals 2

    .line 146
    sget-object v0, Lo/ListenableWorker;->ICustomTabsCallback$Stub:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result p0

    return p0
.end method

.method public static onPostMessage([BI)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-lt p1, v1, :cond_0

    .line 174
    sget-object p1, Lo/ListenableWorker;->extraCallback:[B

    .line 175
    invoke-static {p0, v0, p1}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    sget-object v1, Lo/ListenableWorker;->onPostMessage:[B

    .line 176
    invoke-static {p0, p1, v1}, Lo/ListenableWorker;->onPostMessage([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static onPostMessage([BI[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 188
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    add-int v2, v1, p1

    .line 189
    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private static onPostMessage(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "ASCII"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
