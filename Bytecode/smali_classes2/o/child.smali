.class public final Lo/child;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/child$extraCallback;
    }
.end annotation


# static fields
.field private static final asInterface:[Lo/getChildrenCount;

.field public static final onMessageChannelReady:Lo/child;

.field public static final onNavigationEvent:Lo/child;

.field public static final onPostMessage:Lo/child;


# instance fields
.field public final ICustomTabsCallback:Z

.field final asBinder:[Ljava/lang/String;

.field final extraCallback:[Ljava/lang/String;

.field private final onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0xd

    new-array v0, v0, [Lo/getChildrenCount;

    .line 43
    sget-object v1, Lo/getChildrenCount;->newSession:Lo/getChildrenCount;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/getChildrenCount;->warmup:Lo/getChildrenCount;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lo/getChildrenCount;->ICustomTabsCallback$Stub:Lo/getChildrenCount;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lo/getChildrenCount;->asInterface:Lo/getChildrenCount;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lo/getChildrenCount;->asBinder:Lo/getChildrenCount;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->onTransact:Lo/getChildrenCount;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->ICustomTabsCallback$Stub$Proxy:Lo/getChildrenCount;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->ICustomTabsCallback:Lo/getChildrenCount;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->extraCallback:Lo/getChildrenCount;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->onRelationshipValidationResult:Lo/getChildrenCount;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->onNavigationEvent:Lo/getChildrenCount;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->onPostMessage:Lo/getChildrenCount;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lo/getChildrenCount;->onMessageChannelReady:Lo/getChildrenCount;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sput-object v0, Lo/child;->asInterface:[Lo/getChildrenCount;

    .line 64
    new-instance v0, Lo/child$extraCallback;

    invoke-direct {v0, v3}, Lo/child$extraCallback;-><init>(Z)V

    sget-object v1, Lo/child;->asInterface:[Lo/getChildrenCount;

    .line 5273
    iget-boolean v6, v0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    if-eqz v6, :cond_3

    .line 5275
    array-length v6, v1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 5276
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_0

    .line 5277
    aget-object v8, v1, v7

    iget-object v8, v8, Lo/getChildrenCount;->ICustomTabsService:Ljava/lang/String;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5279
    :cond_0
    invoke-virtual {v0, v6}, Lo/child$extraCallback;->onMessageChannelReady([Ljava/lang/String;)Lo/child$extraCallback;

    move-result-object v0

    new-array v1, v5, [Lo/runTransaction;

    .line 65
    sget-object v5, Lo/runTransaction;->extraCallback:Lo/runTransaction;

    aput-object v5, v1, v2

    sget-object v5, Lo/runTransaction;->onNavigationEvent:Lo/runTransaction;

    aput-object v5, v1, v3

    sget-object v5, Lo/runTransaction;->onPostMessage:Lo/runTransaction;

    aput-object v5, v1, v4

    .line 66
    invoke-virtual {v0, v1}, Lo/child$extraCallback;->extraCallback([Lo/runTransaction;)Lo/child$extraCallback;

    move-result-object v0

    .line 5322
    iget-boolean v1, v0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    const-string v4, "no TLS extensions for cleartext connections"

    if-eqz v1, :cond_2

    .line 5323
    iput-boolean v3, v0, Lo/child$extraCallback;->extraCallback:Z

    .line 5328
    new-instance v1, Lo/child;

    invoke-direct {v1, v0, v2}, Lo/child;-><init>(Lo/child$extraCallback;B)V

    .line 68
    sput-object v1, Lo/child;->onPostMessage:Lo/child;

    .line 71
    new-instance v0, Lo/child$extraCallback;

    invoke-direct {v0, v1}, Lo/child$extraCallback;-><init>(Lo/child;)V

    new-array v1, v3, [Lo/runTransaction;

    sget-object v5, Lo/runTransaction;->onPostMessage:Lo/runTransaction;

    aput-object v5, v1, v2

    .line 72
    invoke-virtual {v0, v1}, Lo/child$extraCallback;->extraCallback([Lo/runTransaction;)Lo/child$extraCallback;

    move-result-object v0

    .line 6322
    iget-boolean v1, v0, Lo/child$extraCallback;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    .line 6323
    iput-boolean v3, v0, Lo/child$extraCallback;->extraCallback:Z

    .line 6328
    new-instance v1, Lo/child;

    invoke-direct {v1, v0, v2}, Lo/child;-><init>(Lo/child$extraCallback;B)V

    .line 74
    sput-object v1, Lo/child;->onNavigationEvent:Lo/child;

    .line 77
    new-instance v0, Lo/child$extraCallback;

    invoke-direct {v0, v2}, Lo/child$extraCallback;-><init>(Z)V

    .line 7328
    new-instance v1, Lo/child;

    invoke-direct {v1, v0, v2}, Lo/child;-><init>(Lo/child$extraCallback;B)V

    .line 77
    sput-object v1, Lo/child;->onMessageChannelReady:Lo/child;

    return-void

    .line 6322
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5322
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5273
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lo/child$extraCallback;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    iget-boolean v0, p1, Lo/child$extraCallback;->ICustomTabsCallback:Z

    .line 85
    iput-boolean v0, p0, Lo/child;->onRelationshipValidationResult:Z

    .line 2249
    iget-object v0, p1, Lo/child$extraCallback;->onMessageChannelReady:[Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    .line 3249
    iget-object v0, p1, Lo/child$extraCallback;->onPostMessage:[Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lo/child;->asBinder:[Ljava/lang/String;

    .line 4249
    iget-boolean p1, p1, Lo/child$extraCallback;->extraCallback:Z

    .line 88
    iput-boolean p1, p0, Lo/child;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/child$extraCallback;B)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/child;-><init>(Lo/child$extraCallback;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/child;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lo/child;->ICustomTabsCallback:Z

    return p0
.end method

.method private static extraCallback([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 198
    array-length v1, p0

    if-eqz v1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 202
    invoke-static {p1, v3}, Lo/createForTests;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic extraCallback(Lo/child;)[Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/child;)[Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/child;->asBinder:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/child;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lo/child;->onRelationshipValidationResult:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .line 175
    iget-boolean v0, p0, Lo/child;->onRelationshipValidationResult:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    iget-object v0, p0, Lo/child;->asBinder:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/child;->extraCallback([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 184
    :cond_1
    iget-object v0, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/child;->extraCallback([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 210
    instance-of v0, p1, Lo/child;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 213
    :cond_1
    check-cast p1, Lo/child;

    .line 214
    iget-boolean v2, p0, Lo/child;->onRelationshipValidationResult:Z

    iget-boolean v3, p1, Lo/child;->onRelationshipValidationResult:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 217
    iget-object v2, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    iget-object v3, p1, Lo/child;->extraCallback:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 218
    :cond_3
    iget-object v2, p0, Lo/child;->asBinder:[Ljava/lang/String;

    iget-object v3, p1, Lo/child;->asBinder:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 219
    :cond_4
    iget-boolean v2, p0, Lo/child;->ICustomTabsCallback:Z

    iget-boolean p1, p1, Lo/child;->ICustomTabsCallback:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 227
    iget-boolean v0, p0, Lo/child;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object v1, p0, Lo/child;->asBinder:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-boolean v1, p0, Lo/child;->ICustomTabsCallback:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 236
    iget-boolean v0, p0, Lo/child;->onRelationshipValidationResult:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "[all enabled]"

    if-eqz v0, :cond_3

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 5102
    :cond_1
    array-length v0, v0

    new-array v0, v0, [Lo/getChildrenCount;

    const/4 v4, 0x0

    .line 5103
    :goto_0
    iget-object v5, p0, Lo/child;->extraCallback:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 5104
    aget-object v5, v5, v4

    invoke-static {v5}, Lo/getChildrenCount;->onNavigationEvent(Ljava/lang/String;)Lo/getChildrenCount;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5106
    :cond_2
    invoke-static {v0}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 240
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 241
    :goto_2
    iget-object v4, p0, Lo/child;->asBinder:[Ljava/lang/String;

    if-eqz v4, :cond_6

    if-nez v4, :cond_4

    goto :goto_4

    .line 5116
    :cond_4
    array-length v1, v4

    new-array v1, v1, [Lo/runTransaction;

    .line 5117
    :goto_3
    iget-object v3, p0, Lo/child;->asBinder:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 5118
    aget-object v3, v3, v2

    invoke-static {v3}, Lo/runTransaction;->onMessageChannelReady(Ljava/lang/String;)Lo/runTransaction;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5120
    :cond_5
    invoke-static {v1}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 241
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lo/child;->ICustomTabsCallback:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
