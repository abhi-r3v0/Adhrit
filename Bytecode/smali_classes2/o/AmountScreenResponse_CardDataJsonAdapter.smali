.class public Lo/AmountScreenResponse_CardDataJsonAdapter;
.super Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/setExternalTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setExternalTextView<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lo/setExternalTextView;Lo/RawBankAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lo/setExternalTextView<",
            "Ljava/lang/String;",
            ">;",
            "Lo/RawBankAccount;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;-><init>(ILjava/lang/String;Lo/RawBankAccount;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AmountScreenResponse_CardDataJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    iput-object p3, p0, Lo/AmountScreenResponse_CardDataJsonAdapter;->ICustomTabsCallback:Lo/setExternalTextView;

    return-void
.end method


# virtual methods
.method protected final extraCallback(Lo/initiateUPI;)Lo/BankAccountSyncRequestJsonAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/initiateUPI;",
            ")",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lo/initiateUPI;->ICustomTabsCallback:[B

    iget-object v2, p1, Lo/initiateUPI;->onNavigationEvent:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    const-string v4, "Content-Type"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "charset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v3, v6, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lo/initiateUPI;->ICustomTabsCallback:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-static {p1}, Lo/Template$$Parcelable;->onPostMessage(Lo/initiateUPI;)Lo/GameWebViewFragment$MyJavascriptInterface;

    move-result-object p1

    invoke-static {v0, p1}, Lo/BankAccountSyncRequestJsonAdapter;->onPostMessage(Ljava/lang/Object;Lo/GameWebViewFragment$MyJavascriptInterface;)Lo/BankAccountSyncRequestJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/AmountScreenResponse_CardDataJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method protected onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/AmountScreenResponse_CardDataJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/AmountScreenResponse_CardDataJsonAdapter;->ICustomTabsCallback:Lo/setExternalTextView;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lo/setExternalTextView;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
