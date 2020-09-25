.class public final Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/ZeroSpinsLeftMetaJsonAdapter;Lo/ZeroSpinsLeftMeta;)V
    .locals 3

    invoke-virtual {p1}, Lo/ZeroSpinsLeftMeta;->onMessageChannelReady()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/ZeroSpinsLeftMeta;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lo/ZeroSpinsLeftMeta;->onMessageChannelReady()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lo/ZeroSpinsLeftMeta;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/ZeroSpinsLeftMeta;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/ZeroSpinsLeftMeta;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lo/ZeroSpinsLeftMetaJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AfmaVersion can\'t be null or empty. Please set up afmaVersion in CsiConfiguration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context can\'t be null. Please set up context in CsiConfiguration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
