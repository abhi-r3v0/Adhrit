.class public final Lo/getDefaultOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentModeAdapter;
.implements Lo/PaymentModeAdapter$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDefaultOptions$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter;

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:J

.field private asInterface:J

.field public final extraCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field private onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

.field private onNavigationEvent:Lo/PaymentModeAdapter;

.field private final onPostMessage:Lo/PaymentRequest;

.field private onTransact:Lo/getDefaultOptions$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/InstrumentsCompleteJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lo/getDefaultOptions;->extraCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 68
    iput-object p3, p0, Lo/getDefaultOptions;->onPostMessage:Lo/PaymentRequest;

    .line 69
    iput-object p1, p0, Lo/getDefaultOptions;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter;

    .line 70
    iput-wide p4, p0, Lo/getDefaultOptions;->asInterface:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    iput-wide p1, p0, Lo/getDefaultOptions;->asBinder:J

    return-void
.end method

.method private ICustomTabsCallback(J)J
    .locals 5

    .line 220
    iget-wide v0, p0, Lo/getDefaultOptions;->asBinder:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 194
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback(JLo/t$d;)J
    .locals 1

    .line 189
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/PaymentModeAdapter;->ICustomTabsCallback(JLo/t$d;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 4

    .line 108
    iget-wide v0, p0, Lo/getDefaultOptions;->asInterface:J

    invoke-direct {p0, v0, v1}, Lo/getDefaultOptions;->ICustomTabsCallback(J)J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lo/getDefaultOptions;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter;

    iget-object v3, p0, Lo/getDefaultOptions;->onPostMessage:Lo/PaymentRequest;

    invoke-interface {v2, p1, v3, v0, v1}, Lo/InstrumentsCompleteJsonAdapter;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    .line 110
    iget-object v2, p0, Lo/getDefaultOptions;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {p1, p0, v0, v1}, Lo/PaymentModeAdapter;->onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V

    :cond_0
    return-void
.end method

.method public final asInterface()V
    .locals 2

    .line 119
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lo/getDefaultOptions;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter;

    invoke-interface {v1, v0}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V

    :cond_0
    return-void
.end method

.method public final extraCallback()J
    .locals 2

    .line 179
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 159
    iget-wide v1, v0, Lo/getDefaultOptions;->asBinder:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lo/getDefaultOptions;->asInterface:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 161
    iput-wide v3, v0, Lo/getDefaultOptions;->asBinder:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 163
    :goto_0
    iget-object v8, v0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lo/PaymentModeAdapter;->extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final extraCallback(Lo/PaymentModeAdapter;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lo/getDefaultOptions;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->extraCallback(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final extraCallback(J)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->extraCallback(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 174
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(J)J
    .locals 1

    .line 184
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->onMessageChannelReady(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final onMessageChannelReady(Lo/getDefaultOptions$ICustomTabsCallback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/getDefaultOptions;->onTransact:Lo/getDefaultOptions$ICustomTabsCallback;

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onNavigationEvent()V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lo/getDefaultOptions;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter;

    invoke-interface {v0}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 141
    iget-object v1, p0, Lo/getDefaultOptions;->onTransact:Lo/getDefaultOptions$ICustomTabsCallback;

    if-eqz v1, :cond_2

    .line 144
    iget-boolean v2, p0, Lo/getDefaultOptions;->ICustomTabsCallback$Stub:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lo/getDefaultOptions;->ICustomTabsCallback$Stub:Z

    .line 146
    iget-object v2, p0, Lo/getDefaultOptions;->extraCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-interface {v1, v2, v0}, Lo/getDefaultOptions$ICustomTabsCallback;->ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Ljava/io/IOException;)V

    :cond_1
    return-void

    .line 142
    :cond_2
    throw v0
.end method

.method public final onNavigationEvent(J)V
    .locals 1

    .line 199
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->onNavigationEvent(J)V

    return-void
.end method

.method public final onNavigationEvent(JZ)V
    .locals 1

    .line 169
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/PaymentModeAdapter;->onNavigationEvent(JZ)V

    return-void
.end method

.method public final synthetic onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V
    .locals 0

    .line 32
    check-cast p1, Lo/PaymentModeAdapter;

    invoke-virtual {p0, p1}, Lo/getDefaultOptions;->onPostMessage(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V
    .locals 0

    .line 126
    iput-object p1, p0, Lo/getDefaultOptions;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    .line 127
    iget-object p1, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    if-eqz p1, :cond_0

    .line 128
    iget-wide p2, p0, Lo/getDefaultOptions;->asInterface:J

    invoke-direct {p0, p2, p3}, Lo/getDefaultOptions;->ICustomTabsCallback(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lo/PaymentModeAdapter;->onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()Lo/JuspaySessionToken;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/getDefaultOptions;->onNavigationEvent:Lo/PaymentModeAdapter;

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onPostMessage()Lo/JuspaySessionToken;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/PaymentModeAdapter;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lo/getDefaultOptions;->onMessageChannelReady:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return-void
.end method
