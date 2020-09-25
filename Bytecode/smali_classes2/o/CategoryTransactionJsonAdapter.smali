.class public final Lo/CategoryTransactionJsonAdapter;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/Footer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lo/CategoryTransactionJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    new-instance v0, Lo/Footer;

    invoke-direct {v0, p2}, Lo/Footer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/CategoryTransactionJsonAdapter;->onMessageChannelReady:Lo/Footer;

    iput-object p1, p0, Lo/CategoryTransactionJsonAdapter;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    iget-object v0, p0, Lo/CategoryTransactionJsonAdapter;->onMessageChannelReady:Lo/Footer;

    iget-object v1, p0, Lo/CategoryTransactionJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Footer;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
