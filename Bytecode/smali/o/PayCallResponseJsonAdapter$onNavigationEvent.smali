.class final Lo/PayCallResponseJsonAdapter$onNavigationEvent;
.super Lo/CardBinResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PayCallResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# direct methods
.method public constructor <init>(Lo/PaymentRequest;)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lo/CardBinResponse;-><init>(Lo/PaymentRequest;)V

    return-void
.end method

.method private onNavigationEvent(Lo/callAPI;)Lo/callAPI;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1188
    :cond_0
    invoke-virtual {p1}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    .line 1191
    invoke-virtual {p1, v3}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v5

    .line 1192
    instance-of v6, v5, Lo/Downsampler;

    if-eqz v6, :cond_1

    .line 1193
    check-cast v5, Lo/Downsampler;

    .line 1194
    iget-object v5, v5, Lo/Downsampler;->ICustomTabsCallback:Ljava/lang/String;

    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v4, :cond_3

    return-object p1

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v0, v1, -0x1

    .line 1206
    new-array v0, v0, [Lo/callAPI$onPostMessage;

    :goto_2
    if-ge v2, v1, :cond_7

    if-eq v2, v3, :cond_6

    if-ge v2, v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v2, -0x1

    .line 1210
    :goto_3
    invoke-virtual {p1, v2}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1213
    :cond_7
    new-instance p1, Lo/callAPI;

    invoke-direct {p1, v0}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    return-object p1
.end method


# virtual methods
.method public final onPostMessage(Lo/p$a;)V
    .locals 1

    .line 1176
    iget-object v0, p1, Lo/p$a;->asInterface:Lo/callAPI;

    invoke-direct {p0, v0}, Lo/PayCallResponseJsonAdapter$onNavigationEvent;->onNavigationEvent(Lo/callAPI;)Lo/callAPI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/p$a;->ICustomTabsCallback(Lo/callAPI;)Lo/p$a;

    move-result-object p1

    invoke-super {p0, p1}, Lo/CardBinResponse;->onPostMessage(Lo/p$a;)V

    return-void
.end method
