.class public final Lo/QueueFileLogStore$LogBytes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/openLogFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/openLogFile<",
        "Lo/QueueFileLogStore$LogBytes;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_ENCODER:Lo/QueueFile$ElementInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/QueueFile$ElementInputStream<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FALLBACK_ENCODER:Lo/QueueFile$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/QueueFile$1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_ENCODER:Lo/QueueFile$ElementInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/QueueFile$ElementInputStream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_ENCODER:Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;


# instance fields
.field private fallbackEncoder:Lo/QueueFile$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/QueueFile$1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreNullValues:Z

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/QueueFile$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/QueueFile$ElementInputStream<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lo/QueueFileLogStore$1;->lambdaFactory$()Lo/QueueFile$1;

    move-result-object v0

    sput-object v0, Lo/QueueFileLogStore$LogBytes;->DEFAULT_FALLBACK_ENCODER:Lo/QueueFile$1;

    .line 63
    invoke-static {}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;->lambdaFactory$()Lo/QueueFile$ElementInputStream;

    move-result-object v0

    sput-object v0, Lo/QueueFileLogStore$LogBytes;->STRING_ENCODER:Lo/QueueFile$ElementInputStream;

    .line 64
    invoke-static {}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder;->lambdaFactory$()Lo/QueueFile$ElementInputStream;

    move-result-object v0

    sput-object v0, Lo/QueueFileLogStore$LogBytes;->BOOLEAN_ENCODER:Lo/QueueFile$ElementInputStream;

    .line 65
    new-instance v0, Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;-><init>(Lo/QueueFileLogStore$LogBytes$4;)V

    sput-object v0, Lo/QueueFileLogStore$LogBytes;->TIMESTAMP_ENCODER:Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/QueueFileLogStore$LogBytes;->objectEncoders:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/QueueFileLogStore$LogBytes;->valueEncoders:Ljava/util/Map;

    .line 46
    sget-object v0, Lo/QueueFileLogStore$LogBytes;->DEFAULT_FALLBACK_ENCODER:Lo/QueueFile$1;

    iput-object v0, p0, Lo/QueueFileLogStore$LogBytes;->fallbackEncoder:Lo/QueueFile$1;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lo/QueueFileLogStore$LogBytes;->ignoreNullValues:Z

    .line 68
    const-class v0, Ljava/lang/String;

    sget-object v1, Lo/QueueFileLogStore$LogBytes;->STRING_ENCODER:Lo/QueueFile$ElementInputStream;

    invoke-virtual {p0, v0, v1}, Lo/QueueFileLogStore$LogBytes;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$ElementInputStream;)Lo/QueueFileLogStore$LogBytes;

    .line 69
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lo/QueueFileLogStore$LogBytes;->BOOLEAN_ENCODER:Lo/QueueFile$ElementInputStream;

    invoke-virtual {p0, v0, v1}, Lo/QueueFileLogStore$LogBytes;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$ElementInputStream;)Lo/QueueFileLogStore$LogBytes;

    .line 70
    const-class v0, Ljava/util/Date;

    sget-object v1, Lo/QueueFileLogStore$LogBytes;->TIMESTAMP_ENCODER:Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;

    invoke-virtual {p0, v0, v1}, Lo/QueueFileLogStore$LogBytes;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$ElementInputStream;)Lo/QueueFileLogStore$LogBytes;

    return-void
.end method

.method static synthetic access$100(Lo/QueueFileLogStore$LogBytes;)Ljava/util/Map;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/QueueFileLogStore$LogBytes;->objectEncoders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lo/QueueFileLogStore$LogBytes;)Ljava/util/Map;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/QueueFileLogStore$LogBytes;->valueEncoders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lo/QueueFileLogStore$LogBytes;)Lo/QueueFile$1;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/QueueFileLogStore$LogBytes;->fallbackEncoder:Lo/QueueFile$1;

    return-object p0
.end method

.method static synthetic access$400(Lo/QueueFileLogStore$LogBytes;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lo/QueueFileLogStore$LogBytes;->ignoreNullValues:Z

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;Lo/QueueFile$Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t find encoder for type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$static$1(Ljava/lang/String;Lo/getLogBytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1, p0}, Lo/getLogBytes;->add(Ljava/lang/String;)Lo/getLogBytes;

    return-void
.end method

.method static synthetic lambda$static$2(Ljava/lang/Boolean;Lo/getLogBytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lo/getLogBytes;->add(Z)Lo/getLogBytes;

    return-void
.end method


# virtual methods
.method public final build()Lo/QueueFileLogStore;
    .locals 1

    .line 115
    new-instance v0, Lo/QueueFileLogStore$LogBytes$4;

    invoke-direct {v0, p0}, Lo/QueueFileLogStore$LogBytes$4;-><init>(Lo/QueueFileLogStore$LogBytes;)V

    return-object v0
.end method

.method public final configureWith(Lo/doWriteToLog;)Lo/QueueFileLogStore$LogBytes;
    .locals 0

    .line 103
    invoke-interface {p1, p0}, Lo/doWriteToLog;->configure(Lo/openLogFile;)V

    return-object p0
.end method

.method public final ignoreNullValues(Z)Lo/QueueFileLogStore$LogBytes;
    .locals 0

    .line 109
    iput-boolean p1, p0, Lo/QueueFileLogStore$LogBytes;->ignoreNullValues:Z

    return-object p0
.end method

.method public final registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/QueueFileLogStore$LogBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/QueueFile$1<",
            "-TT;>;)",
            "Lo/QueueFileLogStore$LogBytes;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lo/QueueFileLogStore$LogBytes;->objectEncoders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lo/QueueFileLogStore$LogBytes;->valueEncoders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final registerEncoder(Ljava/lang/Class;Lo/QueueFile$ElementInputStream;)Lo/QueueFileLogStore$LogBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/QueueFile$ElementInputStream<",
            "-TT;>;)",
            "Lo/QueueFileLogStore$LogBytes;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lo/QueueFileLogStore$LogBytes;->valueEncoders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p2, p0, Lo/QueueFileLogStore$LogBytes;->objectEncoders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lo/QueueFileLogStore$LogBytes;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/QueueFileLogStore$LogBytes;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic registerEncoder(Ljava/lang/Class;Lo/QueueFile$ElementInputStream;)Lo/openLogFile;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lo/QueueFileLogStore$LogBytes;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$ElementInputStream;)Lo/QueueFileLogStore$LogBytes;

    move-result-object p1

    return-object p1
.end method

.method public final registerFallbackEncoder(Lo/QueueFile$1;)Lo/QueueFileLogStore$LogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/QueueFile$1<",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/QueueFileLogStore$LogBytes;"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lo/QueueFileLogStore$LogBytes;->fallbackEncoder:Lo/QueueFile$1;

    return-object p0
.end method
