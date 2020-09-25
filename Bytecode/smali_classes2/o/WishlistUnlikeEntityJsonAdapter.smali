.class final synthetic Lo/WishlistUnlikeEntityJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field static final synthetic extraCallback:[I

.field private static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->values()[Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/WishlistUnlikeEntityJsonAdapter;->extraCallback:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->extraCallback:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-virtual {v2}, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/WishlistUnlikeEntityJsonAdapter;->extraCallback:[I

    sget-object v3, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->onPostMessage:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-virtual {v3}, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/WishlistUnlikeEntityJsonAdapter;->extraCallback:[I

    sget-object v4, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->onNavigationEvent:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-virtual {v4}, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lo/WishlistUnlikeEntityJsonAdapter;->extraCallback:[I

    sget-object v4, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->onMessageChannelReady:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-virtual {v4}, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->values()[Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lo/WishlistUnlikeEntityJsonAdapter;->onPostMessage:[I

    :try_start_4
    sget-object v4, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->onPostMessage:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    invoke-virtual {v4}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lo/WishlistUnlikeEntityJsonAdapter;->onPostMessage:[I

    sget-object v3, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->extraCallback:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    invoke-virtual {v3}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lo/WishlistUnlikeEntityJsonAdapter;->onPostMessage:[I

    sget-object v1, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->onMessageChannelReady:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    invoke-virtual {v1}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
