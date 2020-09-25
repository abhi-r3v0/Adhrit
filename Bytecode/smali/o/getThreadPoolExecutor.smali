.class public final Lo/getThreadPoolExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isEncrypt;


# instance fields
.field final ICustomTabsCallback:Lo/isEncrypt;

.field private final extraCallback:Lo/AppsFlyerLib;

.field private final onMessageChannelReady:Lo/isEncrypt;

.field final onNavigationEvent:Lo/isEncrypt;

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setProgress;",
            "Lo/isEncrypt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/isEncrypt;Lo/isEncrypt;Lo/AppsFlyerLib;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lo/getThreadPoolExecutor;-><init>(Lo/isEncrypt;Lo/isEncrypt;Lo/AppsFlyerLib;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lo/isEncrypt;Lo/isEncrypt;Lo/AppsFlyerLib;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isEncrypt;",
            "Lo/isEncrypt;",
            "Lo/AppsFlyerLib;",
            "Ljava/util/Map<",
            "Lo/setProgress;",
            "Lo/isEncrypt;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p4, Lo/getThreadPoolExecutor$2;

    invoke-direct {p4, p0}, Lo/getThreadPoolExecutor$2;-><init>(Lo/getThreadPoolExecutor;)V

    iput-object p4, p0, Lo/getThreadPoolExecutor;->onMessageChannelReady:Lo/isEncrypt;

    .line 84
    iput-object p1, p0, Lo/getThreadPoolExecutor;->onNavigationEvent:Lo/isEncrypt;

    .line 85
    iput-object p2, p0, Lo/getThreadPoolExecutor;->ICustomTabsCallback:Lo/isEncrypt;

    .line 86
    iput-object p3, p0, Lo/getThreadPoolExecutor;->extraCallback:Lo/AppsFlyerLib;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lo/getThreadPoolExecutor;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method private static extraCallback(Lo/onPostMessage$extraCallback;Lo/getRootAlpha;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostMessage$extraCallback;",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 217
    invoke-interface {p0}, Lo/onPostMessage$extraCallback;->onNavigationEvent()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 218
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;
    .locals 2

    .line 1326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 1327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 1209
    :cond_1
    iget-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    if-eqz v0, :cond_2

    .line 109
    sget-object v1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-ne v0, v1, :cond_3

    .line 111
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lo/pauseAnimation;->onPostMessage(Ljava/io/InputStream;)Lo/setProgress;

    move-result-object v0

    .line 2165
    iput-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 114
    :cond_3
    iget-object v1, p0, Lo/getThreadPoolExecutor;->onPostMessage:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 115
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isEncrypt;

    if-eqz v0, :cond_4

    .line 117
    invoke-interface {v0, p1, p2, p3, p4}, Lo/isEncrypt;->onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;

    move-result-object p1

    return-object p1

    .line 120
    :cond_4
    iget-object v0, p0, Lo/getThreadPoolExecutor;->onMessageChannelReady:Lo/isEncrypt;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/isEncrypt;->onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/onAppLinkFetchFailed;
    .locals 6

    .line 178
    iget-object v0, p0, Lo/getThreadPoolExecutor;->extraCallback:Lo/AppsFlyerLib;

    iget-object v2, p4, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p2

    .line 179
    invoke-interface/range {v0 .. v5}, Lo/AppsFlyerLib;->ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo/getRootAlpha;

    move-result-object p2

    const/4 p4, 0x0

    .line 182
    :try_start_0
    invoke-static {p4, p2}, Lo/getThreadPoolExecutor;->extraCallback(Lo/onPostMessage$extraCallback;Lo/getRootAlpha;)V

    .line 183
    new-instance p4, Lo/onAppLinkFetchFailed;

    .line 4326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 4327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 4218
    :cond_1
    iget v0, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    .line 5326
    iget v1, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_2

    iget v1, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_3

    .line 5327
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 5224
    :cond_3
    iget p1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 187
    invoke-direct {p4, p2, p3, v0, p1}, Lo/onAppLinkFetchFailed;-><init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {p2}, Lo/getRootAlpha;->close()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lo/getRootAlpha;->close()V

    throw p1
.end method

.method public final onPostMessage(Lo/getCardBackgroundColor;Lo/AFDeepLinkManager;)Lo/onAppLinkFetchFailed;
    .locals 4

    .line 150
    iget-object v0, p0, Lo/getThreadPoolExecutor;->extraCallback:Lo/AppsFlyerLib;

    iget-object p2, p2, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    .line 151
    invoke-interface {v0, p1, p2, v1, v1}, Lo/AppsFlyerLib;->onMessageChannelReady(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/getRootAlpha;

    move-result-object p2

    .line 154
    :try_start_0
    invoke-static {v1, p2}, Lo/getThreadPoolExecutor;->extraCallback(Lo/onPostMessage$extraCallback;Lo/getRootAlpha;)V

    .line 155
    new-instance v0, Lo/onAppLinkFetchFailed;

    sget-object v1, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    .line 2326
    iget v2, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v2, :cond_0

    iget v2, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v2, :cond_1

    .line 2327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 2218
    :cond_1
    iget v2, p1, Lo/getCardBackgroundColor;->onNavigationEvent:I

    .line 3326
    iget v3, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v3, :cond_2

    iget v3, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v3, :cond_3

    .line 3327
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3224
    :cond_3
    iget p1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 159
    invoke-direct {v0, p2, v1, v2, p1}, Lo/onAppLinkFetchFailed;-><init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p2}, Lo/getRootAlpha;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lo/getRootAlpha;->close()V

    throw p1
.end method
