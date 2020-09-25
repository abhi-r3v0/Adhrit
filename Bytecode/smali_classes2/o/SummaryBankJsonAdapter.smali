.class final Lo/SummaryBankJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Lo/CtasJsonAdapter;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lo/component20;->asBinder()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.webkit.resource.AUDIO_CAPTURE"

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.webkit.resource.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sput-object v0, Lo/SummaryBankJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/CtasJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/CtasJsonAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SummaryBankJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/SummaryBankJsonAdapter;->onPostMessage:Ljava/util/List;

    iput-object p3, p0, Lo/SummaryBankJsonAdapter;->onMessageChannelReady:Lo/CtasJsonAdapter;

    return-void
.end method


# virtual methods
.method final extraCallback([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p1, v3

    iget-object v5, p0, Lo/SummaryBankJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    const-string v8, "android.webkit.resource."

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    sget-object v5, Lo/SummaryBankJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v5, p0, Lo/SummaryBankJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    sget-object v6, Lo/SummaryBankJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object v5, p0, Lo/SummaryBankJsonAdapter;->onMessageChannelReady:Lo/CtasJsonAdapter;

    invoke-virtual {v5, v4}, Lo/CtasJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lo/SummaryBankJsonAdapter;->onMessageChannelReady:Lo/CtasJsonAdapter;

    invoke-virtual {v5, v4}, Lo/CtasJsonAdapter;->onPostMessage(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method
