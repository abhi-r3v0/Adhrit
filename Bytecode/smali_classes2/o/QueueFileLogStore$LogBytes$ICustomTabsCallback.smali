.class final Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$ElementInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/QueueFileLogStore$LogBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/QueueFile$ElementInputStream<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final rfc339:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    sput-object v0, Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;->rfc339:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/QueueFileLogStore$LogBytes$4;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/util/Date;

    check-cast p2, Lo/getLogBytes;

    invoke-virtual {p0, p1, p2}, Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;->encode(Ljava/util/Date;Lo/getLogBytes;)V

    return-void
.end method

.method public final encode(Ljava/util/Date;Lo/getLogBytes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    sget-object v0, Lo/QueueFileLogStore$LogBytes$ICustomTabsCallback;->rfc339:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/getLogBytes;->add(Ljava/lang/String;)Lo/getLogBytes;

    return-void
.end method
