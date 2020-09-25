.class public final Lo/TLSSocketFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private asBinder:Z

.field private asInterface:Lo/p$a;

.field private final extraCallback:Lo/PublisherException;

.field private getInterfaceDescriptor:J

.field private onMessageChannelReady:Lo/CryptLib;

.field private final onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:J

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lo/TLSSocketFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lo/PublisherException;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/PublisherException;-><init>([B)V

    iput-object v0, p0, Lo/TLSSocketFactory;->extraCallback:Lo/PublisherException;

    .line 83
    new-instance v1, Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/PublisherException;->onMessageChannelReady:[B

    invoke-direct {v1, v0}, Lo/DreamAppGlideModule;-><init>([B)V

    iput-object v1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lo/TLSSocketFactory;->onTransact:I

    .line 85
    iput-object p1, p0, Lo/TLSSocketFactory;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method private extraCallback()V
    .locals 14

    .line 193
    iget-object v0, p0, Lo/TLSSocketFactory;->extraCallback:Lo/PublisherException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 194
    iget-object v0, p0, Lo/TLSSocketFactory;->extraCallback:Lo/PublisherException;

    invoke-static {v0}, Lo/v;->extraCallback(Lo/PublisherException;)Lo/v$onPostMessage;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lo/TLSSocketFactory;->asInterface:Lo/p$a;

    if-eqz v1, :cond_0

    iget v1, v0, Lo/v$onPostMessage;->onNavigationEvent:I

    iget-object v2, p0, Lo/TLSSocketFactory;->asInterface:Lo/p$a;

    iget v2, v2, Lo/p$a;->ICustomTabsService$Stub:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lo/v$onPostMessage;->onPostMessage:I

    iget-object v2, p0, Lo/TLSSocketFactory;->asInterface:Lo/p$a;

    iget v2, v2, Lo/p$a;->validateRelationship:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lo/v$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/TLSSocketFactory;->asInterface:Lo/p$a;

    iget-object v2, v2, Lo/p$a;->onTransact:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 198
    :cond_0
    iget-object v3, p0, Lo/TLSSocketFactory;->onPostMessage:Ljava/lang/String;

    iget-object v4, v0, Lo/v$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Lo/v$onPostMessage;->onNavigationEvent:I

    iget v9, v0, Lo/v$onPostMessage;->onPostMessage:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lo/TLSSocketFactory;->onNavigationEvent:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v1

    iput-object v1, p0, Lo/TLSSocketFactory;->asInterface:Lo/p$a;

    .line 201
    iget-object v2, p0, Lo/TLSSocketFactory;->onMessageChannelReady:Lo/CryptLib;

    invoke-interface {v2, v1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 203
    :cond_1
    iget v1, v0, Lo/v$onPostMessage;->extraCallback:I

    iput v1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub$Proxy:I

    const-wide/32 v1, 0xf4240

    .line 206
    iget v0, v0, Lo/v$onPostMessage;->asBinder:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lo/TLSSocketFactory;->asInterface:Lo/p$a;

    iget v0, v0, Lo/p$a;->validateRelationship:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lo/TLSSocketFactory;->onRelationshipValidationResult:J

    return-void
.end method

.method private extraCallback(Lo/DreamAppGlideModule;)Z
    .locals 5

    .line 172
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 173
    iget-boolean v0, p0, Lo/TLSSocketFactory;->asBinder:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lo/TLSSocketFactory;->asBinder:Z

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 179
    iput-boolean v1, p0, Lo/TLSSocketFactory;->asBinder:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 182
    :cond_3
    iput-boolean v1, p0, Lo/TLSSocketFactory;->asBinder:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private extraCallback(Lo/DreamAppGlideModule;[BI)Z
    .locals 2

    .line 158
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 159
    iget v1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2, v1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 160
    iget p1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lo/TLSSocketFactory;->getInterfaceDescriptor:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lo/TLSSocketFactory;->onTransact:I

    .line 91
    iput v0, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    .line 92
    iput-boolean v0, p0, Lo/TLSSocketFactory;->asBinder:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 10

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_4

    .line 110
    iget v0, p0, Lo/TLSSocketFactory;->onTransact:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v2, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub$Proxy:I

    iget v3, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget-object v2, p0, Lo/TLSSocketFactory;->onMessageChannelReady:Lo/CryptLib;

    invoke-interface {v2, p1, v0}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 130
    iget v2, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

    .line 131
    iget v7, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v2, v7, :cond_0

    .line 132
    iget-object v3, p0, Lo/TLSSocketFactory;->onMessageChannelReady:Lo/CryptLib;

    iget-wide v4, p0, Lo/TLSSocketFactory;->getInterfaceDescriptor:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 133
    iget-wide v2, p0, Lo/TLSSocketFactory;->getInterfaceDescriptor:J

    iget-wide v4, p0, Lo/TLSSocketFactory;->onRelationshipValidationResult:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/TLSSocketFactory;->getInterfaceDescriptor:J

    .line 134
    iput v1, p0, Lo/TLSSocketFactory;->onTransact:I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lo/TLSSocketFactory;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lo/TLSSocketFactory;->extraCallback(Lo/DreamAppGlideModule;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lo/TLSSocketFactory;->extraCallback()V

    .line 122
    iget-object v0, p0, Lo/TLSSocketFactory;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 123
    iget-object v0, p0, Lo/TLSSocketFactory;->onMessageChannelReady:Lo/CryptLib;

    iget-object v1, p0, Lo/TLSSocketFactory;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-interface {v0, v1, v3}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 124
    iput v2, p0, Lo/TLSSocketFactory;->onTransact:I

    goto :goto_0

    .line 112
    :cond_3
    invoke-direct {p0, p1}, Lo/TLSSocketFactory;->extraCallback(Lo/DreamAppGlideModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput v3, p0, Lo/TLSSocketFactory;->onTransact:I

    .line 114
    iget-object v0, p0, Lo/TLSSocketFactory;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 115
    iget-object v0, p0, Lo/TLSSocketFactory;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 116
    iput v2, p0, Lo/TLSSocketFactory;->ICustomTabsCallback$Stub:I

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

    .line 97
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 98
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/TLSSocketFactory;->onPostMessage:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/TLSSocketFactory;->onMessageChannelReady:Lo/CryptLib;

    return-void
.end method
