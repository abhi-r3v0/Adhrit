.class public Lo/getFingerprint;
.super Lo/isCardInactive;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/isCardInactive;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback$Stub()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
