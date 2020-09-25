.class public final Lo/getCodedOutput$onRelationshipValidationResult;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCodedOutput$onRelationshipValidationResult;",
        "Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final ACTIVE_CONFIG_HOLDER_FIELD_NUMBER:I = 0x2

.field public static final APPLIED_RESOURCE_FIELD_NUMBER:I = 0x5

.field public static final DEFAULTS_CONFIG_HOLDER_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

.field public static final FETCHED_CONFIG_HOLDER_FIELD_NUMBER:I = 0x1

.field public static final METADATA_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

.field private appliedResource_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/getCodedOutput$asBinder;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

.field private fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

.field private metadata_:Lo/getCodedOutput$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 809
    new-instance v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/getCodedOutput$onRelationshipValidationResult;-><init>()V

    .line 812
    sput-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    .line 813
    const-class v1, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 82
    invoke-static {}, Lo/getCodedOutput$onRelationshipValidationResult;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic access$000()Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1

    .line 76
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    return-object v0
.end method

.method static synthetic access$100(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->setFetchedConfigHolder(Lo/getCodedOutput$onPostMessage;)V

    return-void
.end method

.method static synthetic access$1000(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->setMetadata(Lo/getCodedOutput$onMessageChannelReady;)V

    return-void
.end method

.method static synthetic access$1100(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->mergeMetadata(Lo/getCodedOutput$onMessageChannelReady;)V

    return-void
.end method

.method static synthetic access$1200(Lo/getCodedOutput$onRelationshipValidationResult;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->clearMetadata()V

    return-void
.end method

.method static synthetic access$1300(Lo/getCodedOutput$onRelationshipValidationResult;ILo/getCodedOutput$asBinder;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onRelationshipValidationResult;->setAppliedResource(ILo/getCodedOutput$asBinder;)V

    return-void
.end method

.method static synthetic access$1400(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$asBinder;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->addAppliedResource(Lo/getCodedOutput$asBinder;)V

    return-void
.end method

.method static synthetic access$1500(Lo/getCodedOutput$onRelationshipValidationResult;ILo/getCodedOutput$asBinder;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$onRelationshipValidationResult;->addAppliedResource(ILo/getCodedOutput$asBinder;)V

    return-void
.end method

.method static synthetic access$1600(Lo/getCodedOutput$onRelationshipValidationResult;Ljava/lang/Iterable;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->addAllAppliedResource(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lo/getCodedOutput$onRelationshipValidationResult;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->clearAppliedResource()V

    return-void
.end method

.method static synthetic access$1800(Lo/getCodedOutput$onRelationshipValidationResult;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->removeAppliedResource(I)V

    return-void
.end method

.method static synthetic access$200(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->mergeFetchedConfigHolder(Lo/getCodedOutput$onPostMessage;)V

    return-void
.end method

.method static synthetic access$300(Lo/getCodedOutput$onRelationshipValidationResult;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->clearFetchedConfigHolder()V

    return-void
.end method

.method static synthetic access$400(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->setActiveConfigHolder(Lo/getCodedOutput$onPostMessage;)V

    return-void
.end method

.method static synthetic access$500(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->mergeActiveConfigHolder(Lo/getCodedOutput$onPostMessage;)V

    return-void
.end method

.method static synthetic access$600(Lo/getCodedOutput$onRelationshipValidationResult;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->clearActiveConfigHolder()V

    return-void
.end method

.method static synthetic access$700(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->setDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage;)V

    return-void
.end method

.method static synthetic access$800(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->mergeDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage;)V

    return-void
.end method

.method static synthetic access$900(Lo/getCodedOutput$onRelationshipValidationResult;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->clearDefaultsConfigHolder()V

    return-void
.end method

.method private addAllAppliedResource(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getCodedOutput$asBinder;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->ensureAppliedResourceIsMutable()V

    .line 345
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-static {p1, v0}, Lo/writeRawVarint64;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAppliedResource(ILo/getCodedOutput$asBinder;)V
    .locals 1

    .line 336
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->ensureAppliedResourceIsMutable()V

    .line 337
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAppliedResource(Lo/getCodedOutput$asBinder;)V
    .locals 1

    .line 327
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->ensureAppliedResourceIsMutable()V

    .line 328
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearActiveConfigHolder()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 174
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private clearAppliedResource()V
    .locals 1

    .line 352
    invoke-static {}, Lo/getCodedOutput$onRelationshipValidationResult;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method private clearDefaultsConfigHolder()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 220
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private clearFetchedConfigHolder()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 128
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private clearMetadata()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    .line 266
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private ensureAppliedResourceIsMutable()V
    .locals 1

    .line 307
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    .line 309
    invoke-static {v0}, Lo/getEventAppExecutionSize;->mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1

    .line 818
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    return-object v0
.end method

.method private mergeActiveConfigHolder(Lo/getCodedOutput$onPostMessage;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->getDefaultInstance()Lo/getCodedOutput$onPostMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 164
    invoke-static {v0}, Lo/getCodedOutput$onPostMessage;->newBuilder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onPostMessage$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage$extraCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage;

    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    goto :goto_0

    .line 166
    :cond_0
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 168
    :goto_0
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private mergeDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->getDefaultInstance()Lo/getCodedOutput$onPostMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 210
    invoke-static {v0}, Lo/getCodedOutput$onPostMessage;->newBuilder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onPostMessage$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage$extraCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage;

    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    goto :goto_0

    .line 212
    :cond_0
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 214
    :goto_0
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private mergeFetchedConfigHolder(Lo/getCodedOutput$onPostMessage;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->getDefaultInstance()Lo/getCodedOutput$onPostMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 118
    invoke-static {v0}, Lo/getCodedOutput$onPostMessage;->newBuilder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onPostMessage$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage$extraCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage;

    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    goto :goto_0

    .line 120
    :cond_0
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 122
    :goto_0
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private mergeMetadata(Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lo/getCodedOutput$onMessageChannelReady;->getDefaultInstance()Lo/getCodedOutput$onMessageChannelReady;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    .line 256
    invoke-static {v0}, Lo/getCodedOutput$onMessageChannelReady;->newBuilder(Lo/getCodedOutput$onMessageChannelReady;)Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->buildPartial()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onMessageChannelReady;

    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    goto :goto_0

    .line 258
    :cond_0
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    .line 260
    :goto_0
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 437
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;

    return-object v0
.end method

.method public static newBuilder(Lo/getCodedOutput$onRelationshipValidationResult;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 440
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0}, Lo/getCodedOutput$onRelationshipValidationResult;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 372
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 378
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 385
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom([B)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 390
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 397
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation

    .line 824
    sget-object v0, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private removeAppliedResource(I)V
    .locals 1

    .line 358
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->ensureAppliedResourceIsMutable()V

    .line 359
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActiveConfigHolder(Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 153
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private setAppliedResource(ILo/getCodedOutput$asBinder;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult;->ensureAppliedResourceIsMutable()V

    .line 320
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1, p2}, Lo/getEventLogSize$asBinder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 199
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private setFetchedConfigHolder(Lo/getCodedOutput$onPostMessage;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    .line 107
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method

.method private setMetadata(Lo/getCodedOutput$onMessageChannelReady;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    .line 245
    iget p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 754
    sget-object p2, Lo/getCodedOutput$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 802
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 796
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 781
    :pswitch_2
    sget-object p1, Lo/getCodedOutput$onRelationshipValidationResult;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 783
    const-class p1, Lo/getCodedOutput$onRelationshipValidationResult;

    monitor-enter p1

    .line 784
    :try_start_0
    sget-object p2, Lo/getCodedOutput$onRelationshipValidationResult;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 786
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 789
    sput-object p2, Lo/getCodedOutput$onRelationshipValidationResult;->PARSER:Lo/areReportsAvailable;

    .line 791
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_1
    :goto_0
    return-object p1

    .line 778
    :pswitch_3
    sget-object p1, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "fetchedConfigHolder_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "activeConfigHolder_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "defaultsConfigHolder_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "metadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "appliedResource_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 762
    const-class p3, Lo/getCodedOutput$asBinder;

    aput-object p3, p1, p2

    .line 774
    sget-object p2, Lo/getCodedOutput$onRelationshipValidationResult;->DEFAULT_INSTANCE:Lo/getCodedOutput$onRelationshipValidationResult;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b"

    invoke-static {p2, p3, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 759
    :pswitch_5
    new-instance p1, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;-><init>(Lo/getCodedOutput$4;)V

    return-object p1

    .line 756
    :pswitch_6
    new-instance p1, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-direct {p1}, Lo/getCodedOutput$onRelationshipValidationResult;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getActiveConfigHolder()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->activeConfigHolder_:Lo/getCodedOutput$onPostMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCodedOutput$onPostMessage;->getDefaultInstance()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getAppliedResource(I)Lo/getCodedOutput$asBinder;
    .locals 1

    .line 297
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$asBinder;

    return-object p1
.end method

.method public final getAppliedResourceCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final getAppliedResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$asBinder;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getAppliedResourceOrBuilder(I)Lo/getCodedOutput$onTransact;
    .locals 1

    .line 304
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onTransact;

    return-object p1
.end method

.method public final getAppliedResourceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/getCodedOutput$onTransact;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->appliedResource_:Lo/getEventLogSize$asBinder;

    return-object v0
.end method

.method public final getDefaultsConfigHolder()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 191
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->defaultsConfigHolder_:Lo/getCodedOutput$onPostMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCodedOutput$onPostMessage;->getDefaultInstance()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getFetchedConfigHolder()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->fetchedConfigHolder_:Lo/getCodedOutput$onPostMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCodedOutput$onPostMessage;->getDefaultInstance()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getMetadata()Lo/getCodedOutput$onMessageChannelReady;
    .locals 1

    .line 237
    iget-object v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->metadata_:Lo/getCodedOutput$onMessageChannelReady;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCodedOutput$onMessageChannelReady;->getDefaultInstance()Lo/getCodedOutput$onMessageChannelReady;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final hasActiveConfigHolder()Z
    .locals 1

    .line 138
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultsConfigHolder()Z
    .locals 1

    .line 184
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFetchedConfigHolder()Z
    .locals 2

    .line 92
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMetadata()Z
    .locals 1

    .line 230
    iget v0, p0, Lo/getCodedOutput$onRelationshipValidationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
