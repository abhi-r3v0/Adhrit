.class public final Lo/convertString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/convertString$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/convertString;

.field private static final ICustomTabsCallback$Stub:[Lo/convertLong;

.field private static final asBinder:[Lo/convertLong;

.field public static final extraCallback:Lo/convertString;

.field public static final onMessageChannelReady:Lo/convertString;


# instance fields
.field final asInterface:[Ljava/lang/String;

.field public final onNavigationEvent:Z

.field final onPostMessage:Z

.field final onTransact:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xb

    new-array v1, v0, [Lo/convertLong;

    .line 44
    sget-object v2, Lo/convertLong;->ICustomTabsService:Lo/convertLong;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/convertLong;->mayLaunchUrl:Lo/convertLong;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/convertLong;->requestPostMessageChannel:Lo/convertLong;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lo/convertLong;->postMessage:Lo/convertLong;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lo/convertLong;->extraCommand:Lo/convertLong;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lo/convertLong;->onRelationshipValidationResult:Lo/convertLong;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lo/convertLong;->warmup:Lo/convertLong;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lo/convertLong;->asBinder:Lo/convertLong;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lo/convertLong;->ICustomTabsCallback$Stub$Proxy:Lo/convertLong;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lo/convertLong;->getInterfaceDescriptor:Lo/convertLong;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lo/convertLong;->newSession:Lo/convertLong;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sput-object v1, Lo/convertString;->asBinder:[Lo/convertLong;

    const/16 v1, 0x12

    new-array v1, v1, [Lo/convertLong;

    .line 63
    sget-object v2, Lo/convertLong;->ICustomTabsService:Lo/convertLong;

    aput-object v2, v1, v3

    sget-object v2, Lo/convertLong;->mayLaunchUrl:Lo/convertLong;

    aput-object v2, v1, v4

    sget-object v2, Lo/convertLong;->requestPostMessageChannel:Lo/convertLong;

    aput-object v2, v1, v5

    sget-object v2, Lo/convertLong;->postMessage:Lo/convertLong;

    aput-object v2, v1, v6

    sget-object v2, Lo/convertLong;->extraCommand:Lo/convertLong;

    aput-object v2, v1, v7

    sget-object v2, Lo/convertLong;->onRelationshipValidationResult:Lo/convertLong;

    aput-object v2, v1, v8

    sget-object v2, Lo/convertLong;->warmup:Lo/convertLong;

    aput-object v2, v1, v9

    sget-object v2, Lo/convertLong;->asBinder:Lo/convertLong;

    aput-object v2, v1, v10

    sget-object v2, Lo/convertLong;->ICustomTabsCallback$Stub$Proxy:Lo/convertLong;

    aput-object v2, v1, v11

    sget-object v2, Lo/convertLong;->getInterfaceDescriptor:Lo/convertLong;

    aput-object v2, v1, v12

    sget-object v2, Lo/convertLong;->newSession:Lo/convertLong;

    aput-object v2, v1, v13

    sget-object v2, Lo/convertLong;->ICustomTabsCallback$Stub:Lo/convertLong;

    aput-object v2, v1, v0

    sget-object v0, Lo/convertLong;->asInterface:Lo/convertLong;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lo/convertLong;->onPostMessage:Lo/convertLong;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lo/convertLong;->onTransact:Lo/convertLong;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lo/convertLong;->extraCallback:Lo/convertLong;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lo/convertLong;->onNavigationEvent:Lo/convertLong;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lo/convertLong;->onMessageChannelReady:Lo/convertLong;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lo/convertString;->ICustomTabsCallback$Stub:[Lo/convertLong;

    .line 91
    new-instance v0, Lo/convertString$onNavigationEvent;

    invoke-direct {v0, v4}, Lo/convertString$onNavigationEvent;-><init>(Z)V

    sget-object v1, Lo/convertString;->asBinder:[Lo/convertLong;

    .line 92
    invoke-virtual {v0, v1}, Lo/convertString$onNavigationEvent;->onPostMessage([Lo/convertLong;)Lo/convertString$onNavigationEvent;

    move-result-object v0

    new-array v1, v5, [Lo/childRemovedChange;

    sget-object v2, Lo/childRemovedChange;->ICustomTabsCallback:Lo/childRemovedChange;

    aput-object v2, v1, v3

    sget-object v2, Lo/childRemovedChange;->onNavigationEvent:Lo/childRemovedChange;

    aput-object v2, v1, v4

    .line 93
    invoke-virtual {v0, v1}, Lo/convertString$onNavigationEvent;->onNavigationEvent([Lo/childRemovedChange;)Lo/convertString$onNavigationEvent;

    move-result-object v0

    .line 1332
    iget-boolean v1, v0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    const-string v2, "no TLS extensions for cleartext connections"

    if-eqz v1, :cond_2

    .line 1333
    iput-boolean v4, v0, Lo/convertString$onNavigationEvent;->extraCallback:Z

    .line 1338
    new-instance v1, Lo/convertString;

    invoke-direct {v1, v0}, Lo/convertString;-><init>(Lo/convertString$onNavigationEvent;)V

    .line 95
    sput-object v1, Lo/convertString;->ICustomTabsCallback:Lo/convertString;

    .line 98
    new-instance v0, Lo/convertString$onNavigationEvent;

    invoke-direct {v0, v4}, Lo/convertString$onNavigationEvent;-><init>(Z)V

    sget-object v1, Lo/convertString;->ICustomTabsCallback$Stub:[Lo/convertLong;

    .line 99
    invoke-virtual {v0, v1}, Lo/convertString$onNavigationEvent;->onPostMessage([Lo/convertLong;)Lo/convertString$onNavigationEvent;

    move-result-object v0

    new-array v1, v7, [Lo/childRemovedChange;

    sget-object v7, Lo/childRemovedChange;->ICustomTabsCallback:Lo/childRemovedChange;

    aput-object v7, v1, v3

    sget-object v7, Lo/childRemovedChange;->onNavigationEvent:Lo/childRemovedChange;

    aput-object v7, v1, v4

    sget-object v7, Lo/childRemovedChange;->onPostMessage:Lo/childRemovedChange;

    aput-object v7, v1, v5

    sget-object v5, Lo/childRemovedChange;->onMessageChannelReady:Lo/childRemovedChange;

    aput-object v5, v1, v6

    .line 100
    invoke-virtual {v0, v1}, Lo/convertString$onNavigationEvent;->onNavigationEvent([Lo/childRemovedChange;)Lo/convertString$onNavigationEvent;

    move-result-object v0

    .line 2332
    iget-boolean v1, v0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    .line 2333
    iput-boolean v4, v0, Lo/convertString$onNavigationEvent;->extraCallback:Z

    .line 2338
    new-instance v1, Lo/convertString;

    invoke-direct {v1, v0}, Lo/convertString;-><init>(Lo/convertString$onNavigationEvent;)V

    .line 102
    sput-object v1, Lo/convertString;->onMessageChannelReady:Lo/convertString;

    .line 105
    new-instance v0, Lo/convertString$onNavigationEvent;

    invoke-direct {v0, v4}, Lo/convertString$onNavigationEvent;-><init>(Z)V

    sget-object v1, Lo/convertString;->ICustomTabsCallback$Stub:[Lo/convertLong;

    .line 106
    invoke-virtual {v0, v1}, Lo/convertString$onNavigationEvent;->onPostMessage([Lo/convertLong;)Lo/convertString$onNavigationEvent;

    move-result-object v0

    new-array v1, v4, [Lo/childRemovedChange;

    sget-object v5, Lo/childRemovedChange;->onMessageChannelReady:Lo/childRemovedChange;

    aput-object v5, v1, v3

    .line 107
    invoke-virtual {v0, v1}, Lo/convertString$onNavigationEvent;->onNavigationEvent([Lo/childRemovedChange;)Lo/convertString$onNavigationEvent;

    move-result-object v0

    .line 3332
    iget-boolean v1, v0, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v1, :cond_0

    .line 3333
    iput-boolean v4, v0, Lo/convertString$onNavigationEvent;->extraCallback:Z

    .line 3338
    new-instance v1, Lo/convertString;

    invoke-direct {v1, v0}, Lo/convertString;-><init>(Lo/convertString$onNavigationEvent;)V

    .line 112
    new-instance v0, Lo/convertString$onNavigationEvent;

    invoke-direct {v0, v3}, Lo/convertString$onNavigationEvent;-><init>(Z)V

    .line 4338
    new-instance v1, Lo/convertString;

    invoke-direct {v1, v0}, Lo/convertString;-><init>(Lo/convertString$onNavigationEvent;)V

    .line 112
    sput-object v1, Lo/convertString;->extraCallback:Lo/convertString;

    return-void

    .line 3332
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2332
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lo/convertString$onNavigationEvent;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-boolean v0, p1, Lo/convertString$onNavigationEvent;->ICustomTabsCallback:Z

    iput-boolean v0, p0, Lo/convertString;->onPostMessage:Z

    .line 121
    iget-object v0, p1, Lo/convertString$onNavigationEvent;->onPostMessage:[Ljava/lang/String;

    iput-object v0, p0, Lo/convertString;->asInterface:[Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lo/convertString$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    iput-object v0, p0, Lo/convertString;->onTransact:[Ljava/lang/String;

    .line 123
    iget-boolean p1, p1, Lo/convertString$onNavigationEvent;->extraCallback:Z

    iput-boolean p1, p0, Lo/convertString;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 220
    instance-of v0, p1, Lo/convertString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 223
    :cond_1
    check-cast p1, Lo/convertString;

    .line 224
    iget-boolean v2, p0, Lo/convertString;->onPostMessage:Z

    iget-boolean v3, p1, Lo/convertString;->onPostMessage:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 227
    iget-object v2, p0, Lo/convertString;->asInterface:[Ljava/lang/String;

    iget-object v3, p1, Lo/convertString;->asInterface:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 228
    :cond_3
    iget-object v2, p0, Lo/convertString;->onTransact:[Ljava/lang/String;

    iget-object v3, p1, Lo/convertString;->onTransact:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 229
    :cond_4
    iget-boolean v2, p0, Lo/convertString;->onNavigationEvent:Z

    iget-boolean p1, p1, Lo/convertString;->onNavigationEvent:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 237
    iget-boolean v0, p0, Lo/convertString;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lo/convertString;->asInterface:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 239
    iget-object v1, p0, Lo/convertString;->onTransact:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-boolean v1, p0, Lo/convertString;->onNavigationEvent:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public final onPostMessage(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 202
    iget-boolean v0, p0, Lo/convertString;->onPostMessage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    iget-object v0, p0, Lo/convertString;->onTransact:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lo/generateEventsForType;->asInterface:Ljava/util/Comparator;

    iget-object v2, p0, Lo/convertString;->onTransact:[Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v0, v2, v3}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 211
    :cond_1
    iget-object v0, p0, Lo/convertString;->asInterface:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lo/convertLong;->ICustomTabsCallback:Ljava/util/Comparator;

    iget-object v2, p0, Lo/convertString;->asInterface:[Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {v0, v2, p1}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 246
    iget-boolean v0, p0, Lo/convertString;->onPostMessage:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lo/convertString;->asInterface:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[all enabled]"

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 1135
    invoke-static {v0}, Lo/convertLong;->ICustomTabsCallback([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 250
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 251
    :goto_1
    iget-object v3, p0, Lo/convertString;->onTransact:[Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v3, :cond_3

    .line 1143
    invoke-static {v3}, Lo/childRemovedChange;->onNavigationEvent([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 251
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lo/convertString;->onNavigationEvent:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
