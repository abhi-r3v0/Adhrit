.class public final Lo/ensureLogoView$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFFacebookDeferredDeeplink$5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureLogoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureLogoView$ICustomTabsCallback$onMessageChannelReady;,
        Lo/ensureLogoView$ICustomTabsCallback$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/helper/sharedpref/SharedPrefDelegate$Companion;",
        "",
        "()V",
        "InitializedValue",
        "UninitializedValue",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/AFFacebookDeferredDeeplink$5;

.field private final onMessageChannelReady:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lo/AFFacebookDeferredDeeplink$5;)V
    .locals 0

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput-object p1, p0, Lo/ensureLogoView$ICustomTabsCallback;->onMessageChannelReady:Landroid/content/res/Resources;

    .line 1030
    iput-object p2, p0, Lo/ensureLogoView$ICustomTabsCallback;->extraCallback:Lo/AFFacebookDeferredDeeplink$5;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1042
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1045
    instance-of v0, p1, Lo/onAppLinkFetchFailed;

    if-eqz v0, :cond_3

    .line 1046
    check-cast p1, Lo/onAppLinkFetchFailed;

    .line 1047
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lo/ensureLogoView$ICustomTabsCallback;->onMessageChannelReady:Landroid/content/res/Resources;

    .line 1159
    iget-object v2, p1, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    .line 1048
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2200
    iget v1, p1, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3200
    iget v1, p1, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 4205
    iget v1, p1, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    if-eq v1, v3, :cond_1

    .line 5205
    iget v1, p1, Lo/onAppLinkFetchFailed;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 1065
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    .line 1054
    :cond_2
    :try_start_1
    new-instance v1, Lo/setAnimation;

    .line 6200
    iget v2, p1, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    .line 6205
    iget p1, p1, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    .line 1057
    invoke-direct {v1, v0, v2, p1}, Lo/setAnimation;-><init>(Landroid/graphics/drawable/Drawable;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v1

    .line 1059
    :cond_3
    :try_start_2
    iget-object v0, p0, Lo/ensureLogoView$ICustomTabsCallback;->extraCallback:Lo/AFFacebookDeferredDeeplink$5;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/ensureLogoView$ICustomTabsCallback;->extraCallback:Lo/AFFacebookDeferredDeeplink$5;

    .line 1060
    invoke-interface {v0, p1}, Lo/AFFacebookDeferredDeeplink$5;->onNavigationEvent(Lo/convertToJsonObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1061
    iget-object v0, p0, Lo/ensureLogoView$ICustomTabsCallback;->extraCallback:Lo/AFFacebookDeferredDeeplink$5;

    invoke-interface {v0, p1}, Lo/AFFacebookDeferredDeeplink$5;->extraCallback(Lo/convertToJsonObject;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1065
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    :cond_4
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1066
    throw p1
.end method

.method public final onNavigationEvent(Lo/convertToJsonObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
