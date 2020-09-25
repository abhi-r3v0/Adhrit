.class public final Lo/getIP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:J

.field private asBinder:I

.field private asInterface:Lo/p$a;

.field private extraCallback:Lo/CryptLib;

.field private newSession:J

.field private onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/DreamAppGlideModule;

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lo/DreamAppGlideModule;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>([B)V

    iput-object v0, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lo/getIP;->ICustomTabsCallback:I

    .line 65
    iput-object p1, p0, Lo/getIP;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method private extraCallback()V
    .locals 5

    .line 169
    iget-object v0, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 170
    iget-object v1, p0, Lo/getIP;->asInterface:Lo/p$a;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lo/getIP;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/getIP;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/getLat;->extraCallback([BLjava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;

    move-result-object v1

    iput-object v1, p0, Lo/getIP;->asInterface:Lo/p$a;

    .line 172
    iget-object v2, p0, Lo/getIP;->extraCallback:Lo/CryptLib;

    invoke-interface {v2, v1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 174
    :cond_0
    invoke-static {v0}, Lo/getLat;->onMessageChannelReady([B)I

    move-result v1

    iput v1, p0, Lo/getIP;->asBinder:I

    const-wide/32 v1, 0xf4240

    .line 178
    invoke-static {v0}, Lo/getLat;->ICustomTabsCallback([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lo/getIP;->asInterface:Lo/p$a;

    iget v0, v0, Lo/p$a;->validateRelationship:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lo/getIP;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method private extraCallback(Lo/DreamAppGlideModule;[BI)Z
    .locals 2

    .line 135
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/getIP;->onRelationshipValidationResult:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 136
    iget v1, p0, Lo/getIP;->onRelationshipValidationResult:I

    invoke-virtual {p1, p2, v1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 137
    iget p1, p0, Lo/getIP;->onRelationshipValidationResult:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getIP;->onRelationshipValidationResult:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(Lo/DreamAppGlideModule;)Z
    .locals 4

    .line 149
    :cond_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 150
    iget v0, p0, Lo/getIP;->onTransact:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/getIP;->onTransact:I

    .line 151
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lo/getIP;->onTransact:I

    .line 152
    invoke-static {v0}, Lo/getLat;->onPostMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object p1, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v0, p0, Lo/getIP;->onTransact:I

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 154
    iget-object p1, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v0, p0, Lo/getIP;->onTransact:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p1, v2

    .line 155
    iget-object p1, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v0, 0x2

    iget v3, p0, Lo/getIP;->onTransact:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 156
    iget-object p1, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v0, 0x3

    iget v3, p0, Lo/getIP;->onTransact:I

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    const/4 p1, 0x4

    .line 157
    iput p1, p0, Lo/getIP;->onRelationshipValidationResult:I

    .line 158
    iput v1, p0, Lo/getIP;->onTransact:I

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lo/getIP;->newSession:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lo/getIP;->ICustomTabsCallback:I

    .line 71
    iput v0, p0, Lo/getIP;->onRelationshipValidationResult:I

    .line 72
    iput v0, p0, Lo/getIP;->onTransact:I

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 10

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_4

    .line 90
    iget v0, p0, Lo/getIP;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    .line 105
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/getIP;->asBinder:I

    iget v3, p0, Lo/getIP;->onRelationshipValidationResult:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object v1, p0, Lo/getIP;->extraCallback:Lo/CryptLib;

    invoke-interface {v1, p1, v0}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 107
    iget v1, p0, Lo/getIP;->onRelationshipValidationResult:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/getIP;->onRelationshipValidationResult:I

    .line 108
    iget v7, p0, Lo/getIP;->asBinder:I

    if-ne v1, v7, :cond_0

    .line 109
    iget-object v3, p0, Lo/getIP;->extraCallback:Lo/CryptLib;

    iget-wide v4, p0, Lo/getIP;->newSession:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 110
    iget-wide v0, p0, Lo/getIP;->newSession:J

    iget-wide v3, p0, Lo/getIP;->ICustomTabsCallback$Stub:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lo/getIP;->newSession:J

    .line 111
    iput v2, p0, Lo/getIP;->ICustomTabsCallback:I

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 97
    :cond_2
    iget-object v0, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lo/getIP;->extraCallback(Lo/DreamAppGlideModule;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lo/getIP;->extraCallback()V

    .line 99
    iget-object v0, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 100
    iget-object v0, p0, Lo/getIP;->extraCallback:Lo/CryptLib;

    iget-object v2, p0, Lo/getIP;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-interface {v0, v2, v1}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 101
    iput v3, p0, Lo/getIP;->ICustomTabsCallback:I

    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, p1}, Lo/getIP;->onMessageChannelReady(Lo/DreamAppGlideModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput v1, p0, Lo/getIP;->ICustomTabsCallback:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 1

    .line 77
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 78
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getIP;->onMessageChannelReady:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/getIP;->extraCallback:Lo/CryptLib;

    return-void
.end method
