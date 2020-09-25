.class public abstract Lo/getNamespace;
.super Lo/getMaxEntry$onPostMessage;
.source ""


# static fields
.field private static final asInterface:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Lo/onNodeValue$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onNodeValue$extraCallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

.field private ICustomTabsService:Z

.field private getInterfaceDescriptor:Ljava/nio/charset/Charset;

.field private onTransact:Lo/emptyMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/getNamespace$3;

    invoke-direct {v0}, Lo/getNamespace$3;-><init>()V

    sput-object v0, Lo/getNamespace;->onRelationshipValidationResult:Lo/onNodeValue$extraCallback;

    const-string v1, ":status"

    .line 58
    invoke-static {v1, v0}, Lo/onNodeValue;->extraCallback(Ljava/lang/String;Lo/onNodeValue$extraCallback;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getNamespace;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(ILo/restoreAuth;Lo/putInternal;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lo/getMaxEntry$onPostMessage;-><init>(ILo/restoreAuth;Lo/putInternal;)V

    .line 64
    sget-object p1, Lo/performAutoConfigure;->onPostMessage:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/getPredecessorKey;)Lo/emptyMap;
    .locals 2

    .line 211
    sget-object v0, Lo/getNamespace;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 213
    sget-object p0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v0, "Missing HTTP status code"

    invoke-virtual {p0, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    sget-object v1, Lo/getAuthTokenProvider;->asBinder:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v1}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 216
    invoke-static {p0}, Lo/getAuthTokenProvider;->onPostMessage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lo/getAuthTokenProvider;->onPostMessage(I)Lo/emptyMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "invalid content-type: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static asInterface(Lo/getPredecessorKey;)V
    .locals 1

    .line 244
    sget-object v0, Lo/getNamespace;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 245
    sget-object v0, Lo/deserializeNode;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 246
    sget-object v0, Lo/deserializeNode;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    return-void
.end method

.method private static extraCallback(Lo/getPredecessorKey;)Ljava/nio/charset/Charset;
    .locals 2

    .line 227
    sget-object v0, Lo/getAuthTokenProvider;->asBinder:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const-string v1, "charset="

    .line 229
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 231
    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 236
    :catch_0
    :cond_0
    sget-object p0, Lo/performAutoConfigure;->onPostMessage:Ljava/nio/charset/Charset;

    return-object p0
.end method


# virtual methods
.method protected final onMessageChannelReady(Lo/getPredecessorKey;)V
    .locals 4

    if-eqz p1, :cond_9

    .line 88
    iget-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    const-string v1, "headers: "

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    return-void

    .line 94
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lo/getNamespace;->ICustomTabsService:Z

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v2, "Received headers twice"

    invoke-virtual {v0, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 117
    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 118
    invoke-static {p1}, Lo/getNamespace;->extraCallback(Lo/getPredecessorKey;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    :cond_1
    return-void

    .line 98
    :cond_2
    :try_start_1
    sget-object v0, Lo/getNamespace;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_4

    .line 113
    iget-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    if-eqz v0, :cond_3

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 117
    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 118
    invoke-static {p1}, Lo/getNamespace;->extraCallback(Lo/getPredecessorKey;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    .line 103
    :try_start_2
    iput-boolean v0, p0, Lo/getNamespace;->ICustomTabsService:Z

    .line 105
    invoke-static {p1}, Lo/getNamespace;->ICustomTabsCallback(Lo/getPredecessorKey;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 117
    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 118
    invoke-static {p1}, Lo/getNamespace;->extraCallback(Lo/getPredecessorKey;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    :cond_5
    return-void

    .line 110
    :cond_6
    :try_start_3
    invoke-static {p1}, Lo/getNamespace;->asInterface(Lo/getPredecessorKey;)V

    .line 111
    invoke-virtual {p0, p1}, Lo/getNamespace;->onPostMessage(Lo/getPredecessorKey;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    iget-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    if-eqz v0, :cond_7

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 117
    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 118
    invoke-static {p1}, Lo/getNamespace;->extraCallback(Lo/getPredecessorKey;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 113
    iget-object v2, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    if-eqz v2, :cond_8

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    iput-object v1, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 117
    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 118
    invoke-static {p1}, Lo/getNamespace;->extraCallback(Lo/getPredecessorKey;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    :cond_8
    throw v0

    .line 1910
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "headers"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onMessageChannelReady(Z)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Z)V

    return-void
.end method

.method protected abstract onNavigationEvent(Lo/emptyMap;ZLo/getPredecessorKey;)V
.end method

.method protected final onNavigationEvent(Lo/getPredecessorKey;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 165
    iget-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/getNamespace;->ICustomTabsService:Z

    if-nez v0, :cond_0

    .line 166
    invoke-static {p1}, Lo/getNamespace;->ICustomTabsCallback(Lo/getPredecessorKey;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    if-eqz v0, :cond_0

    .line 168
    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 171
    :cond_0
    iget-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    if-eqz v0, :cond_1

    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "trailers: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    invoke-virtual {p0, p1, v0, v1}, Lo/getNamespace;->onNavigationEvent(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void

    .line 3185
    :cond_1
    sget-object v0, Lo/deserializeNode;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/emptyMap;

    if-eqz v0, :cond_2

    .line 3187
    sget-object v1, Lo/deserializeNode;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p1, v1}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    goto :goto_1

    .line 3190
    :cond_2
    iget-boolean v0, p0, Lo/getNamespace;->ICustomTabsService:Z

    if-eqz v0, :cond_3

    .line 3191
    sget-object v0, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    const-string v1, "missing GRPC status in response"

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    goto :goto_1

    .line 3193
    :cond_3
    sget-object v0, Lo/getNamespace;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3195
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lo/getAuthTokenProvider;->onPostMessage(I)Lo/emptyMap;

    move-result-object v0

    goto :goto_0

    .line 3197
    :cond_4
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v1, "missing HTTP status code"

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    :goto_0
    const-string v1, "missing GRPC status, inferred error from HTTP status code"

    .line 3199
    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 176
    :goto_1
    invoke-static {p1}, Lo/getNamespace;->asInterface(Lo/getPredecessorKey;)V

    .line 177
    invoke-virtual {p0, p1, v0}, Lo/getNamespace;->onMessageChannelReady(Lo/getPredecessorKey;Lo/emptyMap;)V

    return-void

    .line 2910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "trailers"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/onServerInfoUpdate;Z)V
    .locals 4

    .line 130
    iget-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DATA-----------------------------\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/getNamespace;->getInterfaceDescriptor:Ljava/nio/charset/Charset;

    .line 134
    invoke-static {p1, v3}, Lo/canSendWrites;->extraCallback(Lo/onServerInfoUpdate;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    iput-object v0, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 135
    invoke-interface {p1}, Lo/onServerInfoUpdate;->close()V

    .line 136
    iget-object p1, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 2500
    iget-object p1, p1, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_3

    .line 137
    :cond_0
    iget-object p1, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    iget-object p2, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    invoke-virtual {p0, p1, v1, p2}, Lo/getNamespace;->onNavigationEvent(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void

    .line 140
    :cond_1
    iget-boolean v0, p0, Lo/getNamespace;->ICustomTabsService:Z

    if-nez v0, :cond_2

    .line 141
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string p2, "headers not received before payload"

    .line 142
    invoke-virtual {p1, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    new-instance p2, Lo/getPredecessorKey;

    invoke-direct {p2}, Lo/getPredecessorKey;-><init>()V

    .line 141
    invoke-virtual {p0, p1, v1, p2}, Lo/getNamespace;->onNavigationEvent(Lo/emptyMap;ZLo/getPredecessorKey;)V

    return-void

    .line 147
    :cond_2
    invoke-virtual {p0, p1}, Lo/getNamespace;->onPostMessage(Lo/onServerInfoUpdate;)V

    if-eqz p2, :cond_3

    .line 150
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string p2, "Received unexpected EOS on DATA frame from server."

    .line 151
    invoke-virtual {p1, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    iput-object p1, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    .line 152
    new-instance p1, Lo/getPredecessorKey;

    invoke-direct {p1}, Lo/getPredecessorKey;-><init>()V

    iput-object p1, p0, Lo/getNamespace;->ICustomTabsCallback$Stub$Proxy:Lo/getPredecessorKey;

    .line 153
    iget-object p2, p0, Lo/getNamespace;->onTransact:Lo/emptyMap;

    invoke-virtual {p0, p2, v1, p1}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;ZLo/getPredecessorKey;)V

    :cond_3
    return-void
.end method
