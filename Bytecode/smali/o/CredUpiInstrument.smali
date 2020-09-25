.class public final Lo/CredUpiInstrument;
.super Lo/t;
.source ""


# static fields
.field private static final onPostMessage:Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:J

.field private final ICustomTabsCallback$Stub:J

.field private final asBinder:J

.field private final asInterface:J

.field private final newSession:Ljava/lang/Object;

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:J

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/CredUpiInstrument;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLjava/lang/Object;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lo/t;-><init>()V

    .line 132
    iput-wide p1, p0, Lo/CredUpiInstrument;->onMessageChannelReady:J

    .line 133
    iput-wide p3, p0, Lo/CredUpiInstrument;->ICustomTabsCallback:J

    .line 134
    iput-wide p5, p0, Lo/CredUpiInstrument;->onNavigationEvent:J

    .line 135
    iput-wide p7, p0, Lo/CredUpiInstrument;->asBinder:J

    .line 136
    iput-wide p9, p0, Lo/CredUpiInstrument;->ICustomTabsCallback$Stub:J

    .line 137
    iput-wide p11, p0, Lo/CredUpiInstrument;->asInterface:J

    .line 138
    iput-boolean p13, p0, Lo/CredUpiInstrument;->onTransact:Z

    .line 139
    iput-boolean p14, p0, Lo/CredUpiInstrument;->onRelationshipValidationResult:Z

    .line 140
    iput-object p15, p0, Lo/CredUpiInstrument;->newSession:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-static {p1, v0, v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    .line 199
    sget-object p1, Lo/CredUpiInstrument;->onPostMessage:Ljava/lang/Object;

    return-object p1
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 1

    .line 193
    sget-object v0, Lo/CredUpiInstrument;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 151
    invoke-static {v3, v1, v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    if-eqz p3, :cond_0

    .line 152
    iget-object v1, v0, Lo/CredUpiInstrument;->newSession:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 153
    iget-wide v1, v0, Lo/CredUpiInstrument;->asInterface:J

    .line 154
    iget-boolean v4, v0, Lo/CredUpiInstrument;->onRelationshipValidationResult:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v4, p4, v7

    if-eqz v4, :cond_2

    .line 155
    iget-wide v7, v0, Lo/CredUpiInstrument;->asBinder:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_1

    :goto_1
    move-wide v10, v5

    goto :goto_2

    :cond_1
    add-long v1, v1, p4

    cmp-long v4, v1, v7

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide v10, v1

    .line 166
    :goto_2
    iget-wide v4, v0, Lo/CredUpiInstrument;->onMessageChannelReady:J

    iget-wide v6, v0, Lo/CredUpiInstrument;->ICustomTabsCallback:J

    iget-boolean v8, v0, Lo/CredUpiInstrument;->onTransact:Z

    iget-boolean v9, v0, Lo/CredUpiInstrument;->onRelationshipValidationResult:Z

    iget-wide v12, v0, Lo/CredUpiInstrument;->asBinder:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-wide v1, v0, Lo/CredUpiInstrument;->ICustomTabsCallback$Stub:J

    move-wide/from16 v16, v1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Lo/t$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;JJZZJJIIJ)Lo/t$onMessageChannelReady;

    move-result-object v1

    return-object v1
.end method

.method public final onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 186
    invoke-static {p1, v0, v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    if-eqz p3, :cond_0

    .line 187
    sget-object p1, Lo/CredUpiInstrument;->onPostMessage:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 188
    iget-wide v4, p0, Lo/CredUpiInstrument;->onNavigationEvent:J

    iget-wide v6, p0, Lo/CredUpiInstrument;->ICustomTabsCallback$Stub:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lo/t$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lo/t$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
