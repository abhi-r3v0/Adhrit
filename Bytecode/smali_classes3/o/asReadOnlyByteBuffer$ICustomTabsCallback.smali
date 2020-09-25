.class Lo/asReadOnlyByteBuffer$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/asReadOnlyByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private activatedConfigs:Lo/ByteString;

.field private defaultsConfigs:Lo/ByteString;

.field private fetchedConfigs:Lo/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/asReadOnlyByteBuffer$5;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;
    .locals 0

    .line 368
    invoke-direct {p0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->getFetchedConfigs()Lo/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;
    .locals 0

    .line 368
    invoke-direct {p0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->getActivatedConfigs()Lo/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;
    .locals 0

    .line 368
    invoke-direct {p0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->getDefaultsConfigs()Lo/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;Lo/ByteString;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->setActivatedConfigs(Lo/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;Lo/ByteString;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->setFetchedConfigs(Lo/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;Lo/ByteString;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->setDefaultsConfigs(Lo/ByteString;)V

    return-void
.end method

.method private getActivatedConfigs()Lo/ByteString;
    .locals 1

    .line 392
    iget-object v0, p0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->activatedConfigs:Lo/ByteString;

    return-object v0
.end method

.method private getDefaultsConfigs()Lo/ByteString;
    .locals 1

    .line 396
    iget-object v0, p0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->defaultsConfigs:Lo/ByteString;

    return-object v0
.end method

.method private getFetchedConfigs()Lo/ByteString;
    .locals 1

    .line 388
    iget-object v0, p0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->fetchedConfigs:Lo/ByteString;

    return-object v0
.end method

.method private setActivatedConfigs(Lo/ByteString;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->activatedConfigs:Lo/ByteString;

    return-void
.end method

.method private setDefaultsConfigs(Lo/ByteString;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->defaultsConfigs:Lo/ByteString;

    return-void
.end method

.method private setFetchedConfigs(Lo/ByteString;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->fetchedConfigs:Lo/ByteString;

    return-void
.end method
