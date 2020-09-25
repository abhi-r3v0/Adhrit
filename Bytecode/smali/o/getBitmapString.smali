.class public final Lo/getBitmapString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentModeAdapter;
.implements Lo/PaymentModeAdapter$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getBitmapString$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:J

.field extraCallback:J

.field private onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

.field private onNavigationEvent:[Lo/getBitmapString$extraCallback;

.field public final onPostMessage:Lo/PaymentModeAdapter;


# direct methods
.method public constructor <init>(Lo/PaymentModeAdapter;ZJJ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    const/4 p1, 0x0

    new-array p1, p1, [Lo/getBitmapString$extraCallback;

    .line 63
    iput-object p1, p0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    :goto_0
    iput-wide p1, p0, Lo/getBitmapString;->ICustomTabsCallback$Stub:J

    .line 65
    iput-wide p3, p0, Lo/getBitmapString;->extraCallback:J

    .line 66
    iput-wide p5, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    return-void
.end method

.method private extraCallback(JLo/t$d;)Lo/t$d;
    .locals 9

    .line 225
    iget-wide v0, p3, Lo/t$d;->onTransact:J

    iget-wide v2, p0, Lo/getBitmapString;->extraCallback:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    .line 226
    invoke-static/range {v0 .. v5}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JJJ)J

    move-result-wide v0

    .line 228
    iget-wide v2, p3, Lo/t$d;->ICustomTabsCallback$Stub:J

    iget-wide v4, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_0
    const-wide/16 v4, 0x0

    .line 229
    invoke-static/range {v2 .. v7}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JJJ)J

    move-result-wide p1

    .line 233
    iget-wide v2, p3, Lo/t$d;->onTransact:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v2, p3, Lo/t$d;->ICustomTabsCallback$Stub:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-object p3

    .line 237
    :cond_1
    new-instance p3, Lo/t$d;

    invoke-direct {p3, v0, v1, p1, p2}, Lo/t$d;-><init>(JJ)V

    return-object p3
.end method

.method private static onMessageChannelReady(J[Lo/InstrumentView;)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 252
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v1}, Lo/InstrumentView;->asInterface()Lo/p$a;

    move-result-object v1

    .line 255
    iget-object v1, v1, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-static {v1}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 7

    .line 195
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->ICustomTabsCallback()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 196
    iget-wide v4, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final ICustomTabsCallback(JLo/t$d;)J
    .locals 3

    .line 185
    iget-wide v0, p0, Lo/getBitmapString;->extraCallback:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/getBitmapString;->extraCallback(JLo/t$d;)Lo/t$d;

    move-result-object p3

    .line 190
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/PaymentModeAdapter;->ICustomTabsCallback(JLo/t$d;)J

    move-result-wide p1

    return-wide p1
.end method

.method final asInterface()Z
    .locals 5

    .line 221
    iget-wide v0, p0, Lo/getBitmapString;->ICustomTabsCallback$Stub:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()J
    .locals 7

    .line 160
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->extraCallback()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 161
    iget-wide v4, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 100
    array-length v2, v1

    new-array v2, v2, [Lo/getBitmapString$extraCallback;

    iput-object v2, v0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    .line 101
    array-length v2, v1

    new-array v9, v2, [Lo/CardInstrumentJsonAdapter;

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 102
    :goto_0
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    .line 103
    iget-object v3, v0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    aget-object v4, v1, v2

    check-cast v4, Lo/getBitmapString$extraCallback;

    aput-object v4, v3, v2

    .line 104
    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    iget-object v11, v3, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    :cond_0
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, v0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 107
    invoke-interface/range {v2 .. v8}, Lo/PaymentModeAdapter;->extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J

    move-result-wide v2

    .line 110
    invoke-virtual {p0}, Lo/getBitmapString;->asInterface()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lo/getBitmapString;->extraCallback:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_2

    move-object v6, p1

    .line 112
    invoke-static {v4, v5, p1}, Lo/getBitmapString;->onMessageChannelReady(J[Lo/InstrumentView;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide v4, v0, Lo/getBitmapString;->ICustomTabsCallback$Stub:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_4

    .line 115
    iget-wide v4, v0, Lo/getBitmapString;->extraCallback:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-wide v4, v0, Lo/getBitmapString;->ICustomTabsCallback:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 119
    :goto_4
    array-length v4, v1

    if-ge v10, v4, :cond_8

    .line 120
    aget-object v4, v9, v10

    if-nez v4, :cond_5

    .line 121
    iget-object v4, v0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    aput-object v11, v4, v10

    goto :goto_5

    .line 122
    :cond_5
    aget-object v4, v1, v10

    if-eqz v4, :cond_6

    iget-object v4, v0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    aget-object v4, v4, v10

    iget-object v4, v4, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    aget-object v5, v9, v10

    if-eq v4, v5, :cond_7

    .line 123
    :cond_6
    iget-object v4, v0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    new-instance v5, Lo/getBitmapString$extraCallback;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Lo/getBitmapString$extraCallback;-><init>(Lo/getBitmapString;Lo/CardInstrumentJsonAdapter;)V

    aput-object v5, v4, v10

    .line 125
    :cond_7
    :goto_5
    iget-object v4, v0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    return-wide v2
.end method

.method public final extraCallback(Lo/PaymentModeAdapter;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lo/getBitmapString;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->extraCallback(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final extraCallback(J)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->extraCallback(J)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()J
    .locals 9

    .line 142
    invoke-virtual {p0}, Lo/getBitmapString;->asInterface()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 143
    iget-wide v3, p0, Lo/getBitmapString;->ICustomTabsCallback$Stub:J

    .line 144
    iput-wide v1, p0, Lo/getBitmapString;->ICustomTabsCallback$Stub:J

    .line 146
    invoke-virtual {p0}, Lo/getBitmapString;->onMessageChannelReady()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    .line 149
    :cond_1
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onMessageChannelReady()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 153
    :cond_2
    iget-wide v0, p0, Lo/getBitmapString;->extraCallback:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 154
    iget-wide v0, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    return-wide v3
.end method

.method public final onMessageChannelReady(J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 170
    iput-wide v0, p0, Lo/getBitmapString;->ICustomTabsCallback$Stub:J

    .line 171
    iget-object v0, p0, Lo/getBitmapString;->onNavigationEvent:[Lo/getBitmapString$extraCallback;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {v4}, Lo/getBitmapString$extraCallback;->ICustomTabsCallback()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->onMessageChannelReady(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_2

    .line 177
    iget-wide p1, p0, Lo/getBitmapString;->extraCallback:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    return-wide v0
.end method

.method public final onNavigationEvent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(J)V
    .locals 1

    .line 137
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->onNavigationEvent(J)V

    return-void
.end method

.method public final onNavigationEvent(JZ)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/PaymentModeAdapter;->onNavigationEvent(JZ)V

    return-void
.end method

.method public final bridge synthetic onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V
    .locals 0

    .line 33
    check-cast p1, Lo/PaymentModeAdapter;

    invoke-virtual {p0, p1}, Lo/getBitmapString;->onNavigationEvent(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/getBitmapString;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    .line 84
    iget-object p1, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {p1, p0, p2, p3}, Lo/PaymentModeAdapter;->onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V

    return-void
.end method

.method public final onNavigationEvent(Lo/PaymentModeAdapter;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lo/getBitmapString;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage()Lo/JuspaySessionToken;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onPostMessage()Lo/JuspaySessionToken;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(JJ)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lo/getBitmapString;->extraCallback:J

    .line 78
    iput-wide p3, p0, Lo/getBitmapString;->ICustomTabsCallback:J

    return-void
.end method
