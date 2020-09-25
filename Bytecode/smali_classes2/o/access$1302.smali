.class public final Lo/access$1302;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/access$1302$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final asInterface:[Lo/access$608;

.field public static final onNavigationEvent:Lo/access$1302;


# instance fields
.field public final ICustomTabsCallback:Z

.field public final extraCallback:[Ljava/lang/String;

.field final onMessageChannelReady:Z

.field public final onPostMessage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xe

    new-array v0, v0, [Lo/access$608;

    .line 36
    sget-object v1, Lo/access$608;->extraCommand:Lo/access$608;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/access$608;->postMessage:Lo/access$608;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lo/access$608;->onRelationshipValidationResult:Lo/access$608;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lo/access$608;->warmup:Lo/access$608;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lo/access$608;->getInterfaceDescriptor:Lo/access$608;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->newSession:Lo/access$608;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->ICustomTabsService:Lo/access$608;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->extraCallback:Lo/access$608;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->onPostMessage:Lo/access$608;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->asInterface:Lo/access$608;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->onTransact:Lo/access$608;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->onNavigationEvent:Lo/access$608;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->onMessageChannelReady:Lo/access$608;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sget-object v1, Lo/access$608;->ICustomTabsCallback:Lo/access$608;

    const/16 v6, 0xd

    aput-object v1, v0, v6

    sput-object v0, Lo/access$1302;->asInterface:[Lo/access$608;

    .line 58
    new-instance v0, Lo/access$1302$onNavigationEvent;

    invoke-direct {v0, v3}, Lo/access$1302$onNavigationEvent;-><init>(Z)V

    sget-object v1, Lo/access$1302;->asInterface:[Lo/access$608;

    .line 59
    invoke-virtual {v0, v1}, Lo/access$1302$onNavigationEvent;->onNavigationEvent([Lo/access$608;)Lo/access$1302$onNavigationEvent;

    move-result-object v0

    new-array v1, v5, [Lo/access$2700;

    sget-object v5, Lo/access$2700;->onPostMessage:Lo/access$2700;

    aput-object v5, v1, v2

    sget-object v5, Lo/access$2700;->onNavigationEvent:Lo/access$2700;

    aput-object v5, v1, v3

    sget-object v5, Lo/access$2700;->extraCallback:Lo/access$2700;

    aput-object v5, v1, v4

    .line 60
    invoke-virtual {v0, v1}, Lo/access$1302$onNavigationEvent;->onPostMessage([Lo/access$2700;)Lo/access$1302$onNavigationEvent;

    move-result-object v0

    .line 5345
    iget-boolean v1, v0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    const-string v4, "no TLS extensions for cleartext connections"

    if-eqz v1, :cond_1

    .line 5346
    iput-boolean v3, v0, Lo/access$1302$onNavigationEvent;->onPostMessage:Z

    .line 5351
    new-instance v1, Lo/access$1302;

    invoke-direct {v1, v0, v2}, Lo/access$1302;-><init>(Lo/access$1302$onNavigationEvent;B)V

    .line 62
    sput-object v1, Lo/access$1302;->onNavigationEvent:Lo/access$1302;

    .line 65
    new-instance v0, Lo/access$1302$onNavigationEvent;

    invoke-direct {v0, v1}, Lo/access$1302$onNavigationEvent;-><init>(Lo/access$1302;)V

    new-array v1, v3, [Lo/access$2700;

    sget-object v5, Lo/access$2700;->extraCallback:Lo/access$2700;

    aput-object v5, v1, v2

    .line 66
    invoke-virtual {v0, v1}, Lo/access$1302$onNavigationEvent;->onPostMessage([Lo/access$2700;)Lo/access$1302$onNavigationEvent;

    move-result-object v0

    .line 6345
    iget-boolean v1, v0, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 6346
    iput-boolean v3, v0, Lo/access$1302$onNavigationEvent;->onPostMessage:Z

    .line 6351
    new-instance v1, Lo/access$1302;

    invoke-direct {v1, v0, v2}, Lo/access$1302;-><init>(Lo/access$1302$onNavigationEvent;B)V

    .line 71
    new-instance v0, Lo/access$1302$onNavigationEvent;

    invoke-direct {v0, v2}, Lo/access$1302$onNavigationEvent;-><init>(Z)V

    .line 7351
    new-instance v1, Lo/access$1302;

    invoke-direct {v1, v0, v2}, Lo/access$1302;-><init>(Lo/access$1302$onNavigationEvent;B)V

    return-void

    .line 6345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5345
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lo/access$1302$onNavigationEvent;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iget-boolean v0, p1, Lo/access$1302$onNavigationEvent;->extraCallback:Z

    .line 87
    iput-boolean v0, p0, Lo/access$1302;->onMessageChannelReady:Z

    .line 2274
    iget-object v0, p1, Lo/access$1302$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    .line 3274
    iget-object v0, p1, Lo/access$1302$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    .line 4274
    iget-boolean p1, p1, Lo/access$1302$onNavigationEvent;->onPostMessage:Z

    .line 90
    iput-boolean p1, p0, Lo/access$1302;->ICustomTabsCallback:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo/access$1302$onNavigationEvent;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lo/access$1302;-><init>(Lo/access$1302$onNavigationEvent;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/access$1302;)[Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/access$1302;)[Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    return-object p0
.end method

.method private onNavigationEvent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/access$2700;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lo/access$2700;

    const/4 v1, 0x0

    .line 114
    :goto_0
    iget-object v2, p0, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 115
    aget-object v2, v2, v1

    invoke-static {v2}, Lo/access$2700;->onPostMessage(Ljava/lang/String;)Lo/access$2700;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v0}, Lo/getRequest;->onMessageChannelReady([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 236
    instance-of v0, p1, Lo/access$1302;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 239
    :cond_1
    check-cast p1, Lo/access$1302;

    .line 240
    iget-boolean v2, p0, Lo/access$1302;->onMessageChannelReady:Z

    iget-boolean v3, p1, Lo/access$1302;->onMessageChannelReady:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 243
    iget-object v2, p0, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    iget-object v3, p1, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 244
    :cond_3
    iget-object v2, p0, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    iget-object v3, p1, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 245
    :cond_4
    iget-boolean v2, p0, Lo/access$1302;->ICustomTabsCallback:Z

    iget-boolean p1, p1, Lo/access$1302;->ICustomTabsCallback:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 253
    iget-boolean v0, p0, Lo/access$1302;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    iget-object v1, p0, Lo/access$1302;->onPostMessage:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 256
    iget-boolean v1, p0, Lo/access$1302;->ICustomTabsCallback:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 262
    iget-boolean v0, p0, Lo/access$1302;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    .line 5102
    iget-object v0, p0, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 5105
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lo/access$608;

    const/4 v1, 0x0

    .line 5106
    :goto_0
    iget-object v2, p0, Lo/access$1302;->extraCallback:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5107
    aget-object v2, v2, v1

    invoke-static {v2}, Lo/access$608;->ICustomTabsCallback(Ljava/lang/String;)Lo/access$608;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5109
    :cond_1
    invoke-static {v0}, Lo/getRequest;->onMessageChannelReady([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "[use default]"

    goto :goto_2

    .line 264
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {p0}, Lo/access$1302;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lo/access$1302;->ICustomTabsCallback:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "ConnectionSpec()"

    return-object v0
.end method
