.class public final Lo/addEventRegistration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addChildEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addEventRegistration$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/matches;

.field private static final ICustomTabsCallback$Stub:Lo/matches;

.field private static final asBinder:Lo/matches;

.field private static final asInterface:Lo/matches;

.field private static final extraCallback:Lo/matches;

.field private static final newSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/matches;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/matches;

.field private static final onNavigationEvent:Lo/matches;

.field private static final onPostMessage:Lo/matches;

.field private static final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/matches;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/matches;",
            ">;"
        }
    .end annotation
.end field

.field private static final warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/matches;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Lo/removeEventListener;

.field private final ICustomTabsService:Lo/setLogger$extraCallback$extraCallback;

.field private final getInterfaceDescriptor:Lo/setPersistenceEnabled;

.field private requestPostMessageChannel:Lo/purgeOutstandingWrites;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "connection"

    .line 53
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->extraCallback:Lo/matches;

    const-string v0, "host"

    .line 54
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->onMessageChannelReady:Lo/matches;

    const-string v0, "keep-alive"

    .line 55
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->onPostMessage:Lo/matches;

    const-string v0, "proxy-connection"

    .line 56
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->ICustomTabsCallback:Lo/matches;

    const-string v0, "transfer-encoding"

    .line 57
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->onNavigationEvent:Lo/matches;

    const-string v0, "te"

    .line 58
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->ICustomTabsCallback$Stub:Lo/matches;

    const-string v0, "encoding"

    .line 59
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->asInterface:Lo/matches;

    const-string v0, "upgrade"

    .line 60
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->asBinder:Lo/matches;

    const/16 v0, 0xb

    new-array v1, v0, [Lo/matches;

    .line 63
    sget-object v2, Lo/addEventRegistration;->extraCallback:Lo/matches;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/addEventRegistration;->onMessageChannelReady:Lo/matches;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/addEventRegistration;->onPostMessage:Lo/matches;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lo/addEventRegistration;->ICustomTabsCallback:Lo/matches;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lo/addEventRegistration;->onNavigationEvent:Lo/matches;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->onMessageChannelReady:Lo/matches;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback:Lo/matches;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->onNavigationEvent:Lo/matches;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->extraCallback:Lo/matches;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->asInterface:Lo/matches;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback$Stub:Lo/matches;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    invoke-static {v1}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/addEventRegistration;->onTransact:Ljava/util/List;

    new-array v1, v8, [Lo/matches;

    .line 75
    sget-object v2, Lo/addEventRegistration;->extraCallback:Lo/matches;

    aput-object v2, v1, v3

    sget-object v2, Lo/addEventRegistration;->onMessageChannelReady:Lo/matches;

    aput-object v2, v1, v4

    sget-object v2, Lo/addEventRegistration;->onPostMessage:Lo/matches;

    aput-object v2, v1, v5

    sget-object v2, Lo/addEventRegistration;->ICustomTabsCallback:Lo/matches;

    aput-object v2, v1, v6

    sget-object v2, Lo/addEventRegistration;->onNavigationEvent:Lo/matches;

    aput-object v2, v1, v7

    invoke-static {v1}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/addEventRegistration;->onRelationshipValidationResult:Ljava/util/List;

    const/16 v1, 0xe

    new-array v1, v1, [Lo/matches;

    .line 83
    sget-object v2, Lo/addEventRegistration;->extraCallback:Lo/matches;

    aput-object v2, v1, v3

    sget-object v2, Lo/addEventRegistration;->onMessageChannelReady:Lo/matches;

    aput-object v2, v1, v4

    sget-object v2, Lo/addEventRegistration;->onPostMessage:Lo/matches;

    aput-object v2, v1, v5

    sget-object v2, Lo/addEventRegistration;->ICustomTabsCallback:Lo/matches;

    aput-object v2, v1, v6

    sget-object v2, Lo/addEventRegistration;->ICustomTabsCallback$Stub:Lo/matches;

    aput-object v2, v1, v7

    sget-object v2, Lo/addEventRegistration;->onNavigationEvent:Lo/matches;

    aput-object v2, v1, v8

    sget-object v2, Lo/addEventRegistration;->asInterface:Lo/matches;

    aput-object v2, v1, v9

    sget-object v2, Lo/addEventRegistration;->asBinder:Lo/matches;

    aput-object v2, v1, v10

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->onMessageChannelReady:Lo/matches;

    aput-object v2, v1, v11

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback:Lo/matches;

    aput-object v2, v1, v12

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->onNavigationEvent:Lo/matches;

    aput-object v2, v1, v13

    sget-object v2, Lo/setPersistenceCacheSizeBytes;->extraCallback:Lo/matches;

    aput-object v2, v1, v0

    sget-object v0, Lo/setPersistenceCacheSizeBytes;->asInterface:Lo/matches;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback$Stub:Lo/matches;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    invoke-static {v1}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->newSession:Ljava/util/List;

    new-array v0, v11, [Lo/matches;

    .line 98
    sget-object v1, Lo/addEventRegistration;->extraCallback:Lo/matches;

    aput-object v1, v0, v3

    sget-object v1, Lo/addEventRegistration;->onMessageChannelReady:Lo/matches;

    aput-object v1, v0, v4

    sget-object v1, Lo/addEventRegistration;->onPostMessage:Lo/matches;

    aput-object v1, v0, v5

    sget-object v1, Lo/addEventRegistration;->ICustomTabsCallback:Lo/matches;

    aput-object v1, v0, v6

    sget-object v1, Lo/addEventRegistration;->ICustomTabsCallback$Stub:Lo/matches;

    aput-object v1, v0, v7

    sget-object v1, Lo/addEventRegistration;->onNavigationEvent:Lo/matches;

    aput-object v1, v0, v8

    sget-object v1, Lo/addEventRegistration;->asInterface:Lo/matches;

    aput-object v1, v0, v9

    sget-object v1, Lo/addEventRegistration;->asBinder:Lo/matches;

    aput-object v1, v0, v10

    invoke-static {v0}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/addEventRegistration;->warmup:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/setLogger$extraCallback$extraCallback;Lo/setPersistenceEnabled;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lo/addEventRegistration;->ICustomTabsService:Lo/setLogger$extraCallback$extraCallback;

    .line 115
    iput-object p2, p0, Lo/addEventRegistration;->getInterfaceDescriptor:Lo/setPersistenceEnabled;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/addEventRegistration;)Lo/setLogger$extraCallback$extraCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lo/addEventRegistration;->ICustomTabsService:Lo/setLogger$extraCallback$extraCallback;

    return-object p0
.end method

.method private static extraCallback(Lo/fromException;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromException;",
            ")",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;"
        }
    .end annotation

    .line 15074
    iget-object v0, p0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .line 15076
    iget-object v2, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x5

    .line 161
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    sget-object v3, Lo/setPersistenceCacheSizeBytes;->onMessageChannelReady:Lo/matches;

    .line 16070
    iget-object v4, p0, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 162
    invoke-direct {v2, v3, v4}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    sget-object v3, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback:Lo/matches;

    .line 17048
    iget-object v4, p0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 163
    invoke-static {v4}, Lo/endAt;->onPostMessage(Lo/fromCode;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    sget-object v3, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback$Stub:Lo/matches;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    sget-object v3, Lo/setPersistenceCacheSizeBytes;->asInterface:Lo/matches;

    .line 18048
    iget-object v4, p0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 165
    invoke-static {v4}, Lo/createForTests;->ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lo/setPersistenceCacheSizeBytes;

    sget-object v3, Lo/setPersistenceCacheSizeBytes;->onNavigationEvent:Lo/matches;

    .line 19048
    iget-object p0, p0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 19348
    iget-object p0, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 166
    invoke-direct {v2, v3, p0}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20076
    iget-object v2, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    shl-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    .line 20082
    iget-object v7, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_0

    goto :goto_1

    .line 20085
    :cond_0
    iget-object v7, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v7, v7, v5

    goto :goto_2

    :cond_1
    :goto_1
    move-object v7, v6

    .line 171
    :goto_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v7

    .line 174
    sget-object v8, Lo/addEventRegistration;->onTransact:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_3

    .line 20091
    iget-object v8, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_2

    goto :goto_3

    .line 20094
    :cond_2
    iget-object v6, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 178
    :cond_3
    :goto_3
    invoke-interface {p0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    new-instance v5, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v5, v7, v6}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    .line 184
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 185
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setPersistenceCacheSizeBytes;

    iget-object v8, v8, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 186
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setPersistenceCacheSizeBytes;

    iget-object v8, v8, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v8}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    .line 20196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    new-instance v8, Lo/setPersistenceCacheSizeBytes;

    invoke-direct {v8, v7, v6}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v1, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method

.method private static extraCallback(Ljava/util/List;)Lo/removeValue$onPostMessage;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;)",
            "Lo/removeValue$onPostMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "HTTP/1.1"

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    .line 223
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setPersistenceCacheSizeBytes;

    iget-object v6, v6, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    .line 225
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setPersistenceCacheSizeBytes;

    iget-object v7, v7, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v7}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 226
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 227
    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 229
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 231
    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 232
    sget-object v10, Lo/setPersistenceCacheSizeBytes;->onPostMessage:Lo/matches;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v3, v8

    goto :goto_2

    .line 234
    :cond_1
    sget-object v10, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v8

    goto :goto_2

    .line 236
    :cond_2
    sget-object v10, Lo/addEventRegistration;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 237
    invoke-virtual {v6}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    :cond_3
    :goto_2
    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/fromValue$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/fromValue$extraCallback;

    move-result-object p0

    .line 245
    new-instance v1, Lo/removeValue$onPostMessage;

    invoke-direct {v1}, Lo/removeValue$onPostMessage;-><init>()V

    sget-object v3, Lo/toException;->ICustomTabsCallback:Lo/toException;

    .line 20256
    iput-object v3, v1, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    .line 246
    iget v3, p0, Lo/fromValue$extraCallback;->onPostMessage:I

    .line 20261
    iput v3, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 247
    iget-object p0, p0, Lo/fromValue$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 20266
    iput-object p0, v1, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 20312
    new-instance p0, Lo/getRef;

    invoke-direct {p0, v0, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 22121
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 22214
    iget-object v2, v0, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 22122
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v2, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 21300
    iput-object v0, v1, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    return-object v1

    .line 242
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/removeValue$onPostMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lo/addEventRegistration;->getInterfaceDescriptor:Lo/setPersistenceEnabled;

    .line 11179
    iget-object v0, v0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    .line 149
    sget-object v1, Lo/toException;->onPostMessage:Lo/toException;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    .line 150
    invoke-virtual {v0}, Lo/purgeOutstandingWrites;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 11256
    new-instance v2, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v2}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 11257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 11258
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setPersistenceCacheSizeBytes;

    iget-object v6, v6, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    .line 11260
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setPersistenceCacheSizeBytes;

    iget-object v7, v7, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v7}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v7

    .line 11261
    sget-object v8, Lo/setPersistenceCacheSizeBytes;->onPostMessage:Lo/matches;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v7

    goto :goto_1

    .line 11263
    :cond_0
    sget-object v8, Lo/addEventRegistration;->warmup:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 11264
    invoke-virtual {v6}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 11269
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/fromValue$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/fromValue$extraCallback;

    move-result-object v0

    .line 11270
    new-instance v1, Lo/removeValue$onPostMessage;

    invoke-direct {v1}, Lo/removeValue$onPostMessage;-><init>()V

    sget-object v3, Lo/toException;->onPostMessage:Lo/toException;

    .line 12256
    iput-object v3, v1, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    .line 11271
    iget v3, v0, Lo/fromValue$extraCallback;->onPostMessage:I

    .line 12261
    iput v3, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 11272
    iget-object v0, v0, Lo/fromValue$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 12266
    iput-object v0, v1, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 12312
    new-instance v0, Lo/getRef;

    invoke-direct {v0, v2, v4}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 14121
    new-instance v2, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v2}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 14214
    iget-object v3, v2, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 14122
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13300
    iput-object v2, v1, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    return-object v1

    .line 11267
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_4
    iget-object v0, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    .line 151
    invoke-virtual {v0}, Lo/purgeOutstandingWrites;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/addEventRegistration;->extraCallback(Ljava/util/List;)Lo/removeValue$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/fromException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lo/addEventRegistration;->ICustomTabsCallback$Stub$Proxy:Lo/removeEventListener;

    .line 1298
    iget-wide v1, v0, Lo/removeEventListener;->onTransact:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    .line 1299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/removeEventListener;->onTransact:J

    .line 130
    invoke-static {p1}, Lo/removeEventListener;->ICustomTabsCallback(Lo/fromException;)Z

    move-result v0

    .line 131
    iget-object v1, p0, Lo/addEventRegistration;->getInterfaceDescriptor:Lo/setPersistenceEnabled;

    .line 2179
    iget-object v1, v1, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    .line 131
    sget-object v2, Lo/toException;->onPostMessage:Lo/toException;

    if-ne v1, v2, :cond_6

    .line 3074
    iget-object v1, p1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 2201
    new-instance v2, Ljava/util/ArrayList;

    .line 3076
    iget-object v3, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    .line 2201
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2202
    new-instance v3, Lo/setPersistenceCacheSizeBytes;

    sget-object v4, Lo/setPersistenceCacheSizeBytes;->onMessageChannelReady:Lo/matches;

    .line 4070
    iget-object v5, p1, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 2202
    invoke-direct {v3, v4, v5}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2203
    new-instance v3, Lo/setPersistenceCacheSizeBytes;

    sget-object v4, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback:Lo/matches;

    .line 5048
    iget-object v5, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 2203
    invoke-static {v5}, Lo/endAt;->onPostMessage(Lo/fromCode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2204
    new-instance v3, Lo/setPersistenceCacheSizeBytes;

    sget-object v4, Lo/setPersistenceCacheSizeBytes;->extraCallback:Lo/matches;

    .line 6048
    iget-object v5, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 2204
    invoke-static {v5}, Lo/createForTests;->ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2205
    new-instance v3, Lo/setPersistenceCacheSizeBytes;

    sget-object v4, Lo/setPersistenceCacheSizeBytes;->onNavigationEvent:Lo/matches;

    .line 7048
    iget-object p1, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 7348
    iget-object p1, p1, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 2205
    invoke-direct {v3, v4, p1}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 8076
    iget-object v3, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    :goto_0
    if-ge p1, v3, :cond_7

    shl-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    .line 8082
    iget-object v6, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v4, v6, :cond_1

    goto :goto_1

    .line 8085
    :cond_1
    iget-object v6, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v5

    .line 2209
    :goto_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v6

    .line 2210
    sget-object v7, Lo/addEventRegistration;->newSession:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2211
    new-instance v7, Lo/setPersistenceCacheSizeBytes;

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_4

    .line 8091
    iget-object v8, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v8, v8

    if-lt v4, v8, :cond_3

    goto :goto_3

    .line 8094
    :cond_3
    iget-object v5, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 2211
    :cond_4
    :goto_3
    invoke-direct {v7, v6, v5}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 133
    :cond_6
    invoke-static {p1}, Lo/addEventRegistration;->extraCallback(Lo/fromException;)Ljava/util/List;

    move-result-object v2

    .line 135
    :cond_7
    iget-object p1, p0, Lo/addEventRegistration;->getInterfaceDescriptor:Lo/setPersistenceEnabled;

    const/4 v1, 0x1

    .line 8249
    invoke-virtual {p1, v2, v0, v1}, Lo/setPersistenceEnabled;->onMessageChannelReady(Ljava/util/List;ZZ)Lo/purgeOutstandingWrites;

    move-result-object p1

    .line 135
    iput-object p1, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    .line 9187
    iget-object p1, p1, Lo/purgeOutstandingWrites;->onTransact:Lo/purgeOutstandingWrites$extraCallback;

    .line 136
    iget-object v0, p0, Lo/addEventRegistration;->ICustomTabsCallback$Stub$Proxy:Lo/removeEventListener;

    iget-object v0, v0, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 9217
    iget v0, v0, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    int-to-long v0, v0

    .line 136
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 137
    iget-object p1, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    .line 10191
    iget-object p1, p1, Lo/purgeOutstandingWrites;->asInterface:Lo/purgeOutstandingWrites$extraCallback;

    .line 137
    iget-object v0, p0, Lo/addEventRegistration;->ICustomTabsCallback$Stub$Proxy:Lo/removeEventListener;

    iget-object v0, v0, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 10235
    iget v0, v0, Lo/setValueInternal;->ICustomTabsService$Stub:I

    int-to-long v0, v0

    .line 137
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    return-void

    .line 1298
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/limitToFirst;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    invoke-virtual {v0}, Lo/purgeOutstandingWrites;->onNavigationEvent()Lo/exceptionStacktrace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/limitToFirst;->extraCallback(Lo/exceptionStacktrace;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    invoke-virtual {v0}, Lo/purgeOutstandingWrites;->onNavigationEvent()Lo/exceptionStacktrace;

    move-result-object v0

    invoke-interface {v0}, Lo/exceptionStacktrace;->close()V

    return-void
.end method

.method public final onPostMessage(Lo/fromException;J)Lo/exceptionStacktrace;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    invoke-virtual {p1}, Lo/purgeOutstandingWrites;->onNavigationEvent()Lo/exceptionStacktrace;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/removeValue;)Lo/updateChildren;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Lo/addEventRegistration$ICustomTabsCallback;

    iget-object v1, p0, Lo/addEventRegistration;->requestPostMessageChannel:Lo/purgeOutstandingWrites;

    .line 23196
    iget-object v1, v1, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    .line 278
    invoke-direct {v0, p0, v1}, Lo/addEventRegistration$ICustomTabsCallback;-><init>(Lo/addEventRegistration;Lo/toLog;)V

    .line 279
    new-instance v1, Lo/keepSynced;

    .line 24126
    iget-object p1, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 279
    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lo/keepSynced;-><init>(Lo/getRef;Lo/fullLimitUpdateChild;)V

    return-object v1
.end method

.method public final onPostMessage(Lo/removeEventListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/addEventRegistration;->ICustomTabsCallback$Stub$Proxy:Lo/removeEventListener;

    return-void
.end method
