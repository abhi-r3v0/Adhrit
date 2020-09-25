.class public final Lo/UpiBankLimitJsonAdapter;
.super Lo/SimDetailJsonAdapter;
.source ""


# instance fields
.field private final onPostMessage:Lo/UpiBalanceResponseJsonAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 33
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lo/DreamAppGlideModule;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lo/DreamAppGlideModule;-><init>([B)V

    .line 35
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result p1

    .line 36
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v0

    .line 37
    new-instance v1, Lo/UpiBalanceResponseJsonAdapter;

    invoke-direct {v1, p1, v0}, Lo/UpiBalanceResponseJsonAdapter;-><init>(II)V

    iput-object v1, p0, Lo/UpiBankLimitJsonAdapter;->onPostMessage:Lo/UpiBalanceResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method protected final extraCallback([BIZ)Lo/UpiLinkAccountResponse;
    .locals 1

    if-eqz p3, :cond_0

    .line 43
    iget-object p3, p0, Lo/UpiBankLimitJsonAdapter;->onPostMessage:Lo/UpiBalanceResponseJsonAdapter;

    invoke-virtual {p3}, Lo/UpiBalanceResponseJsonAdapter;->extraCallback()V

    .line 45
    :cond_0
    new-instance p3, Lo/UpiLinkAccountResponse;

    iget-object v0, p0, Lo/UpiBankLimitJsonAdapter;->onPostMessage:Lo/UpiBalanceResponseJsonAdapter;

    invoke-virtual {v0, p1, p2}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lo/UpiLinkAccountResponse;-><init>(Ljava/util/List;)V

    return-object p3
.end method

.method public final synthetic onNavigationEvent([BIZ)Lo/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lo/UpiBankLimitJsonAdapter;->extraCallback([BIZ)Lo/UpiLinkAccountResponse;

    move-result-object p1

    return-object p1
.end method
