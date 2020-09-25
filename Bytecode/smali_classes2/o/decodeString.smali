.class public final Lo/decodeString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ensureIndexed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "TT;",
        "Lo/isCompleteForPath;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/isFiltered;

.field private static final onNavigationEvent:Ljava/nio/charset/Charset;


# instance fields
.field private final extraCallback:Lo/writeStringNoTag;

.field private final onPostMessage:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 31
    invoke-static {v0}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    sput-object v0, Lo/decodeString;->ICustomTabsCallback:Lo/isFiltered;

    const-string v0, "UTF-8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/decodeString;->onNavigationEvent:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lo/writeStringNoTag;Lo/computeDoubleSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeStringNoTag;",
            "Lo/computeDoubleSize<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/decodeString;->extraCallback:Lo/writeStringNoTag;

    .line 39
    iput-object p2, p0, Lo/decodeString;->onPostMessage:Lo/computeDoubleSize;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 1044
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 1079
    new-instance v2, Lo/updatePriority$3;

    invoke-direct {v2, v0}, Lo/updatePriority$3;-><init>(Lo/updatePriority;)V

    .line 1044
    sget-object v3, Lo/decodeString;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1045
    iget-object v2, p0, Lo/decodeString;->extraCallback:Lo/writeStringNoTag;

    invoke-virtual {v2, v1}, Lo/writeStringNoTag;->onPostMessage(Ljava/io/Writer;)Lo/computeTagSize;

    move-result-object v1

    .line 1046
    iget-object v2, p0, Lo/decodeString;->onPostMessage:Lo/computeDoubleSize;

    invoke-virtual {v2, v1, p1}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    .line 1047
    invoke-virtual {v1}, Lo/computeTagSize;->close()V

    .line 1048
    sget-object p1, Lo/decodeString;->ICustomTabsCallback:Lo/isFiltered;

    .line 1548
    new-instance v1, Lo/matches;

    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lo/matches;-><init>([B)V

    .line 1048
    invoke-static {p1, v1}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;Lo/matches;)Lo/isCompleteForPath;

    move-result-object p1

    return-object p1
.end method
