.class final Lo/getMessages;
.super Lo/AmountScreenResponse_CardDataJsonAdapter;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/util/Map;

.field private final synthetic onMessageChannelReady:Lo/getCurrencyType;

.field private final synthetic onPostMessage:[B


# direct methods
.method constructor <init>(Lo/getCashback_disabled;ILjava/lang/String;Lo/setExternalTextView;Lo/RawBankAccount;[BLjava/util/Map;Lo/getCurrencyType;)V
    .locals 0

    iput-object p6, p0, Lo/getMessages;->onPostMessage:[B

    iput-object p7, p0, Lo/getMessages;->ICustomTabsCallback:Ljava/util/Map;

    iput-object p8, p0, Lo/getMessages;->onMessageChannelReady:Lo/getCurrencyType;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/AmountScreenResponse_CardDataJsonAdapter;-><init>(ILjava/lang/String;Lo/setExternalTextView;Lo/RawBankAccount;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    iget-object v0, p0, Lo/getMessages;->ICustomTabsCallback:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/AmountScreenResponse_CardDataJsonAdapter;->extraCallback()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse_CardDataJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/getMessages;->onMessageChannelReady:Lo/getCurrencyType;

    invoke-virtual {v0, p1}, Lo/getCurrencyType;->onNavigationEvent(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lo/AmountScreenResponse_CardDataJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    iget-object v0, p0, Lo/getMessages;->onPostMessage:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/AmountScreenResponse_CardDataJsonAdapter;->onMessageChannelReady()[B

    move-result-object v0

    :cond_0
    return-object v0
.end method
