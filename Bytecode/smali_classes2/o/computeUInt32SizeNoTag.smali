.class public final Lo/computeUInt32SizeNoTag;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeDoubleSize<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/computeFloatSize;


# instance fields
.field private final ICustomTabsCallback:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lo/computeUInt32SizeNoTag$1;

    invoke-direct {v0}, Lo/computeUInt32SizeNoTag$1;-><init>()V

    sput-object v0, Lo/computeUInt32SizeNoTag;->onMessageChannelReady:Lo/computeFloatSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/computeUInt32SizeNoTag;->ICustomTabsCallback:Ljava/text/DateFormat;

    return-void
.end method

.method private declared-synchronized extraCallback(Lo/computeTagSize;Ljava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/computeUInt32SizeNoTag;->ICustomTabsCallback:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lo/computeTagSize;->extraCallback(Ljava/lang/String;)Lo/computeTagSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPostMessage(Lo/checkNoSpaceLeft;)Ljava/sql/Time;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    sget-object v1, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 53
    monitor-exit p0

    return-object p1

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/computeUInt32SizeNoTag;->ICustomTabsCallback:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onTransact()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception p1

    .line 59
    :try_start_2
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final synthetic read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lo/computeUInt32SizeNoTag;->onPostMessage(Lo/checkNoSpaceLeft;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    check-cast p2, Ljava/sql/Time;

    invoke-direct {p0, p1, p2}, Lo/computeUInt32SizeNoTag;->extraCallback(Lo/computeTagSize;Ljava/sql/Time;)V

    return-void
.end method
