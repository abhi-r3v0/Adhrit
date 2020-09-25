.class public final Lo/AppsFlyerInAppPurchaseValidatorListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lo/onPostMessage$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.facebook.imagepipeline.nativecode.WebpTranscoderImpl"

    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onPostMessage$extraCallback;

    sput-object v0, Lo/AppsFlyerInAppPurchaseValidatorListener;->onMessageChannelReady:Lo/onPostMessage$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/onPostMessage$extraCallback;
    .locals 1

    .line 30
    sget-object v0, Lo/AppsFlyerInAppPurchaseValidatorListener;->onMessageChannelReady:Lo/onPostMessage$extraCallback;

    return-object v0
.end method
